// Affine-MISR scan: gold_j = M*(x^{k n_j} s0 + sum_i x^{k(n_j-1-i)} f(w_i, tag_i)) + T  over GF(2)[x]/p,
// p, M, s0, T unknown and common to all streams. Eliminate T, s0, M, then gcd the cross equations.
// Tag bits (the file mode, folded in at state bits a and b) are optional.
// usage: raster_crc_tagscan STREAMS NUSE K[,K..] ENC_LO ENC_HI SUBSET|-1 THRESHOLD
// STREAMS: first line N; per stream "name gold_hex count" then count lines "mode word_hex" (see raster_crc_scan.py).
// ENC 0 none, 1 mode bits (m&1, m>>1), 2 bus code (m==2, m!=1), 3 (m==2, m==3). SUBSET 0 all words, 1 modes 2-3, 2 mode 1, 3 mode 3, 4 mode 2.
// Prints variants whose gcd degree beats a random-gold baseline by THRESHOLD; a real model adds about 64.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t u64;
#define MAXS 8
static int NS, NMAX; static int NL;
static char names[MAXS][32]; static u64 gold[MAXS]; static int cnt[MAXS]; static int kc[MAXS];
static int *mode[MAXS]; static u64 *word[MAXS];
static u64 rev64(u64 w){u64 r=0;for(int i=0;i<64;i++) if(w>>i&1) r|=1ULL<<(63-i);return r;}
static u64 bswap(u64 w){return __builtin_bswap64(w);}
static u64 swaph(u64 w){return (w<<32)|(w>>32);}
static u64 mapw(int m,u64 w){switch(m){case 0:return w;case 1:return rev64(w);case 2:return bswap(w);case 3:return swaph(w);case 4:return rev64(swaph(w));case 5:return bswap(swaph(w));case 6:return rev64(bswap(w));default:return rev64(bswap(swaph(w)));}}
static const char *mapname[]={"id","rev","bswap","swaph","rev+swaph","bswap+swaph","revbytebits","revbytebits+swaph"};
static inline void xshl(u64*d,const u64*s,int sl,int sh){int w=sh>>6,b=sh&63;for(int i=0;i<sl;i++){if(!s[i])continue;if(i+w<NL)d[i+w]^=s[i]<<b;if(b&&i+w+1<NL)d[i+w+1]^=s[i]>>(64-b);}}
static inline int degp(const u64*p,int top){for(int i=top;i>=0;i--) if(p[i]) return i*64+63-__builtin_clzll(p[i]);return -1;}
static int gcd_all(u64 **E,int ne){ // E destroyed
    u64 *a=E[0];
    for(int t=1;t<ne;t++){
        u64 *b=E[t]; int da=degp(a,NL-1),db=degp(b,NL-1);
        if(da<0){a=b;continue;} if(db<0) continue;
        while(db>=0){
            while(da>=db){xshl(a,b,db/64+1,da-db);da=degp(a,da/64);}
            u64*tt=a;a=b;b=tt;int td=da;da=db;db=td;
        }
    }
    int i=0; while(i<NL&&!a[i])i++; if(i==NL) return -1;
    int tz=i*64+__builtin_ctzll(a[i]); return degp(a,NL-1)-tz;
}
static void clmul_sparse(u64*dst,const u64*sp,int spl,const u64*dense,int dl){ // dst ^= sp * dense
    for(int i=0;i<spl;i++){u64 x=sp[i];while(x){int b=__builtin_ctzll(x);x&=x-1;xshl(dst,dense,dl,i*64+b);}}
}
static int tagbits(int enc,int m,int *b0,int *b1){
    switch(enc){case 0:*b0=*b1=0;return 0;
    case 1:*b0=m&1;*b1=(m>>1)&1;return 1;
    case 2:*b0=(m==2);*b1=(m!=1);return 1;
    default:*b0=(m==2);*b1=(m==3);return 1;}
}
static u64 *mk(){return calloc(NL,8);}
static u64 rngs=88172645463325252ULL; static u64 rnd(){rngs^=rngs<<13;rngs^=rngs>>7;rngs^=rngs<<17;return rngs;}
int main(int argc,char**argv){
    FILE*f=fopen(argv[1],"r"); int use=atoi(argv[2]); 
    char kl[256]; strcpy(kl,argv[3]); int enc_lo=atoi(argv[4]), enc_hi=atoi(argv[5]); int subsel=atoi(argv[6]); double thr=atof(argv[7]);
    int ns; fscanf(f,"%d",&ns); NS=use;
    for(int s=0;s<ns;s++){char nm[32];unsigned long long g;int n;fscanf(f,"%31s %llx %d",nm,&g,&n);
        if(s<use){strcpy(names[s],nm);gold[s]=g;cnt[s]=n;mode[s]=malloc(n*4);word[s]=malloc(n*8);}
        for(int i=0;i<n;i++){int m;unsigned long long w;fscanf(f,"%d %llx",&m,&w);if(s<use){mode[s][i]=m;word[s][i]=w;}}}
    NMAX=0;for(int s=0;s<NS;s++) if(cnt[s]>NMAX)NMAX=cnt[s];
    int ks[256],nk=0;for(char*t=strtok(kl,",");t;t=strtok(NULL,","))ks[nk++]=atoi(t);
    int kmax=0;for(int i=0;i<nk;i++)if(ks[i]>kmax)kmax=ks[i];
    NL=(6*kmax*NMAX+1024)/64+4;
    u64 *W[MAXS],*T0[MAXS],*T1[MAXS],*Y[MAXS],*L[MAXS],*R[MAXS],*E[MAXS];
    for(int s=0;s<MAXS;s++){W[s]=mk();T0[s]=mk();T1[s]=mk();Y[s]=mk();L[s]=mk();R[s]=mk();E[s]=mk();}
    u64 *Rb=mk(),*Lb=mk(),*u[MAXS];for(int s=0;s<MAXS;s++)u[s]=mk();
    long variants=0; double best=-1e9;
    for(int ki=0;ki<nk;ki++){int k=ks[ki];
    for(int mp=0;mp<8;mp++)
    for(int mo=0;mo<8;mo++)
    for(int sub=0;sub<5;sub++){ if(subsel>=0&&sub!=subsel)continue;
    for(int enc=enc_lo;enc<=enc_hi;enc++){
        // build W,T0,T1 via Horner
        for(int s=0;s<NS;s++){ memset(W[s],0,NL*8);memset(T0[s],0,NL*8);memset(T1[s],0,NL*8);
            int sl=(k*cnt[s])/64+2; kc[s]=0;
            for(int i=0;i<cnt[s];i++){int m=mode[s][i];
                int ok=(sub==0)||(sub==1&&(m==2||m==3))||(sub==2&&m==1)||(sub==3&&m==3)||(sub==4&&m==2); if(!ok)continue; kc[s]++;
                // shift all by k
                for(int pass=0;pass<3;pass++){u64*X=pass==0?W[s]:pass==1?T0[s]:T1[s]; // shift left by k
                    int w=k>>6,b=k&63;for(int j=sl;j>=0;j--){u64 v=0;int src=j-w;if(src>=0){v=X[src]<<b;if(b&&src-1>=0)v|=X[src-1]>>(64-b);}X[j]=v;}}
                u64 ww=mapw(mp,word[s][i]);W[s][0]^=ww;
                int b0,b1;tagbits(enc,m,&b0,&b1);T0[s][0]^=b0;T1[s][0]^=b1;
            }
        }
        int npos=enc==0?1:64;
        for(int a=0;a<npos;a++)for(int b=0;b<(enc==0?1:64);b++){
            variants++;
            for(int s=0;s<NS;s++){memcpy(Y[s],W[s],NL*8);if(enc){xshl(Y[s],T0[s],NL,a);xshl(Y[s],T1[s],NL,b);}}
            // evaluate with real golds and random golds
            int dg[2];
            for(int pass=0;pass<2;pass++){
                u64 g[MAXS];for(int s=0;s<NS;s++)g[s]=pass==0?mapw(mo,gold[s]):rnd();
                // u_a , Yd_a
                for(int s=1;s<NS;s++){memset(u[s],0,NL*8);u[s][(k*kc[0])>>6]^=1ULL<<((k*kc[0])&63);u[s][(k*kc[s])>>6]^=1ULL<<((k*kc[s])&63);}
                for(int s=1;s<NS;s++){memset(L[s],0,NL*8);memset(R[s],0,NL*8);} 
                static u64 *Ydd[MAXS];static int init=0;if(!init){for(int s=0;s<MAXS;s++)Ydd[s]=mk();init=1;}
                for(int s=1;s<NS;s++){for(int j=0;j<NL;j++)Ydd[s][j]=Y[0][j]^Y[s][j];}
                // equations t=1..NS-2 between a=t, b=t+1 : (a,b)=(1,2),(2,3),...
                int ne=NS-2; 
                for(int t=0;t<ne;t++){int A=t+1,B=t+2;
                    memset(Lb,0,NL*8);memset(Rb,0,NL*8);
                    u64 va=g[0]^g[A],vb=g[0]^g[B];
                    // L = va*u_B + vb*u_A
                    clmul_sparse(Lb,&va,1,u[B],NL); clmul_sparse(Lb,&vb,1,u[A],NL);
                    // R = Yd_A*u_B + Yd_B*u_A  (u binomial: two shifts each)
                    // extract set bits of u as shifts
                    {int sh1=k*kc[0],shA=k*kc[A],shB=k*kc[B];
                     xshl(Rb,Ydd[A],NL,sh1);xshl(Rb,Ydd[A],NL,shB);xshl(Rb,Ydd[B],NL,sh1);xshl(Rb,Ydd[B],NL,shA);}
                    memcpy(L[t],Lb,NL*8);memcpy(R[t],Rb,NL*8);
                }
                // cross: E_t = L_t R_0 ^ L_0 R_t, t=1..ne-1
                int nE=0;
                for(int t=1;t<ne;t++){memset(E[nE],0,NL*8);
                    clmul_sparse(E[nE],L[t],NL,R[0],NL);clmul_sparse(E[nE],L[0],NL,R[t],NL);nE++;}
                if(nE==0){dg[pass]=-2;continue;}
                dg[pass]=gcd_all(E,nE);
            }
            double ex=dg[0]-dg[1];
            if(ex>best)best=ex;
            if(ex>=thr)printf("HIT excess=%g dg=%d bg=%d k=%d map=%s mapout=%s sub=%d enc=%d a=%d b=%d\n",ex,dg[0],dg[1],k,mapname[mp],mapname[mo],sub,enc,a,b),fflush(stdout);
        }
    }}}
    printf("variants=%ld best_excess=%g\n",variants,best);
}
