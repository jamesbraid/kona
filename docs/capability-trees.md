### __glim_Enable (IP27KONA32)

Binary `root/usr/gfx/arch/IP27KONA32/libGLcore.so`, routine at 0xd9c1520, 3244 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010]); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0xd9c1c04 | [ctx+1792] |= 0x400; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0xd9c1978 | [ctx+1792] |= 0x200; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0xd9c1ea4 | [ctx+1792] |= 0x100; [0x1018] w= 2; [ctx+11812] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0xd9c1838 | [ctx+1792] |= 0x800; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0xd9c1c10 | [ctx+1792] |= 0x2000; [0x1018] w= 2; [ctx+11812] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0xd9c1c7c | [ctx+1792] |= 0x1000; [0x1018] w= 2; [ctx+11812] |= 4; return (when ([ctx+1792] & 0x1000) == 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+1792] & 0x1000) != 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0xd9c1a20 | [ctx+1792] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; call <[ctx+11848]>(); call <[ctx+12056]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0xd9c2170 | [ctx+1792] |= 0x80; call <[ctx+11848]>(); call <[ctx+12056]>(); return |
| 0xb60 | GL_FOG | 2912 | 0xd9c1718 | [ctx+1792] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0xd9c162c | [ctx+1792] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0xd9c1e60 | [ctx+1792] |= 0x8000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0xd9c1be8 | [ctx+1792] |= 0x400000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0xd9c1950 | [ctx+1792] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0xd9c1dfc | [ctx+1792] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0xd9c178c | [ctx+1792] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0xd9c2060 | [ctx+1792] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0xd9c1dd0 | [ctx+1796] |= 0x800; call __glim_BlendEquationEXT(a0=0xbf1, a2=[0x1010]); [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c1b0c | [ctx+1792] |= 0x4000; [ctx+31368] w= [ctx+31364]; call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] != 0 and [ctx+3225] != 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c1b0c | [ctx+1792] |= 0x4000; call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] != 0 and [ctx+3225] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c1b0c | [ctx+1792] |= 0x4000; call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return (when ([ctx+1792] & 0x4000) != 0) |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0xd9c2044 | [ctx+1792] |= 0x40000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0xd9c15c0 | [ctx+1792] |= 0x80000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0xd9c1e44 | [ctx+1792] |= 0x100000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0xd9c1bbc | [ctx+1792] |= 0x200000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0xd9c1928 | [ctx+1792] |= 0x800000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0xd9c1860 | [ctx+1808] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0xd9c1860 | [ctx+1808] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0xd9c1860 | [ctx+1808] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0xd9c1860 | [ctx+1808] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0xd9c1860 | [ctx+1808] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0xd9c1860 | [ctx+1808] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0xd9c1860 | [ctx+1808] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0xd9c1860 | [ctx+1808] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0xd9c1860 | [ctx+1808] |= 0x100; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0xd9c15e4 | [ctx+1812] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0xd9c15e4 | [ctx+1812] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0xd9c15e4 | [ctx+1812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0xd9c15e4 | [ctx+1812] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0xd9c15e4 | [ctx+1812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0xd9c15e4 | [ctx+1812] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0xd9c15e4 | [ctx+1812] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0xd9c15e4 | [ctx+1812] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0xd9c15e4 | [ctx+1812] |= 0x100; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0xd9c1b90 | [ctx+1792] |= 0x10000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0xd9c18fc | [ctx+1792] |= 0x20000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0xd9c1d50 | [ctx+1796] |= 0x200; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0xd9c17ac | [ctx+1796] |= 0x400; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0xd9c19a4 | [ctx+1804] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0xd9c19a4 | [ctx+1804] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0xd9c19a4 | [ctx+1804] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0xd9c19a4 | [ctx+1804] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0xd9c19a4 | [ctx+1804] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0xd9c19a4 | [ctx+1804] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0xd9c19d8 | [ctx+1800] |= 1; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0xd9c19d8 | [ctx+1800] |= 2; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0xd9c19d8 | [ctx+1800] |= 4; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0xd9c19d8 | [ctx+1800] |= 8; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0xd9c19d8 | [ctx+1800] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0xd9c19d8 | [ctx+1800] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0xd9c19d8 | [ctx+1800] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0xd9c19d8 | [ctx+1800] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0xd9c1578 | [ctx+1792] |= 0x2000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0xd9c1fc8 | [ctx+1792] |= 0x4000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0xd9c1d0c | [ctx+1792] |= 0x8000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0xd9c1a9c | [ctx+1792] |= 0x10000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0xd9c1f7c | [ctx+1792] |= 0x20000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0xd9c18b4 | [ctx+1792] |= 0x1000000; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0xd9c213c | [ctx+1792] |= 0x40000000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0xd9c1f58 | [ctx+5416] |= 0x20; [ctx+5404] |= 0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0xd9c21a4 | [ctx+5416] |= 1; [ctx+5404] |= 0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0xd9c1cd8 | [ctx+5416] |= 2; [ctx+5404] |= 0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0xd9c1e18 | [ctx+5416] |= 8; [ctx+5404] |= 0xf0000000; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c20e4 | [ctx+5408] |= (1 <<mod32 ([ctx+28268] + -33735)); [ctx+5416] |= 4; [ctx+5404] |= 0x7f00000; return (when ([ctx+28268] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c20e4 | [ctx+5408] |= (1 <<mod32 ([ctx+28268] + -33735)); return (when ([ctx+28268] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0xd9c1efc | [ctx+5416] |= 0x10; [ctx+5404] |= 0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0xd9c1c60 | [ctx+1792] |= 0x80000000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0xd9c20a0 | [ctx+1796] |= 1; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0xd9c174c | [ctx+1796] |= 2; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0xd9c2074 | [ctx+1796] |= 4; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0xd9c21c8 | [ctx+5412] |= 1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0xd9c1e98 | [ctx+5412] |= 2; return |

78 capability values with a leaf of their own.

### __glim_Disable (IP27KONA32)

Binary `root/usr/gfx/arch/IP27KONA32/libGLcore.so`, routine at 0xd9c21d0, 3328 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010]); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0xd9c2880 | [ctx+1792] &= ~0x400; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0xd9c2640 | [ctx+1792] &= ~0x200; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0xd9c2b54 | [ctx+1792] &= ~0x100; [0x1018] w= 2; [ctx+11812] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0xd9c24ec | [ctx+1792] &= ~0x800; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0xd9c2890 | [ctx+1792] &= ~0x2000; [0x1018] w= 2; [ctx+11812] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0xd9c290c | [ctx+1792] &= ~0x1000; [0x1018] w= 2; [ctx+11812] |= 4; return (when ([ctx+1792] & 0x1000) != 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+1792] & 0x1000) == 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0xd9c26e8 | [ctx+1792] &= ~0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; call <[ctx+11848]>(); call <[ctx+12056]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0xd9c2e1c | [ctx+1792] &= ~0x80; call <[ctx+11848]>(); return |
| 0xb60 | GL_FOG | 2912 | 0xd9c23dc | [ctx+1792] &= ~0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0xd9c22f0 | [ctx+1792] &= ~0x10; [0x1018] w= 2; [ctx+11812] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0xd9c2b0c | [ctx+1792] &= ~0x8000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0xd9c2860 | [ctx+1792] &= ~0x400000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0xd9c2610 | [ctx+1792] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0xd9c2a94 | [ctx+1792] &= ~0x8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0xd9c2444 | [ctx+1792] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0xd9c2d08 | [ctx+1792] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0xd9c2a74 | [ctx+1796] &= ~0x800; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c2e4c | [ctx+1792] &= ~0x4000; call __glReadjustZCounts(a0=[0x1010], a2=[0x1010]); call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0xd9c27d8 | [ctx+1792] &= ~0x40000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0xd9c2280 | [ctx+1792] &= ~0x80000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0xd9c2ae8 | [ctx+1792] &= ~0x100000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0xd9c2834 | [ctx+1792] &= ~0x200000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0xd9c25e4 | [ctx+1792] &= ~0x800000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0xd9c2518 | [ctx+1808] &= 0xfffe; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0xd9c2518 | [ctx+1808] &= 0xfffd; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0xd9c2518 | [ctx+1808] &= 0xfffb; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0xd9c2518 | [ctx+1808] &= 0xfff7; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0xd9c2518 | [ctx+1808] &= 0xffef; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0xd9c2518 | [ctx+1808] &= 0xffdf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0xd9c2518 | [ctx+1808] &= 0xffbf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0xd9c2518 | [ctx+1808] &= 0xff7f; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0xd9c2518 | [ctx+1808] &= 0xfeff; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0xd9c22a4 | [ctx+1812] &= 0xfffe; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0xd9c22a4 | [ctx+1812] &= 0xfffd; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0xd9c22a4 | [ctx+1812] &= 0xfffb; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0xd9c22a4 | [ctx+1812] &= 0xfff7; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0xd9c22a4 | [ctx+1812] &= 0xffef; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0xd9c22a4 | [ctx+1812] &= 0xffdf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0xd9c22a4 | [ctx+1812] &= 0xffbf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0xd9c22a4 | [ctx+1812] &= 0xff7f; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0xd9c22a4 | [ctx+1812] &= 0xfeff; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0xd9c2808 | [ctx+1792] &= ~0x10000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0xd9c25bc | [ctx+1792] &= ~0x20000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0xd9c29f8 | [ctx+1796] &= ~0x200; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0xd9c2464 | [ctx+1796] &= ~0x400; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0xd9c266c | [ctx+1804] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0xd9c266c | [ctx+1804] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0xd9c266c | [ctx+1804] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0xd9c266c | [ctx+1804] &= ~0x8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0xd9c266c | [ctx+1804] &= ~0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0xd9c266c | [ctx+1804] &= ~0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0xd9c269c | [ctx+1800] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0xd9c269c | [ctx+1800] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0xd9c269c | [ctx+1800] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0xd9c269c | [ctx+1800] &= ~0x8; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0xd9c269c | [ctx+1800] &= ~0x10; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0xd9c269c | [ctx+1800] &= ~0x20; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0xd9c269c | [ctx+1800] &= ~0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0xd9c269c | [ctx+1800] &= ~0x80; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0xd9c2234 | [ctx+1792] &= ~0x2000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0xd9c2c8c | [ctx+1792] &= ~0x4000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0xd9c29a8 | [ctx+1792] &= ~0x8000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0xd9c2764 | [ctx+1792] &= ~0x10000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0xd9c2c38 | [ctx+1792] &= ~0x20000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0xd9c2578 | [ctx+1792] &= ~0x1000000; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0xd9c2de4 | [ctx+1792] &= ~0x40000000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0xd9c2c10 | [ctx+5416] &= ~0x20; [ctx+5404] &= ~0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0xd9c2ea4 | [ctx+5416] &= ~0x1; [ctx+5404] &= ~0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0xd9c2970 | [ctx+5416] &= ~0x2; [ctx+5404] &= ~0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0xd9c2ab8 | [ctx+5416] &= ~0x8; [ctx+5404] &= 0xfffffff; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c2d80 | [ctx+5408] &= ~(1 <<mod32 ([ctx+28268] + -33735)); [ctx+5416] &= ~0x4; [ctx+5404] &= ~0x7f00000; return (when ([ctx+28268] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c2d80 | [ctx+5408] &= ~(1 <<mod32 ([ctx+28268] + -33735)); return (when ([ctx+28268] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0xd9c2bb0 | [ctx+5416] &= ~0x10; [ctx+5404] &= ~0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0xd9c28e4 | [ctx+1792] &= 0x7fffffff; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0xd9c2d4c | [ctx+1796] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0xd9c241c | [ctx+1796] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0xd9c2d2c | [ctx+1796] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0xd9c2ecc | [ctx+5412] &= ~0x1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0xd9c2b44 | [ctx+5412] &= ~0x2; return |

78 capability values with a leaf of their own.

### __glim_IsEnabled (IP27KONA32)

Binary `root/usr/gfx/arch/IP27KONA32/libGLcore.so`, routine at 0xd9c2ed0, 2252 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010]); return 0.

Values with the same outcome as the default, with no leaf of their own: 65455 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x8093, 0x8095 to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8138, 0x813a to 0x8438, 0x843b to 0x8567, 0x8569 to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return 0.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | - | return 1 if ([ctx+1792] & 0x400) is nonzero, else 0 |
| 0xb20 | GL_LINE_SMOOTH | 2848 | - | return 1 if ([ctx+1792] & 0x200) is nonzero, else 0 |
| 0xb24 | GL_LINE_STIPPLE | 2852 | - | return 1 if ([ctx+1792] & 0x100) is nonzero, else 0 |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | - | return 1 if ([ctx+1792] & 0x800) is nonzero, else 0 |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | - | return 1 if ([ctx+1792] & 0x2000) is nonzero, else 0 |
| 0xb44 | GL_CULL_FACE | 2884 | - | return 1 if ([ctx+1792] & 0x1000) is nonzero, else 0 |
| 0xb50 | GL_LIGHTING | 2896 | - | return 1 if ([ctx+1792] & 0x40) is nonzero, else 0 |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | - | return 1 if ([ctx+1792] & 0x80) is nonzero, else 0 |
| 0xb60 | GL_FOG | 2912 | - | return 1 if ([ctx+1792] & 0x20) is nonzero, else 0 |
| 0xb71 | GL_DEPTH_TEST | 2929 | - | return 1 if ([ctx+1792] & 0x10) is nonzero, else 0 |
| 0xb90 | GL_STENCIL_TEST | 2960 | - | return 1 if ([ctx+1792] & 0x8000) is nonzero, else 0 |
| 0xba1 | GL_NORMALIZE | 2977 | - | return 1 if ([ctx+1792] & 0x400000) is nonzero, else 0 |
| 0xbc0 | GL_ALPHA_TEST | 3008 | - | return 1 if ([ctx+1792] & 1) is nonzero, else 0 |
| 0xbd0 | GL_DITHER | 3024 | - | return 1 if ([ctx+1792] & 8) is nonzero, else 0 |
| 0xbe2 | GL_BLEND | 3042 | - | return 1 if ([ctx+1792] & 2) is nonzero, else 0 |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | - | return 1 if ([ctx+1792] & 4) is nonzero, else 0 |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | - | return 1 if ([ctx+1796] & 0x800) is nonzero, else 0 |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return 1 if ([ctx+1792] & 0x4000) is nonzero, else 0 |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | - | return 1 if ([ctx+1792] & 0x40000) is nonzero, else 0 |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | - | return 1 if ([ctx+1792] & 0x80000) is nonzero, else 0 |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | - | return 1 if ([ctx+1792] & 0x100000) is nonzero, else 0 |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | - | return 1 if ([ctx+1792] & 0x200000) is nonzero, else 0 |
| 0xd80 | GL_AUTO_NORMAL | 3456 | - | return 1 if ([ctx+1792] & 0x800000) is nonzero, else 0 |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | - | return 1 if ([ctx+1808] & 1) is nonzero, else 0 |
| 0xd91 | GL_MAP1_INDEX | 3473 | - | return 1 if ([ctx+1808] & 2) is nonzero, else 0 |
| 0xd92 | GL_MAP1_NORMAL | 3474 | - | return 1 if ([ctx+1808] & 4) is nonzero, else 0 |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | - | return 1 if ([ctx+1808] & 8) is nonzero, else 0 |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | - | return 1 if ([ctx+1808] & 0x10) is nonzero, else 0 |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | - | return 1 if ([ctx+1808] & 0x20) is nonzero, else 0 |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | - | return 1 if ([ctx+1808] & 0x40) is nonzero, else 0 |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | - | return 1 if ([ctx+1808] & 0x80) is nonzero, else 0 |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | - | return 1 if ([ctx+1808] & 0x100) is nonzero, else 0 |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | - | return 1 if ([ctx+1812] & 1) is nonzero, else 0 |
| 0xdb1 | GL_MAP2_INDEX | 3505 | - | return 1 if ([ctx+1812] & 2) is nonzero, else 0 |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | - | return 1 if ([ctx+1812] & 4) is nonzero, else 0 |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | - | return 1 if ([ctx+1812] & 8) is nonzero, else 0 |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | - | return 1 if ([ctx+1812] & 0x10) is nonzero, else 0 |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | - | return 1 if ([ctx+1812] & 0x20) is nonzero, else 0 |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | - | return 1 if ([ctx+1812] & 0x40) is nonzero, else 0 |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | - | return 1 if ([ctx+1812] & 0x80) is nonzero, else 0 |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | - | return 1 if ([ctx+1812] & 0x100) is nonzero, else 0 |
| 0xde0 | GL_TEXTURE_1D | 3552 | - | return 1 if ([ctx+1792] & 0x10000) is nonzero, else 0 |
| 0xde1 | GL_TEXTURE_2D | 3553 | - | return 1 if ([ctx+1792] & 0x20000) is nonzero, else 0 |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | - | return 1 if ([ctx+1796] & 0x200) is nonzero, else 0 |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | - | return 1 if ([ctx+1796] & 0x400) is nonzero, else 0 |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | - | return 1 if ([ctx+1804] & 1) is nonzero, else 0 |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | - | return 1 if ([ctx+1804] & 2) is nonzero, else 0 |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | - | return 1 if ([ctx+1804] & 4) is nonzero, else 0 |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | - | return 1 if ([ctx+1804] & 8) is nonzero, else 0 |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | - | return 1 if ([ctx+1804] & 0x10) is nonzero, else 0 |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | - | return 1 if ([ctx+1804] & 0x20) is nonzero, else 0 |
| 0x4000 | GL_LIGHT0 | 16384 | - | return 1 if ([ctx+1800] & 1) is nonzero, else 0 |
| 0x4001 | GL_LIGHT1 | 16385 | - | return 1 if ([ctx+1800] & 2) is nonzero, else 0 |
| 0x4002 | GL_LIGHT2 | 16386 | - | return 1 if ([ctx+1800] & 4) is nonzero, else 0 |
| 0x4003 | GL_LIGHT3 | 16387 | - | return 1 if ([ctx+1800] & 8) is nonzero, else 0 |
| 0x4004 | GL_LIGHT4 | 16388 | - | return 1 if ([ctx+1800] & 0x10) is nonzero, else 0 |
| 0x4005 | GL_LIGHT5 | 16389 | - | return 1 if ([ctx+1800] & 0x20) is nonzero, else 0 |
| 0x4006 | GL_LIGHT6 | 16390 | - | return 1 if ([ctx+1800] & 0x40) is nonzero, else 0 |
| 0x4007 | GL_LIGHT7 | 16391 | - | return 1 if ([ctx+1800] & 0x80) is nonzero, else 0 |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | - | return 1 if ([ctx+1792] & 0x2000000) is nonzero, else 0 |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | - | return 1 if ([ctx+1792] & 0x4000000) is nonzero, else 0 |
| 0x8012 | GL_SEPARABLE_2D | 32786 | - | return 1 if ([ctx+1792] & 0x8000000) is nonzero, else 0 |
| 0x8024 | GL_HISTOGRAM | 32804 | - | return 1 if ([ctx+1792] & 0x10000000) is nonzero, else 0 |
| 0x802e | GL_MINMAX | 32814 | - | return 1 if ([ctx+1792] & 0x20000000) is nonzero, else 0 |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | - | return 1 if ([ctx+1792] & 0x1000000) is nonzero, else 0 |
| 0x806f | GL_TEXTURE_3D | 32879 | - | return 1 if ([ctx+1792] & 0x40000000) is nonzero, else 0 |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | - | return 1 if ([ctx+5404] & 0xff) is nonzero, else 0 |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | - | return 1 if ([ctx+5404] & 0xf00) is nonzero, else 0 |
| 0x8076 | GL_COLOR_ARRAY | 32886 | - | return 1 if ([ctx+5404] & 0xff000) is nonzero, else 0 |
| 0x8077 | GL_INDEX_ARRAY | 32887 | - | return 1 if ([ctx+5404] & 0xf0000000) is nonzero, else 0 |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | - | return 1 if ([ctx+5404] & 0x7f00000) is nonzero, else 0 |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | - | return 1 if ([ctx+5404] & 0x8000000) is nonzero, else 0 |
| 0x8094 | GL_INTERLACE_SGIX | 32916 | - | return 1 if ([ctx+1796] & 0x20) is nonzero, else 0 |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | - | return 1 if ([ctx+1792] & 0x80000000) is nonzero, else 0 |
| 0x80d0 | GL_COLOR_TABLE | 32976 | - | return 1 if ([ctx+1796] & 1) is nonzero, else 0 |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | - | return 1 if ([ctx+1796] & 2) is nonzero, else 0 |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | - | return 1 if ([ctx+1796] & 4) is nonzero, else 0 |
| 0x8139 | GL_PIXEL_TEX_GEN_SGIX | 33081 | - | return 1 if ([ctx+1796] & 0x4000) is nonzero, else 0 |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | - | return 1 if ([ctx+5412] & 1) is nonzero, else 0 |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | - | return 1 if ([ctx+5412] & 2) is nonzero, else 0 |
| 0x8568 | GL_INTERLACE_READ_INGR | 34152 | - | return 1 if ([ctx+1796] & 0x20000) is nonzero, else 0 |

81 capability values with a leaf of their own.

### __glim_Enable (IP27KONA64)

Binary `root/usr/gfx/arch/IP27KONA64/libGLcore.so`, routine at 0x2e25170, 3248 bytes.

Every value takes this path when [0x1030] == 1: call __glSetError(a0=0x502, a2=[0x1020]); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1020]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0x2e25854 | [ctx+2056] |= 0x400; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0x2e255d4 | [ctx+2056] |= 0x200; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0x2e25af4 | [ctx+2056] |= 0x100; [0x1030] w= 2; [ctx+18196] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0x2e25490 | [ctx+2056] |= 0x800; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0x2e25860 | [ctx+2056] |= 0x2000; [0x1030] w= 2; [ctx+18196] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0x2e258cc | [ctx+2056] |= 0x1000; [0x1030] w= 2; [ctx+18196] |= 4; return (when ([ctx+2056] & 0x1000) == 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+2056] & 0x1000) != 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0x2e25670 | [ctx+2056] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; call <[ctx+18264]>(); call <[ctx+18680]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0x2e25dc4 | [ctx+2056] |= 0x80; call <[ctx+18264]>(); call <[ctx+18680]>(); return |
| 0xb60 | GL_FOG | 2912 | 0x2e25374 | [ctx+2056] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0x2e25280 | [ctx+2056] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0x2e25ab4 | [ctx+2056] |= 0x8000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0x2e25838 | [ctx+2056] |= 0x400000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0x2e255ac | [ctx+2056] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0x2e25a50 | [ctx+2056] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0x2e253e8 | [ctx+2056] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0x2e25ca4 | [ctx+2056] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0x2e25a24 | [ctx+2060] |= 0x800; call __glim_BlendEquationEXT(a0=0xbf1, a2=[0x1020]); [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x2e2575c | [ctx+2056] |= 0x4000; [ctx+40316] w= [ctx+40312]; call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return (when ([ctx+2056] & 0x4000) == 0 and [ctx+1892] != 0 and [ctx+3561] != 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x2e2575c | [ctx+2056] |= 0x4000; call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return (when ([ctx+2056] & 0x4000) == 0 and [ctx+1892] != 0 and [ctx+3561] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x2e2575c | [ctx+2056] |= 0x4000; call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return (when ([ctx+2056] & 0x4000) == 0 and [ctx+1892] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return (when ([ctx+2056] & 0x4000) != 0) |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0x2e25c88 | [ctx+2056] |= 0x40000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0x2e25210 | [ctx+2056] |= 0x80000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0x2e25a98 | [ctx+2056] |= 0x100000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0x2e2580c | [ctx+2056] |= 0x200000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0x2e25584 | [ctx+2056] |= 0x800000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0x2e254b8 | [ctx+2072] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0x2e254b8 | [ctx+2072] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0x2e254b8 | [ctx+2072] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0x2e254b8 | [ctx+2072] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0x2e254b8 | [ctx+2072] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0x2e254b8 | [ctx+2072] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0x2e254b8 | [ctx+2072] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0x2e254b8 | [ctx+2072] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0x2e254b8 | [ctx+2072] |= 0x100; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0x2e25234 | [ctx+2076] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0x2e25234 | [ctx+2076] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0x2e25234 | [ctx+2076] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0x2e25234 | [ctx+2076] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0x2e25234 | [ctx+2076] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0x2e25234 | [ctx+2076] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0x2e25234 | [ctx+2076] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0x2e25234 | [ctx+2076] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0x2e25234 | [ctx+2076] |= 0x100; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0x2e257e0 | [ctx+2056] |= 0x10000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0x2e25558 | [ctx+2056] |= 0x20000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0x2e259a4 | [ctx+2060] |= 0x200; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0x2e25408 | [ctx+2060] |= 0x400; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0x2e25600 | [ctx+2068] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0x2e25600 | [ctx+2068] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0x2e25600 | [ctx+2068] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0x2e25600 | [ctx+2068] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0x2e25600 | [ctx+2068] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0x2e25600 | [ctx+2068] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0x2e2562c | [ctx+2064] |= 1; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0x2e2562c | [ctx+2064] |= 2; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0x2e2562c | [ctx+2064] |= 4; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0x2e2562c | [ctx+2064] |= 8; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0x2e2562c | [ctx+2064] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0x2e2562c | [ctx+2064] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0x2e2562c | [ctx+2064] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0x2e2562c | [ctx+2064] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0x2e251cc | [ctx+2056] |= 0x2000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0x2e25c10 | [ctx+2056] |= 0x4000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0x2e2595c | [ctx+2056] |= 0x8000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0x2e256ec | [ctx+2056] |= 0x10000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0x2e25bc0 | [ctx+2056] |= 0x20000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0x2e25514 | [ctx+2056] |= 0x1000000; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0x2e25d94 | [ctx+2056] |= 0x40000000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0x2e25b9c | [ctx+6080] |= 0x20; [ctx+6068] |= 0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0x2e25df8 | [ctx+6080] |= 1; [ctx+6068] |= 0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0x2e25928 | [ctx+6080] |= 2; [ctx+6068] |= 0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0x2e25a6c | [ctx+6080] |= 8; [ctx+6068] |= 0xf0000000; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x2e25d38 | [ctx+6072] |= (1 <<mod32 ([ctx+36288] + -33735)); [ctx+6080] |= 4; [ctx+6068] |= 0x7f00000; return (when ([ctx+36288] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x2e25d38 | [ctx+6072] |= (1 <<mod32 ([ctx+36288] + -33735)); return (when ([ctx+36288] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0x2e25b48 | [ctx+6080] |= 0x10; [ctx+6068] |= 0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0x2e258b0 | [ctx+2056] |= 0x80000000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0x2e25ce8 | [ctx+2060] |= 1; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0x2e253a8 | [ctx+2060] |= 2; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0x2e25cbc | [ctx+2060] |= 4; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0x2e25e1c | [ctx+6076] |= 1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0x2e25ae8 | [ctx+6076] |= 2; return |

78 capability values with a leaf of their own.

### __glim_Disable (IP27KONA64)

Binary `root/usr/gfx/arch/IP27KONA64/libGLcore.so`, routine at 0x2e25e20, 3320 bytes.

Every value takes this path when [0x1030] == 1: call __glSetError(a0=0x502, a2=[0x1020]); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1020]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0x2e264d4 | [ctx+2056] &= ~0x400; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0x2e26290 | [ctx+2056] &= ~0x200; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0x2e267a0 | [ctx+2056] &= ~0x100; [0x1030] w= 2; [ctx+18196] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0x2e2613c | [ctx+2056] &= ~0x800; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0x2e264e4 | [ctx+2056] &= ~0x2000; [0x1030] w= 2; [ctx+18196] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0x2e26558 | [ctx+2056] &= ~0x1000; [0x1030] w= 2; [ctx+18196] |= 4; return (when ([ctx+2056] & 0x1000) != 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+2056] & 0x1000) == 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0x2e2633c | [ctx+2056] &= ~0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; call <[ctx+18264]>(); call <[ctx+18680]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0x2e26a68 | [ctx+2056] &= ~0x80; call <[ctx+18264]>(); return |
| 0xb60 | GL_FOG | 2912 | 0x2e26028 | [ctx+2056] &= ~0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0x2e25f34 | [ctx+2056] &= ~0x10; [0x1030] w= 2; [ctx+18196] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0x2e26758 | [ctx+2056] &= ~0x8000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0x2e264b0 | [ctx+2056] &= ~0x400000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0x2e26264 | [ctx+2056] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0x2e266e0 | [ctx+2056] &= ~0x8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0x2e26090 | [ctx+2056] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0x2e26958 | [ctx+2056] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0x2e266c0 | [ctx+2060] &= ~0x800; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x2e26a94 | [ctx+2056] &= ~0x4000; call __glReadjustZCounts(a0=[0x1020], a2=[0x1020]); call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0x2e2642c | [ctx+2056] &= ~0x40000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0x2e25ec4 | [ctx+2056] &= ~0x80000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0x2e26734 | [ctx+2056] &= ~0x100000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0x2e26488 | [ctx+2056] &= ~0x200000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0x2e26234 | [ctx+2056] &= ~0x800000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0x2e26168 | [ctx+2072] &= 0xfffe; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0x2e26168 | [ctx+2072] &= 0xfffd; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0x2e26168 | [ctx+2072] &= 0xfffb; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0x2e26168 | [ctx+2072] &= 0xfff7; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0x2e26168 | [ctx+2072] &= 0xffef; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0x2e26168 | [ctx+2072] &= 0xffdf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0x2e26168 | [ctx+2072] &= 0xffbf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0x2e26168 | [ctx+2072] &= 0xff7f; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0x2e26168 | [ctx+2072] &= 0xfeff; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0x2e25ee8 | [ctx+2076] &= 0xfffe; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0x2e25ee8 | [ctx+2076] &= 0xfffd; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0x2e25ee8 | [ctx+2076] &= 0xfffb; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0x2e25ee8 | [ctx+2076] &= 0xfff7; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0x2e25ee8 | [ctx+2076] &= 0xffef; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0x2e25ee8 | [ctx+2076] &= 0xffdf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0x2e25ee8 | [ctx+2076] &= 0xffbf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0x2e25ee8 | [ctx+2076] &= 0xff7f; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0x2e25ee8 | [ctx+2076] &= 0xfeff; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0x2e2645c | [ctx+2056] &= ~0x10000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0x2e2620c | [ctx+2056] &= ~0x20000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0x2e26644 | [ctx+2060] &= ~0x200; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0x2e260b4 | [ctx+2060] &= ~0x400; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0x2e262bc | [ctx+2068] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0x2e262bc | [ctx+2068] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0x2e262bc | [ctx+2068] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0x2e262bc | [ctx+2068] &= ~0x8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0x2e262bc | [ctx+2068] &= ~0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0x2e262bc | [ctx+2068] &= ~0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0x2e262ec | [ctx+2064] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0x2e262ec | [ctx+2064] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0x2e262ec | [ctx+2064] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0x2e262ec | [ctx+2064] &= ~0x8; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0x2e262ec | [ctx+2064] &= ~0x10; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0x2e262ec | [ctx+2064] &= ~0x20; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0x2e262ec | [ctx+2064] &= ~0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0x2e262ec | [ctx+2064] &= ~0x80; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0x2e25e80 | [ctx+2056] &= ~0x2000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0x2e268dc | [ctx+2056] &= ~0x4000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0x2e265f4 | [ctx+2056] &= ~0x8000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0x2e263b8 | [ctx+2056] &= ~0x10000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0x2e26888 | [ctx+2056] &= ~0x20000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0x2e261c8 | [ctx+2056] &= ~0x1000000; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0x2e26a34 | [ctx+2056] &= ~0x40000000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0x2e26860 | [ctx+6080] &= ~0x20; [ctx+6068] &= ~0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0x2e26aec | [ctx+6080] &= ~0x1; [ctx+6068] &= ~0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0x2e265bc | [ctx+6080] &= ~0x2; [ctx+6068] &= ~0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0x2e26704 | [ctx+6080] &= ~0x8; [ctx+6068] &= 0xfffffff; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x2e269d4 | [ctx+6072] &= ~(1 <<mod32 ([ctx+36288] + -33735)); [ctx+6080] &= ~0x4; [ctx+6068] &= ~0x7f00000; return (when ([ctx+36288] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x2e269d4 | [ctx+6072] &= ~(1 <<mod32 ([ctx+36288] + -33735)); return (when ([ctx+36288] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0x2e267fc | [ctx+6080] &= ~0x10; [ctx+6068] &= ~0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0x2e26538 | [ctx+2056] &= 0x7fffffff; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0x2e2699c | [ctx+2060] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0x2e26068 | [ctx+2060] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0x2e2697c | [ctx+2060] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0x2e26b14 | [ctx+6076] &= ~0x1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0x2e26790 | [ctx+6076] &= ~0x2; return |

78 capability values with a leaf of their own.

### __glim_IsEnabled (IP27KONA64)

Binary `root/usr/gfx/arch/IP27KONA64/libGLcore.so`, routine at 0x2e26b20, 2252 bytes.

Every value takes this path when [0x1030] == 1: call __glSetError(a0=0x502, a2=[0x1020]); return 0.

Values with the same outcome as the default, with no leaf of their own: 65455 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x8093, 0x8095 to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8138, 0x813a to 0x8438, 0x843b to 0x8567, 0x8569 to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1020]); return 0.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | - | return 1 if ([ctx+2056] & 0x400) is nonzero, else 0 |
| 0xb20 | GL_LINE_SMOOTH | 2848 | - | return 1 if ([ctx+2056] & 0x200) is nonzero, else 0 |
| 0xb24 | GL_LINE_STIPPLE | 2852 | - | return 1 if ([ctx+2056] & 0x100) is nonzero, else 0 |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | - | return 1 if ([ctx+2056] & 0x800) is nonzero, else 0 |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | - | return 1 if ([ctx+2056] & 0x2000) is nonzero, else 0 |
| 0xb44 | GL_CULL_FACE | 2884 | - | return 1 if ([ctx+2056] & 0x1000) is nonzero, else 0 |
| 0xb50 | GL_LIGHTING | 2896 | - | return 1 if ([ctx+2056] & 0x40) is nonzero, else 0 |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | - | return 1 if ([ctx+2056] & 0x80) is nonzero, else 0 |
| 0xb60 | GL_FOG | 2912 | - | return 1 if ([ctx+2056] & 0x20) is nonzero, else 0 |
| 0xb71 | GL_DEPTH_TEST | 2929 | - | return 1 if ([ctx+2056] & 0x10) is nonzero, else 0 |
| 0xb90 | GL_STENCIL_TEST | 2960 | - | return 1 if ([ctx+2056] & 0x8000) is nonzero, else 0 |
| 0xba1 | GL_NORMALIZE | 2977 | - | return 1 if ([ctx+2056] & 0x400000) is nonzero, else 0 |
| 0xbc0 | GL_ALPHA_TEST | 3008 | - | return 1 if ([ctx+2056] & 1) is nonzero, else 0 |
| 0xbd0 | GL_DITHER | 3024 | - | return 1 if ([ctx+2056] & 8) is nonzero, else 0 |
| 0xbe2 | GL_BLEND | 3042 | - | return 1 if ([ctx+2056] & 2) is nonzero, else 0 |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | - | return 1 if ([ctx+2056] & 4) is nonzero, else 0 |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | - | return 1 if ([ctx+2060] & 0x800) is nonzero, else 0 |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return 1 if ([ctx+2056] & 0x4000) is nonzero, else 0 |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | - | return 1 if ([ctx+2056] & 0x40000) is nonzero, else 0 |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | - | return 1 if ([ctx+2056] & 0x80000) is nonzero, else 0 |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | - | return 1 if ([ctx+2056] & 0x100000) is nonzero, else 0 |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | - | return 1 if ([ctx+2056] & 0x200000) is nonzero, else 0 |
| 0xd80 | GL_AUTO_NORMAL | 3456 | - | return 1 if ([ctx+2056] & 0x800000) is nonzero, else 0 |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | - | return 1 if ([ctx+2072] & 1) is nonzero, else 0 |
| 0xd91 | GL_MAP1_INDEX | 3473 | - | return 1 if ([ctx+2072] & 2) is nonzero, else 0 |
| 0xd92 | GL_MAP1_NORMAL | 3474 | - | return 1 if ([ctx+2072] & 4) is nonzero, else 0 |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | - | return 1 if ([ctx+2072] & 8) is nonzero, else 0 |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | - | return 1 if ([ctx+2072] & 0x10) is nonzero, else 0 |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | - | return 1 if ([ctx+2072] & 0x20) is nonzero, else 0 |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | - | return 1 if ([ctx+2072] & 0x40) is nonzero, else 0 |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | - | return 1 if ([ctx+2072] & 0x80) is nonzero, else 0 |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | - | return 1 if ([ctx+2072] & 0x100) is nonzero, else 0 |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | - | return 1 if ([ctx+2076] & 1) is nonzero, else 0 |
| 0xdb1 | GL_MAP2_INDEX | 3505 | - | return 1 if ([ctx+2076] & 2) is nonzero, else 0 |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | - | return 1 if ([ctx+2076] & 4) is nonzero, else 0 |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | - | return 1 if ([ctx+2076] & 8) is nonzero, else 0 |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | - | return 1 if ([ctx+2076] & 0x10) is nonzero, else 0 |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | - | return 1 if ([ctx+2076] & 0x20) is nonzero, else 0 |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | - | return 1 if ([ctx+2076] & 0x40) is nonzero, else 0 |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | - | return 1 if ([ctx+2076] & 0x80) is nonzero, else 0 |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | - | return 1 if ([ctx+2076] & 0x100) is nonzero, else 0 |
| 0xde0 | GL_TEXTURE_1D | 3552 | - | return 1 if ([ctx+2056] & 0x10000) is nonzero, else 0 |
| 0xde1 | GL_TEXTURE_2D | 3553 | - | return 1 if ([ctx+2056] & 0x20000) is nonzero, else 0 |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | - | return 1 if ([ctx+2060] & 0x200) is nonzero, else 0 |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | - | return 1 if ([ctx+2060] & 0x400) is nonzero, else 0 |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | - | return 1 if ([ctx+2068] & 1) is nonzero, else 0 |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | - | return 1 if ([ctx+2068] & 2) is nonzero, else 0 |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | - | return 1 if ([ctx+2068] & 4) is nonzero, else 0 |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | - | return 1 if ([ctx+2068] & 8) is nonzero, else 0 |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | - | return 1 if ([ctx+2068] & 0x10) is nonzero, else 0 |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | - | return 1 if ([ctx+2068] & 0x20) is nonzero, else 0 |
| 0x4000 | GL_LIGHT0 | 16384 | - | return 1 if ([ctx+2064] & 1) is nonzero, else 0 |
| 0x4001 | GL_LIGHT1 | 16385 | - | return 1 if ([ctx+2064] & 2) is nonzero, else 0 |
| 0x4002 | GL_LIGHT2 | 16386 | - | return 1 if ([ctx+2064] & 4) is nonzero, else 0 |
| 0x4003 | GL_LIGHT3 | 16387 | - | return 1 if ([ctx+2064] & 8) is nonzero, else 0 |
| 0x4004 | GL_LIGHT4 | 16388 | - | return 1 if ([ctx+2064] & 0x10) is nonzero, else 0 |
| 0x4005 | GL_LIGHT5 | 16389 | - | return 1 if ([ctx+2064] & 0x20) is nonzero, else 0 |
| 0x4006 | GL_LIGHT6 | 16390 | - | return 1 if ([ctx+2064] & 0x40) is nonzero, else 0 |
| 0x4007 | GL_LIGHT7 | 16391 | - | return 1 if ([ctx+2064] & 0x80) is nonzero, else 0 |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | - | return 1 if ([ctx+2056] & 0x2000000) is nonzero, else 0 |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | - | return 1 if ([ctx+2056] & 0x4000000) is nonzero, else 0 |
| 0x8012 | GL_SEPARABLE_2D | 32786 | - | return 1 if ([ctx+2056] & 0x8000000) is nonzero, else 0 |
| 0x8024 | GL_HISTOGRAM | 32804 | - | return 1 if ([ctx+2056] & 0x10000000) is nonzero, else 0 |
| 0x802e | GL_MINMAX | 32814 | - | return 1 if ([ctx+2056] & 0x20000000) is nonzero, else 0 |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | - | return 1 if ([ctx+2056] & 0x1000000) is nonzero, else 0 |
| 0x806f | GL_TEXTURE_3D | 32879 | - | return 1 if ([ctx+2056] & 0x40000000) is nonzero, else 0 |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | - | return 1 if ([ctx+6068] & 0xff) is nonzero, else 0 |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | - | return 1 if ([ctx+6068] & 0xf00) is nonzero, else 0 |
| 0x8076 | GL_COLOR_ARRAY | 32886 | - | return 1 if ([ctx+6068] & 0xff000) is nonzero, else 0 |
| 0x8077 | GL_INDEX_ARRAY | 32887 | - | return 1 if ([ctx+6068] & 0xf0000000) is nonzero, else 0 |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | - | return 1 if ([ctx+6068] & 0x7f00000) is nonzero, else 0 |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | - | return 1 if ([ctx+6068] & 0x8000000) is nonzero, else 0 |
| 0x8094 | GL_INTERLACE_SGIX | 32916 | - | return 1 if ([ctx+2060] & 0x20) is nonzero, else 0 |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | - | return 1 if ([ctx+2056] & 0x80000000) is nonzero, else 0 |
| 0x80d0 | GL_COLOR_TABLE | 32976 | - | return 1 if ([ctx+2060] & 1) is nonzero, else 0 |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | - | return 1 if ([ctx+2060] & 2) is nonzero, else 0 |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | - | return 1 if ([ctx+2060] & 4) is nonzero, else 0 |
| 0x8139 | GL_PIXEL_TEX_GEN_SGIX | 33081 | - | return 1 if ([ctx+2060] & 0x4000) is nonzero, else 0 |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | - | return 1 if ([ctx+6076] & 1) is nonzero, else 0 |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | - | return 1 if ([ctx+6076] & 2) is nonzero, else 0 |
| 0x8568 | GL_INTERLACE_READ_INGR | 34152 | - | return 1 if ([ctx+2060] & 0x20000) is nonzero, else 0 |

81 capability values with a leaf of their own.

