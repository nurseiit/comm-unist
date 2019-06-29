package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zzk extends zzee implements zzj {
    public static zzj zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        return queryLocalInterface instanceof zzj ? (zzj) queryLocalInterface : new zzl(iBinder);
    }

    /* JADX WARNING: Missing block: B:16:0x0037, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:17:0x003d, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:22:0x0052, code skipped:
            r4.writeNoException();
            r4.writeInt(r2);
     */
    /* JADX WARNING: Missing block: B:23:0x0058, code skipped:
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
            case 1: goto L_0x004e;
            case 2: goto L_0x0049;
            case 3: goto L_0x003e;
            case 4: goto L_0x0033;
            case 5: goto L_0x0012;
            case 6: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = r1.hashCodeRemote();
        goto L_0x0052;
    L_0x0012:
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x001a;
    L_0x0018:
        r2 = 0;
        goto L_0x002e;
    L_0x001a:
        r3 = "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.maps.model.internal.zzj;
        if (r5 == 0) goto L_0x0028;
    L_0x0024:
        r2 = r3;
        r2 = (com.google.android.gms.maps.model.internal.zzj) r2;
        goto L_0x002e;
    L_0x0028:
        r3 = new com.google.android.gms.maps.model.internal.zzl;
        r3.<init>(r2);
        r2 = r3;
    L_0x002e:
        r2 = r1.zzb(r2);
        goto L_0x0037;
    L_0x0033:
        r2 = r1.isUnderground();
    L_0x0037:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x003e:
        r2 = r1.getLevels();
        r4.writeNoException();
        r4.writeBinderList(r2);
        return r0;
    L_0x0049:
        r2 = r1.getDefaultLevelIndex();
        goto L_0x0052;
    L_0x004e:
        r2 = r1.getActiveLevelIndex();
    L_0x0052:
        r4.writeNoException();
        r4.writeInt(r2);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.internal.zzk.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
