package com.google.android.gms.internal;

public abstract class zzcfe extends zzee implements zzcfd {
    public zzcfe() {
        attachInterface(this, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    /* JADX WARNING: Missing block: B:18:0x00d6, code skipped:
            r10.writeNoException();
            r10.writeTypedList(r8);
     */
    /* JADX WARNING: Missing block: B:19:0x00dc, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:25:0x0130, code skipped:
            r10.writeNoException();
     */
    /* JADX WARNING: Missing block: B:26:0x0133, code skipped:
            return true;
     */
    public boolean onTransact(int r8, android.os.Parcel r9, android.os.Parcel r10, int r11) throws android.os.RemoteException {
        /*
        r7 = this;
        r11 = r7.zza(r8, r9, r10, r11);
        r0 = 1;
        if (r11 == 0) goto L_0x0008;
    L_0x0007:
        return r0;
    L_0x0008:
        switch(r8) {
            case 1: goto L_0x011d;
            case 2: goto L_0x0109;
            case 3: goto L_0x000b;
            case 4: goto L_0x00fd;
            case 5: goto L_0x00e9;
            case 6: goto L_0x00dd;
            case 7: goto L_0x00c6;
            case 8: goto L_0x000b;
            case 9: goto L_0x00af;
            case 10: goto L_0x0099;
            case 11: goto L_0x0086;
            case 12: goto L_0x0071;
            case 13: goto L_0x0064;
            case 14: goto L_0x004b;
            case 15: goto L_0x0035;
            case 16: goto L_0x001f;
            case 17: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r8 = 0;
        return r8;
    L_0x000d:
        r8 = r9.readString();
        r11 = r9.readString();
        r9 = r9.readString();
        r8 = r7.zzk(r8, r11, r9);
        goto L_0x00d6;
    L_0x001f:
        r8 = r9.readString();
        r11 = r9.readString();
        r1 = com.google.android.gms.internal.zzceh.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r1);
        r9 = (com.google.android.gms.internal.zzceh) r9;
        r8 = r7.zza(r8, r11, r9);
        goto L_0x00d6;
    L_0x0035:
        r8 = r9.readString();
        r11 = r9.readString();
        r1 = r9.readString();
        r9 = com.google.android.gms.internal.zzef.zza(r9);
        r8 = r7.zza(r8, r11, r1, r9);
        goto L_0x00d6;
    L_0x004b:
        r8 = r9.readString();
        r11 = r9.readString();
        r1 = com.google.android.gms.internal.zzef.zza(r9);
        r2 = com.google.android.gms.internal.zzceh.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r2);
        r9 = (com.google.android.gms.internal.zzceh) r9;
        r8 = r7.zza(r8, r11, r1, r9);
        goto L_0x00d6;
    L_0x0064:
        r8 = com.google.android.gms.internal.zzcek.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzcek) r8;
        r7.zzb(r8);
        goto L_0x0130;
    L_0x0071:
        r8 = com.google.android.gms.internal.zzcek.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzcek) r8;
        r11 = com.google.android.gms.internal.zzceh.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (com.google.android.gms.internal.zzceh) r9;
        r7.zza(r8, r9);
        goto L_0x0130;
    L_0x0086:
        r8 = com.google.android.gms.internal.zzceh.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzceh) r8;
        r8 = r7.zzc(r8);
        r10.writeNoException();
        r10.writeString(r8);
        return r0;
    L_0x0099:
        r2 = r9.readLong();
        r4 = r9.readString();
        r5 = r9.readString();
        r6 = r9.readString();
        r1 = r7;
        r1.zza(r2, r4, r5, r6);
        goto L_0x0130;
    L_0x00af:
        r8 = com.google.android.gms.internal.zzcez.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzcez) r8;
        r9 = r9.readString();
        r8 = r7.zza(r8, r9);
        r10.writeNoException();
        r10.writeByteArray(r8);
        return r0;
    L_0x00c6:
        r8 = com.google.android.gms.internal.zzceh.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzceh) r8;
        r9 = com.google.android.gms.internal.zzef.zza(r9);
        r8 = r7.zza(r8, r9);
    L_0x00d6:
        r10.writeNoException();
        r10.writeTypedList(r8);
        return r0;
    L_0x00dd:
        r8 = com.google.android.gms.internal.zzceh.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzceh) r8;
        r7.zzb(r8);
        goto L_0x0130;
    L_0x00e9:
        r8 = com.google.android.gms.internal.zzcez.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzcez) r8;
        r11 = r9.readString();
        r9 = r9.readString();
        r7.zza(r8, r11, r9);
        goto L_0x0130;
    L_0x00fd:
        r8 = com.google.android.gms.internal.zzceh.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzceh) r8;
        r7.zza(r8);
        goto L_0x0130;
    L_0x0109:
        r8 = com.google.android.gms.internal.zzcji.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzcji) r8;
        r11 = com.google.android.gms.internal.zzceh.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (com.google.android.gms.internal.zzceh) r9;
        r7.zza(r8, r9);
        goto L_0x0130;
    L_0x011d:
        r8 = com.google.android.gms.internal.zzcez.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.internal.zzcez) r8;
        r11 = com.google.android.gms.internal.zzceh.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (com.google.android.gms.internal.zzceh) r9;
        r7.zza(r8, r9);
    L_0x0130:
        r10.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcfe.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
