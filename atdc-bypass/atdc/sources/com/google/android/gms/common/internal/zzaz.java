package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zzaz extends zzee implements zzay {
    public static zzay zzJ(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof zzay ? (zzay) queryLocalInterface : new zzba(iBinder);
    }

    /* JADX WARNING: Missing block: B:9:0x0043, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:10:0x0049, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:13:0x0053, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:14:0x0059, code skipped:
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
            case 1: goto L_0x004f;
            case 2: goto L_0x004a;
            case 3: goto L_0x0033;
            case 4: goto L_0x0022;
            case 5: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = com.google.android.gms.common.zzm.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (com.google.android.gms.common.zzm) r2;
        r3 = r3.readStrongBinder();
        r3 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r3);
        r2 = r1.zza(r2, r3);
        goto L_0x0043;
    L_0x0022:
        r2 = r3.readString();
        r3 = r3.readStrongBinder();
        r3 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r3);
        r2 = r1.zzf(r2, r3);
        goto L_0x0043;
    L_0x0033:
        r2 = r3.readString();
        r3 = r3.readStrongBinder();
        r3 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r3);
        r2 = r1.zze(r2, r3);
    L_0x0043:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x004a:
        r2 = r1.zzrG();
        goto L_0x0053;
    L_0x004f:
        r2 = r1.zzrF();
    L_0x0053:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzaz.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
