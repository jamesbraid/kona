? __glKon_ioctl(void *, ?, void *, ?, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glSetError(?, ?, ?, void *, ?, ?, ?);           /* extern */

void __glkonim_IglooInterfaceSGIX(s32 arg0, void *arg1) {
    if (arg0 != 0x81A4) {
        if (arg0 != 0x81A0) {
            if (arg0 != 0x81A1) {
                if (arg0 != 0x81A3) {
                    if (arg0 != 0x819E) {
                        if (arg0 != 0x819F) {
                            if (arg0 == 0x81A2) {
                                *(s32 *)0x4000 = 0x112;
                                *(void *)0x4000 = (s32) arg1->unk0;
                                return;
                            }
                            __glSetError(0x500, 0x81A1, 0x81A3, arg1, 0x819E, 0x819F, 0x81A2);
                        }
                    } else {
                        __glkonim_IglooInterfaceSGIX(arg1->unk0, arg1->unk7, 0x81A3, arg1, 0x819E);
                    }
                } else {
                    *(void *)0x4000 = 0x113;
                    *(void *)0x4000 = (s32) arg1->unk0;
                }
            } else {
                *(void *)0x4000 = 0x1BE;
                *(void *)0x4000 = (s32) arg1->unk0;
            }
        } else {
            *(void *)0x4000 = 0x1A9;
            *(void *)0x4000 = 0;
        }
    } else {
        *(void *)0x4000 = 0x1C9;
        *(void *)0x4000 = (s32) arg1->unk0;
    }
}

void fullscreen(s32 arg0, s32 arg1) {
    s32 temp_a4;
    void *temp_v0;

    temp_v0 = *(void **)0x1010;
    temp_a4 = temp_v0->unk7B4C;
    __glKon_ioctl(temp_v0, 0x3F1, sp, 2, temp_a4, temp_a4, 2, 6, 3, arg0, temp_v0->unk7B4C, arg1);
}
