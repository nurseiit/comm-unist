package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zzx extends zzee implements zzw {
    public static zzw zzai(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        return queryLocalInterface instanceof zzw ? (zzw) queryLocalInterface : new zzy(iBinder);
    }

    /* JADX WARNING: Missing block: B:21:0x0058, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:22:0x005e, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:25:0x006b, code skipped:
            r4.writeNoException();
            r4.writeFloat(r2);
     */
    /* JADX WARNING: Missing block: B:26:0x0071, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:32:0x008c, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:33:0x008f, code skipped:
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
            case 1: goto L_0x0089;
            case 2: goto L_0x0085;
            case 3: goto L_0x007a;
            case 4: goto L_0x0072;
            case 5: goto L_0x0067;
            case 6: goto L_0x005f;
            case 7: goto L_0x0054;
            case 8: goto L_0x0033;
            case 9: goto L_0x0028;
            case 10: goto L_0x0020;
            case 11: goto L_0x001b;
            case 12: goto L_0x0012;
            case 13: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = r1.getTransparency();
        goto L_0x006b;
    L_0x0012:
        r2 = r3.readFloat();
        r1.setTransparency(r2);
        goto L_0x008c;
    L_0x001b:
        r2 = r1.getFadeIn();
        goto L_0x0058;
    L_0x0020:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setFadeIn(r2);
        goto L_0x008c;
    L_0x0028:
        r2 = r1.hashCodeRemote();
        r4.writeNoException();
        r4.writeInt(r2);
        return r0;
    L_0x0033:
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x003b;
    L_0x0039:
        r2 = 0;
        goto L_0x004f;
    L_0x003b:
        r3 = "com.google.android.gms.maps.model.internal.ITileOverlayDelegate";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.maps.model.internal.zzw;
        if (r5 == 0) goto L_0x0049;
    L_0x0045:
        r2 = r3;
        r2 = (com.google.android.gms.maps.model.internal.zzw) r2;
        goto L_0x004f;
    L_0x0049:
        r3 = new com.google.android.gms.maps.model.internal.zzy;
        r3.<init>(r2);
        r2 = r3;
    L_0x004f:
        r2 = r1.zza(r2);
        goto L_0x0058;
    L_0x0054:
        r2 = r1.isVisible();
    L_0x0058:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x005f:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setVisible(r2);
        goto L_0x008c;
    L_0x0067:
        r2 = r1.getZIndex();
    L_0x006b:
        r4.writeNoException();
        r4.writeFloat(r2);
        return r0;
    L_0x0072:
        r2 = r3.readFloat();
        r1.setZIndex(r2);
        goto L_0x008c;
    L_0x007a:
        r2 = r1.getId();
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
    L_0x0085:
        r1.clearTileCache();
        goto L_0x008c;
    L_0x0089:
        r1.remove();
    L_0x008c:
        r4.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.internal.zzx.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
