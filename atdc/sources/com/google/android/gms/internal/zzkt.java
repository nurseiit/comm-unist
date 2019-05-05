package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzkt extends zzee implements zzks {
    public zzkt() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzks zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof zzks ? (zzks) queryLocalInterface : new zzku(iBinder);
    }

    /* JADX WARNING: Missing block: B:18:0x0040, code skipped:
            r4.writeNoException();
            r4.writeFloat(r2);
     */
    /* JADX WARNING: Missing block: B:19:0x0046, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:23:0x0056, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:24:0x005c, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:28:0x006c, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:29:0x006f, code skipped:
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
            case 1: goto L_0x0069;
            case 2: goto L_0x0065;
            case 3: goto L_0x005d;
            case 4: goto L_0x0052;
            case 5: goto L_0x0047;
            case 6: goto L_0x003c;
            case 7: goto L_0x0037;
            case 8: goto L_0x0017;
            case 9: goto L_0x0012;
            case 10: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = r1.isCustomControlsEnabled();
        goto L_0x0056;
    L_0x0012:
        r2 = r1.getAspectRatio();
        goto L_0x0040;
    L_0x0017:
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x001f;
    L_0x001d:
        r2 = 0;
        goto L_0x0033;
    L_0x001f:
        r3 = "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.internal.zzkv;
        if (r5 == 0) goto L_0x002d;
    L_0x0029:
        r2 = r3;
        r2 = (com.google.android.gms.internal.zzkv) r2;
        goto L_0x0033;
    L_0x002d:
        r3 = new com.google.android.gms.internal.zzkx;
        r3.<init>(r2);
        r2 = r3;
    L_0x0033:
        r1.zza(r2);
        goto L_0x006c;
    L_0x0037:
        r2 = r1.zzdw();
        goto L_0x0040;
    L_0x003c:
        r2 = r1.zzdv();
    L_0x0040:
        r4.writeNoException();
        r4.writeFloat(r2);
        return r0;
    L_0x0047:
        r2 = r1.getPlaybackState();
        r4.writeNoException();
        r4.writeInt(r2);
        return r0;
    L_0x0052:
        r2 = r1.isMuted();
    L_0x0056:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x005d:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.mute(r2);
        goto L_0x006c;
    L_0x0065:
        r1.pause();
        goto L_0x006c;
    L_0x0069:
        r1.play();
    L_0x006c:
        r4.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzkt.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
