package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zzt extends zzee implements zzs {
    public static zzs zzag(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        return queryLocalInterface instanceof zzs ? (zzs) queryLocalInterface : new zzu(iBinder);
    }

    /* JADX WARNING: Missing block: B:27:0x008b, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:28:0x0091, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:35:0x00ba, code skipped:
            r4.writeNoException();
            r4.writeInt(r2);
     */
    /* JADX WARNING: Missing block: B:36:0x00c0, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:39:0x00cd, code skipped:
            r4.writeNoException();
            r4.writeFloat(r2);
     */
    /* JADX WARNING: Missing block: B:40:0x00d3, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:46:0x00f3, code skipped:
            r4.writeNoException();
            r4.writeTypedList(r2);
     */
    /* JADX WARNING: Missing block: B:47:0x00f9, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:52:0x0112, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:53:0x0115, code skipped:
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
            case 1: goto L_0x010f;
            case 2: goto L_0x0104;
            case 3: goto L_0x00fa;
            case 4: goto L_0x00ef;
            case 5: goto L_0x00e7;
            case 6: goto L_0x00dc;
            case 7: goto L_0x00d4;
            case 8: goto L_0x00c9;
            case 9: goto L_0x00c1;
            case 10: goto L_0x00b6;
            case 11: goto L_0x00ae;
            case 12: goto L_0x00a9;
            case 13: goto L_0x00a0;
            case 14: goto L_0x009b;
            case 15: goto L_0x0092;
            case 16: goto L_0x0087;
            case 17: goto L_0x007e;
            case 18: goto L_0x0079;
            case 19: goto L_0x0058;
            case 20: goto L_0x0053;
            case 21: goto L_0x004a;
            case 22: goto L_0x0045;
            case 23: goto L_0x003c;
            case 24: goto L_0x0036;
            case 25: goto L_0x002b;
            case 26: goto L_0x0025;
            case 27: goto L_0x0018;
            case 28: goto L_0x000d;
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
        goto L_0x0112;
    L_0x0025:
        r2 = r1.getStrokePattern();
        goto L_0x00f3;
    L_0x002b:
        r2 = com.google.android.gms.maps.model.PatternItem.CREATOR;
        r2 = r3.createTypedArrayList(r2);
        r1.setStrokePattern(r2);
        goto L_0x0112;
    L_0x0036:
        r2 = r1.getStrokeJointType();
        goto L_0x00ba;
    L_0x003c:
        r2 = r3.readInt();
        r1.setStrokeJointType(r2);
        goto L_0x0112;
    L_0x0045:
        r2 = r1.isClickable();
        goto L_0x008b;
    L_0x004a:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setClickable(r2);
        goto L_0x0112;
    L_0x0053:
        r2 = r1.hashCodeRemote();
        goto L_0x00ba;
    L_0x0058:
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x0060;
    L_0x005e:
        r2 = 0;
        goto L_0x0074;
    L_0x0060:
        r3 = "com.google.android.gms.maps.model.internal.IPolygonDelegate";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.maps.model.internal.zzs;
        if (r5 == 0) goto L_0x006e;
    L_0x006a:
        r2 = r3;
        r2 = (com.google.android.gms.maps.model.internal.zzs) r2;
        goto L_0x0074;
    L_0x006e:
        r3 = new com.google.android.gms.maps.model.internal.zzu;
        r3.<init>(r2);
        r2 = r3;
    L_0x0074:
        r2 = r1.zzb(r2);
        goto L_0x008b;
    L_0x0079:
        r2 = r1.isGeodesic();
        goto L_0x008b;
    L_0x007e:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setGeodesic(r2);
        goto L_0x0112;
    L_0x0087:
        r2 = r1.isVisible();
    L_0x008b:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x0092:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setVisible(r2);
        goto L_0x0112;
    L_0x009b:
        r2 = r1.getZIndex();
        goto L_0x00cd;
    L_0x00a0:
        r2 = r3.readFloat();
        r1.setZIndex(r2);
        goto L_0x0112;
    L_0x00a9:
        r2 = r1.getFillColor();
        goto L_0x00ba;
    L_0x00ae:
        r2 = r3.readInt();
        r1.setFillColor(r2);
        goto L_0x0112;
    L_0x00b6:
        r2 = r1.getStrokeColor();
    L_0x00ba:
        r4.writeNoException();
        r4.writeInt(r2);
        return r0;
    L_0x00c1:
        r2 = r3.readInt();
        r1.setStrokeColor(r2);
        goto L_0x0112;
    L_0x00c9:
        r2 = r1.getStrokeWidth();
    L_0x00cd:
        r4.writeNoException();
        r4.writeFloat(r2);
        return r0;
    L_0x00d4:
        r2 = r3.readFloat();
        r1.setStrokeWidth(r2);
        goto L_0x0112;
    L_0x00dc:
        r2 = r1.getHoles();
        r4.writeNoException();
        r4.writeList(r2);
        return r0;
    L_0x00e7:
        r2 = com.google.android.gms.internal.zzef.zzb(r3);
        r1.setHoles(r2);
        goto L_0x0112;
    L_0x00ef:
        r2 = r1.getPoints();
    L_0x00f3:
        r4.writeNoException();
        r4.writeTypedList(r2);
        return r0;
    L_0x00fa:
        r2 = com.google.android.gms.maps.model.LatLng.CREATOR;
        r2 = r3.createTypedArrayList(r2);
        r1.setPoints(r2);
        goto L_0x0112;
    L_0x0104:
        r2 = r1.getId();
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
    L_0x010f:
        r1.remove();
    L_0x0112:
        r4.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.internal.zzt.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
