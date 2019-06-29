package com.google.android.gms.internal;

public abstract class zzpg extends zzee implements zzpf {
    public zzpg() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    /* JADX WARNING: Missing block: B:12:0x0040, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:13:0x0043, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:23:0x0072, code skipped:
            r4.writeNoException();
            r4.writeString(r2);
     */
    /* JADX WARNING: Missing block: B:24:0x0078, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:26:0x007d, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:27:0x0083, code skipped:
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
            case 2: goto L_0x0079;
            case 3: goto L_0x006e;
            case 4: goto L_0x0063;
            case 5: goto L_0x005e;
            case 6: goto L_0x0059;
            case 7: goto L_0x0054;
            case 8: goto L_0x004f;
            case 9: goto L_0x0044;
            case 10: goto L_0x003d;
            case 11: goto L_0x0038;
            case 12: goto L_0x002c;
            case 13: goto L_0x0019;
            case 14: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = android.os.Bundle.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (android.os.Bundle) r2;
        r1.zze(r2);
        goto L_0x0040;
    L_0x0019:
        r2 = android.os.Bundle.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (android.os.Bundle) r2;
        r2 = r1.zzd(r2);
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x002c:
        r2 = android.os.Bundle.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (android.os.Bundle) r2;
        r1.zzc(r2);
        goto L_0x0040;
    L_0x0038:
        r2 = r1.getVideoController();
        goto L_0x007d;
    L_0x003d:
        r1.destroy();
    L_0x0040:
        r4.writeNoException();
        return r0;
    L_0x0044:
        r2 = r1.getExtras();
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zzb(r4, r2);
        return r0;
    L_0x004f:
        r2 = r1.getAdvertiser();
        goto L_0x0072;
    L_0x0054:
        r2 = r1.getCallToAction();
        goto L_0x0072;
    L_0x0059:
        r2 = r1.zzem();
        goto L_0x007d;
    L_0x005e:
        r2 = r1.getBody();
        goto L_0x0072;
    L_0x0063:
        r2 = r1.getImages();
        r4.writeNoException();
        r4.writeList(r2);
        return r0;
    L_0x006e:
        r2 = r1.getHeadline();
    L_0x0072:
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
    L_0x0079:
        r2 = r1.zzei();
    L_0x007d:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzpg.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
