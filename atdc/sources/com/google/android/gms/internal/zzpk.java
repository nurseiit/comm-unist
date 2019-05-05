package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzpk extends zzee implements zzpj {
    public zzpk() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzpj zzk(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof zzpj ? (zzpj) queryLocalInterface : new zzpl(iBinder);
    }

    /* JADX WARNING: Missing block: B:14:0x003e, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:15:0x0041, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:20:0x005a, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:21:0x0060, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:23:0x0069, code skipped:
            r4.writeNoException();
            r4.writeString(r2);
     */
    /* JADX WARNING: Missing block: B:24:0x006f, code skipped:
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
            case 1: goto L_0x0061;
            case 2: goto L_0x0052;
            case 3: goto L_0x0047;
            case 4: goto L_0x0042;
            case 5: goto L_0x0037;
            case 6: goto L_0x0033;
            case 7: goto L_0x002e;
            case 8: goto L_0x002a;
            case 9: goto L_0x0025;
            case 10: goto L_0x0012;
            case 11: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = r1.zzei();
        goto L_0x005a;
    L_0x0012:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r2 = r1.zzj(r2);
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x0025:
        r2 = r1.zzen();
        goto L_0x005a;
    L_0x002a:
        r1.destroy();
        goto L_0x003e;
    L_0x002e:
        r2 = r1.getVideoController();
        goto L_0x005a;
    L_0x0033:
        r1.recordImpression();
        goto L_0x003e;
    L_0x0037:
        r2 = r3.readString();
        r1.performClick(r2);
    L_0x003e:
        r4.writeNoException();
        return r0;
    L_0x0042:
        r2 = r1.getCustomTemplateId();
        goto L_0x0069;
    L_0x0047:
        r2 = r1.getAvailableAssetNames();
        r4.writeNoException();
        r4.writeStringList(r2);
        return r0;
    L_0x0052:
        r2 = r3.readString();
        r2 = r1.zzQ(r2);
    L_0x005a:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x0061:
        r2 = r3.readString();
        r2 = r1.zzP(r2);
    L_0x0069:
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzpk.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
