package com.google.android.gms.plus.internal;

import com.google.android.gms.internal.zzee;

public abstract class zzc extends zzee implements zzb {
    public zzc() {
        attachInterface(this, "com.google.android.gms.plus.internal.IPlusCallbacks");
    }

    /* JADX WARNING: Missing block: B:12:0x004a, code skipped:
            r3.readString();
     */
    /* JADX WARNING: Missing block: B:15:0x0063, code skipped:
            com.google.android.gms.internal.zzef.zza(r3, r2);
     */
    /* JADX WARNING: Missing block: B:16:0x0066, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:17:0x0069, code skipped:
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
            case 1: goto L_0x0059;
            case 2: goto L_0x004e;
            case 3: goto L_0x004a;
            case 4: goto L_0x003a;
            case 5: goto L_0x002f;
            case 6: goto L_0x0026;
            case 7: goto L_0x0016;
            case 8: goto L_0x004a;
            case 9: goto L_0x0010;
            case 10: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = com.google.android.gms.common.api.Status.CREATOR;
        goto L_0x0063;
    L_0x0010:
        r3.readInt();
        r2 = com.google.android.gms.internal.zzcri.CREATOR;
        goto L_0x0063;
    L_0x0016:
        r2 = r3.readInt();
        r5 = android.os.Bundle.CREATOR;
        r3 = com.google.android.gms.internal.zzef.zza(r3, r5);
        r3 = (android.os.Bundle) r3;
        r1.zzf(r2, r3);
        goto L_0x0066;
    L_0x0026:
        r2 = com.google.android.gms.common.data.DataHolder.CREATOR;
        com.google.android.gms.internal.zzef.zza(r3, r2);
        r3.readString();
        goto L_0x004a;
    L_0x002f:
        r3.readInt();
        r2 = android.os.Bundle.CREATOR;
        com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = com.google.android.gms.internal.zzbgt.CREATOR;
        goto L_0x0063;
    L_0x003a:
        r2 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (com.google.android.gms.common.data.DataHolder) r2;
        r3 = r3.readString();
        r1.zza(r2, r3);
        goto L_0x0066;
    L_0x004a:
        r3.readString();
        goto L_0x0066;
    L_0x004e:
        r3.readInt();
        r2 = android.os.Bundle.CREATOR;
        com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = android.os.ParcelFileDescriptor.CREATOR;
        goto L_0x0063;
    L_0x0059:
        r3.readInt();
        r2 = android.os.Bundle.CREATOR;
        com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = android.os.Bundle.CREATOR;
    L_0x0063:
        com.google.android.gms.internal.zzef.zza(r3, r2);
    L_0x0066:
        r4.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.plus.internal.zzc.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
