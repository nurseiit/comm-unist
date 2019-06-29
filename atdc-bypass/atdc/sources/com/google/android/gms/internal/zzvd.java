package com.google.android.gms.internal;

public abstract class zzvd extends zzee implements zzvc {
    public zzvd() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    /* JADX WARNING: Missing block: B:13:0x0038, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:14:0x003e, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:18:0x005a, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:19:0x005d, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:26:0x007c, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:27:0x0082, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:32:0x0097, code skipped:
            r4.writeNoException();
            r4.writeString(r2);
     */
    /* JADX WARNING: Missing block: B:33:0x009d, code skipped:
            return true;
     */
    public boolean onTransact(int r2, android.os.Parcel r3, android.os.Parcel r4, int r5) throws android.os.RemoteException {
        /*
        r1 = this;
        r5 = r1.zza(r2, r3, r4, r5);
        r0 = 1;
        if (r5 == 0) goto L_0x0008;
    L_0x0007:
        return r0;
    L_0x0008:
        switch(r2) {
            case 2: goto L_0x0093;
            case 3: goto L_0x0088;
            case 4: goto L_0x0083;
            case 5: goto L_0x0078;
            case 6: goto L_0x0073;
            case 7: goto L_0x0068;
            case 8: goto L_0x0063;
            case 9: goto L_0x005e;
            case 10: goto L_0x0057;
            case 11: goto L_0x004b;
            case 12: goto L_0x003f;
            case 13: goto L_0x0034;
            case 14: goto L_0x002f;
            case 15: goto L_0x0024;
            case 16: goto L_0x0018;
            case 17: goto L_0x0013;
            case 18: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = r1.zzfw();
        goto L_0x007c;
    L_0x0013:
        r2 = r1.getVideoController();
        goto L_0x007c;
    L_0x0018:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzn(r2);
        goto L_0x005a;
    L_0x0024:
        r2 = r1.getExtras();
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zzb(r4, r2);
        return r0;
    L_0x002f:
        r2 = r1.getOverrideClickHandling();
        goto L_0x0038;
    L_0x0034:
        r2 = r1.getOverrideImpressionRecording();
    L_0x0038:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x003f:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzm(r2);
        goto L_0x005a;
    L_0x004b:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzl(r2);
        goto L_0x005a;
    L_0x0057:
        r1.recordImpression();
    L_0x005a:
        r4.writeNoException();
        return r0;
    L_0x005e:
        r2 = r1.getPrice();
        goto L_0x0097;
    L_0x0063:
        r2 = r1.getStore();
        goto L_0x0097;
    L_0x0068:
        r2 = r1.getStarRating();
        r4.writeNoException();
        r4.writeDouble(r2);
        return r0;
    L_0x0073:
        r2 = r1.getCallToAction();
        goto L_0x0097;
    L_0x0078:
        r2 = r1.zzeh();
    L_0x007c:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x0083:
        r2 = r1.getBody();
        goto L_0x0097;
    L_0x0088:
        r2 = r1.getImages();
        r4.writeNoException();
        r4.writeList(r2);
        return r0;
    L_0x0093:
        r2 = r1.getHeadline();
    L_0x0097:
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzvd.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
