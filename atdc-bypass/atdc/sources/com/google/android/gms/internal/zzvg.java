package com.google.android.gms.internal;

public abstract class zzvg extends zzee implements zzvf {
    public zzvg() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    /* JADX WARNING: Missing block: B:13:0x0037, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:14:0x003d, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:18:0x0059, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:19:0x005c, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:23:0x006b, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:24:0x0071, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:29:0x0086, code skipped:
            r4.writeNoException();
            r4.writeString(r2);
     */
    /* JADX WARNING: Missing block: B:30:0x008c, code skipped:
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
            case 2: goto L_0x0082;
            case 3: goto L_0x0077;
            case 4: goto L_0x0072;
            case 5: goto L_0x0067;
            case 6: goto L_0x0062;
            case 7: goto L_0x005d;
            case 8: goto L_0x0056;
            case 9: goto L_0x004a;
            case 10: goto L_0x003e;
            case 11: goto L_0x0033;
            case 12: goto L_0x002e;
            case 13: goto L_0x0023;
            case 14: goto L_0x0017;
            case 15: goto L_0x0012;
            case 16: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = r1.getVideoController();
        goto L_0x006b;
    L_0x0012:
        r2 = r1.zzfw();
        goto L_0x006b;
    L_0x0017:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzn(r2);
        goto L_0x0059;
    L_0x0023:
        r2 = r1.getExtras();
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zzb(r4, r2);
        return r0;
    L_0x002e:
        r2 = r1.getOverrideClickHandling();
        goto L_0x0037;
    L_0x0033:
        r2 = r1.getOverrideImpressionRecording();
    L_0x0037:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x003e:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzm(r2);
        goto L_0x0059;
    L_0x004a:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzl(r2);
        goto L_0x0059;
    L_0x0056:
        r1.recordImpression();
    L_0x0059:
        r4.writeNoException();
        return r0;
    L_0x005d:
        r2 = r1.getAdvertiser();
        goto L_0x0086;
    L_0x0062:
        r2 = r1.getCallToAction();
        goto L_0x0086;
    L_0x0067:
        r2 = r1.zzem();
    L_0x006b:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x0072:
        r2 = r1.getBody();
        goto L_0x0086;
    L_0x0077:
        r2 = r1.getImages();
        r4.writeNoException();
        r4.writeList(r2);
        return r0;
    L_0x0082:
        r2 = r1.getHeadline();
    L_0x0086:
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzvg.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
