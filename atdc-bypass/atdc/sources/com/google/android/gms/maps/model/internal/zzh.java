package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zzh extends zzee implements zzg {
    public static zzg zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        return queryLocalInterface instanceof zzg ? (zzg) queryLocalInterface : new zzi(iBinder);
    }

    /* JADX WARNING: Missing block: B:25:0x007e, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:26:0x0084, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:36:0x00c3, code skipped:
            r4.writeNoException();
            r4.writeFloat(r2);
     */
    /* JADX WARNING: Missing block: B:37:0x00c9, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:41:0x00e2, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zzb(r4, r2);
     */
    /* JADX WARNING: Missing block: B:42:0x00e8, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:47:0x0103, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:48:0x0106, code skipped:
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
            case 1: goto L_0x0100;
            case 2: goto L_0x00f5;
            case 3: goto L_0x00e9;
            case 4: goto L_0x00de;
            case 5: goto L_0x00d6;
            case 6: goto L_0x00ca;
            case 7: goto L_0x00bf;
            case 8: goto L_0x00ba;
            case 9: goto L_0x00ae;
            case 10: goto L_0x00a9;
            case 11: goto L_0x00a1;
            case 12: goto L_0x009c;
            case 13: goto L_0x0093;
            case 14: goto L_0x008e;
            case 15: goto L_0x0085;
            case 16: goto L_0x007a;
            case 17: goto L_0x0071;
            case 18: goto L_0x006c;
            case 19: goto L_0x004b;
            case 20: goto L_0x0040;
            case 21: goto L_0x0033;
            case 22: goto L_0x002a;
            case 23: goto L_0x0025;
            case 24: goto L_0x0018;
            case 25: goto L_0x000d;
            default: goto L_0x000b;
        };
    L_0x000b:
        r2 = 0;
        return r2;
    L_0x000d:
        r2 = r1.getTag();
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x0018:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.setTag(r2);
        goto L_0x0103;
    L_0x0025:
        r2 = r1.isClickable();
        goto L_0x007e;
    L_0x002a:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setClickable(r2);
        goto L_0x0103;
    L_0x0033:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzJ(r2);
        goto L_0x0103;
    L_0x0040:
        r2 = r1.hashCodeRemote();
        r4.writeNoException();
        r4.writeInt(r2);
        return r0;
    L_0x004b:
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x0053;
    L_0x0051:
        r2 = 0;
        goto L_0x0067;
    L_0x0053:
        r3 = "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.maps.model.internal.zzg;
        if (r5 == 0) goto L_0x0061;
    L_0x005d:
        r2 = r3;
        r2 = (com.google.android.gms.maps.model.internal.zzg) r2;
        goto L_0x0067;
    L_0x0061:
        r3 = new com.google.android.gms.maps.model.internal.zzi;
        r3.<init>(r2);
        r2 = r3;
    L_0x0067:
        r2 = r1.zzb(r2);
        goto L_0x007e;
    L_0x006c:
        r2 = r1.getTransparency();
        goto L_0x00c3;
    L_0x0071:
        r2 = r3.readFloat();
        r1.setTransparency(r2);
        goto L_0x0103;
    L_0x007a:
        r2 = r1.isVisible();
    L_0x007e:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x0085:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setVisible(r2);
        goto L_0x0103;
    L_0x008e:
        r2 = r1.getZIndex();
        goto L_0x00c3;
    L_0x0093:
        r2 = r3.readFloat();
        r1.setZIndex(r2);
        goto L_0x0103;
    L_0x009c:
        r2 = r1.getBearing();
        goto L_0x00c3;
    L_0x00a1:
        r2 = r3.readFloat();
        r1.setBearing(r2);
        goto L_0x0103;
    L_0x00a9:
        r2 = r1.getBounds();
        goto L_0x00e2;
    L_0x00ae:
        r2 = com.google.android.gms.maps.model.LatLngBounds.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (com.google.android.gms.maps.model.LatLngBounds) r2;
        r1.setPositionFromBounds(r2);
        goto L_0x0103;
    L_0x00ba:
        r2 = r1.getHeight();
        goto L_0x00c3;
    L_0x00bf:
        r2 = r1.getWidth();
    L_0x00c3:
        r4.writeNoException();
        r4.writeFloat(r2);
        return r0;
    L_0x00ca:
        r2 = r3.readFloat();
        r3 = r3.readFloat();
        r1.zzf(r2, r3);
        goto L_0x0103;
    L_0x00d6:
        r2 = r3.readFloat();
        r1.setDimensions(r2);
        goto L_0x0103;
    L_0x00de:
        r2 = r1.getPosition();
    L_0x00e2:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zzb(r4, r2);
        return r0;
    L_0x00e9:
        r2 = com.google.android.gms.maps.model.LatLng.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (com.google.android.gms.maps.model.LatLng) r2;
        r1.setPosition(r2);
        goto L_0x0103;
    L_0x00f5:
        r2 = r1.getId();
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
    L_0x0100:
        r1.remove();
    L_0x0103:
        r4.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.internal.zzh.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
