package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zze extends zzee implements zzd {
    public static zzd zzab(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        return queryLocalInterface instanceof zzd ? (zzd) queryLocalInterface : new zzf(iBinder);
    }

    /* JADX WARNING: Missing block: B:24:0x0073, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:25:0x0079, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:32:0x00a2, code skipped:
            r4.writeNoException();
            r4.writeInt(r2);
     */
    /* JADX WARNING: Missing block: B:33:0x00a8, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:36:0x00b5, code skipped:
            r4.writeNoException();
            r4.writeFloat(r2);
     */
    /* JADX WARNING: Missing block: B:37:0x00bb, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:48:0x00fc, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:49:0x00ff, code skipped:
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
            case 1: goto L_0x00f9;
            case 2: goto L_0x00ee;
            case 3: goto L_0x00e2;
            case 4: goto L_0x00d7;
            case 5: goto L_0x00cf;
            case 6: goto L_0x00c4;
            case 7: goto L_0x00bc;
            case 8: goto L_0x00b1;
            case 9: goto L_0x00a9;
            case 10: goto L_0x009e;
            case 11: goto L_0x0096;
            case 12: goto L_0x0091;
            case 13: goto L_0x0088;
            case 14: goto L_0x0083;
            case 15: goto L_0x007a;
            case 16: goto L_0x006f;
            case 17: goto L_0x004e;
            case 18: goto L_0x0049;
            case 19: goto L_0x0040;
            case 20: goto L_0x003b;
            case 21: goto L_0x0030;
            case 22: goto L_0x0025;
            case 23: goto L_0x0018;
            case 24: goto L_0x000d;
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
        goto L_0x00fc;
    L_0x0025:
        r2 = r1.getStrokePattern();
        r4.writeNoException();
        r4.writeTypedList(r2);
        return r0;
    L_0x0030:
        r2 = com.google.android.gms.maps.model.PatternItem.CREATOR;
        r2 = r3.createTypedArrayList(r2);
        r1.setStrokePattern(r2);
        goto L_0x00fc;
    L_0x003b:
        r2 = r1.isClickable();
        goto L_0x0073;
    L_0x0040:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setClickable(r2);
        goto L_0x00fc;
    L_0x0049:
        r2 = r1.hashCodeRemote();
        goto L_0x00a2;
    L_0x004e:
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x0056;
    L_0x0054:
        r2 = 0;
        goto L_0x006a;
    L_0x0056:
        r3 = "com.google.android.gms.maps.model.internal.ICircleDelegate";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.maps.model.internal.zzd;
        if (r5 == 0) goto L_0x0064;
    L_0x0060:
        r2 = r3;
        r2 = (com.google.android.gms.maps.model.internal.zzd) r2;
        goto L_0x006a;
    L_0x0064:
        r3 = new com.google.android.gms.maps.model.internal.zzf;
        r3.<init>(r2);
        r2 = r3;
    L_0x006a:
        r2 = r1.zzb(r2);
        goto L_0x0073;
    L_0x006f:
        r2 = r1.isVisible();
    L_0x0073:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x007a:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setVisible(r2);
        goto L_0x00fc;
    L_0x0083:
        r2 = r1.getZIndex();
        goto L_0x00b5;
    L_0x0088:
        r2 = r3.readFloat();
        r1.setZIndex(r2);
        goto L_0x00fc;
    L_0x0091:
        r2 = r1.getFillColor();
        goto L_0x00a2;
    L_0x0096:
        r2 = r3.readInt();
        r1.setFillColor(r2);
        goto L_0x00fc;
    L_0x009e:
        r2 = r1.getStrokeColor();
    L_0x00a2:
        r4.writeNoException();
        r4.writeInt(r2);
        return r0;
    L_0x00a9:
        r2 = r3.readInt();
        r1.setStrokeColor(r2);
        goto L_0x00fc;
    L_0x00b1:
        r2 = r1.getStrokeWidth();
    L_0x00b5:
        r4.writeNoException();
        r4.writeFloat(r2);
        return r0;
    L_0x00bc:
        r2 = r3.readFloat();
        r1.setStrokeWidth(r2);
        goto L_0x00fc;
    L_0x00c4:
        r2 = r1.getRadius();
        r4.writeNoException();
        r4.writeDouble(r2);
        return r0;
    L_0x00cf:
        r2 = r3.readDouble();
        r1.setRadius(r2);
        goto L_0x00fc;
    L_0x00d7:
        r2 = r1.getCenter();
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zzb(r4, r2);
        return r0;
    L_0x00e2:
        r2 = com.google.android.gms.maps.model.LatLng.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (com.google.android.gms.maps.model.LatLng) r2;
        r1.setCenter(r2);
        goto L_0x00fc;
    L_0x00ee:
        r2 = r1.getId();
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
    L_0x00f9:
        r1.remove();
    L_0x00fc:
        r4.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.internal.zze.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
