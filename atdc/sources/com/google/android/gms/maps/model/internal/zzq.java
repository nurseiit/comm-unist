package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zzq extends zzee implements zzp {
    public static zzp zzaf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return queryLocalInterface instanceof zzp ? (zzp) queryLocalInterface : new zzr(iBinder);
    }

    /* JADX WARNING: Missing block: B:15:0x0052, code skipped:
            r4.writeNoException();
            r4.writeFloat(r2);
     */
    /* JADX WARNING: Missing block: B:16:0x0058, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:38:0x00d5, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
    /* JADX WARNING: Missing block: B:39:0x00db, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:49:0x0119, code skipped:
            r4.writeNoException();
            r4.writeString(r2);
     */
    /* JADX WARNING: Missing block: B:50:0x011f, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:52:0x0123, code skipped:
            r4.writeNoException();
     */
    /* JADX WARNING: Missing block: B:53:0x0126, code skipped:
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
            case 1: goto L_0x0120;
            case 2: goto L_0x0115;
            case 3: goto L_0x0109;
            case 4: goto L_0x00fe;
            case 5: goto L_0x00f6;
            case 6: goto L_0x00f1;
            case 7: goto L_0x00e9;
            case 8: goto L_0x00e4;
            case 9: goto L_0x00dc;
            case 10: goto L_0x00d1;
            case 11: goto L_0x00cd;
            case 12: goto L_0x00c9;
            case 13: goto L_0x00c4;
            case 14: goto L_0x00bc;
            case 15: goto L_0x00b7;
            case 16: goto L_0x0096;
            case 17: goto L_0x008b;
            case 18: goto L_0x007e;
            case 19: goto L_0x0071;
            case 20: goto L_0x0068;
            case 21: goto L_0x0062;
            case 22: goto L_0x0059;
            case 23: goto L_0x004e;
            case 24: goto L_0x0041;
            case 25: goto L_0x0038;
            case 26: goto L_0x0033;
            case 27: goto L_0x002a;
            case 28: goto L_0x0025;
            case 29: goto L_0x0018;
            case 30: goto L_0x000d;
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
        goto L_0x0123;
    L_0x0025:
        r2 = r1.getZIndex();
        goto L_0x0052;
    L_0x002a:
        r2 = r3.readFloat();
        r1.setZIndex(r2);
        goto L_0x0123;
    L_0x0033:
        r2 = r1.getAlpha();
        goto L_0x0052;
    L_0x0038:
        r2 = r3.readFloat();
        r1.setAlpha(r2);
        goto L_0x0123;
    L_0x0041:
        r2 = r3.readFloat();
        r3 = r3.readFloat();
        r1.setInfoWindowAnchor(r2, r3);
        goto L_0x0123;
    L_0x004e:
        r2 = r1.getRotation();
    L_0x0052:
        r4.writeNoException();
        r4.writeFloat(r2);
        return r0;
    L_0x0059:
        r2 = r3.readFloat();
        r1.setRotation(r2);
        goto L_0x0123;
    L_0x0062:
        r2 = r1.isFlat();
        goto L_0x00d5;
    L_0x0068:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setFlat(r2);
        goto L_0x0123;
    L_0x0071:
        r2 = r3.readFloat();
        r3 = r3.readFloat();
        r1.setAnchor(r2, r3);
        goto L_0x0123;
    L_0x007e:
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzK(r2);
        goto L_0x0123;
    L_0x008b:
        r2 = r1.hashCodeRemote();
        r4.writeNoException();
        r4.writeInt(r2);
        return r0;
    L_0x0096:
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x009e;
    L_0x009c:
        r2 = 0;
        goto L_0x00b2;
    L_0x009e:
        r3 = "com.google.android.gms.maps.model.internal.IMarkerDelegate";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.maps.model.internal.zzp;
        if (r5 == 0) goto L_0x00ac;
    L_0x00a8:
        r2 = r3;
        r2 = (com.google.android.gms.maps.model.internal.zzp) r2;
        goto L_0x00b2;
    L_0x00ac:
        r3 = new com.google.android.gms.maps.model.internal.zzr;
        r3.<init>(r2);
        r2 = r3;
    L_0x00b2:
        r2 = r1.zzj(r2);
        goto L_0x00d5;
    L_0x00b7:
        r2 = r1.isVisible();
        goto L_0x00d5;
    L_0x00bc:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setVisible(r2);
        goto L_0x0123;
    L_0x00c4:
        r2 = r1.isInfoWindowShown();
        goto L_0x00d5;
    L_0x00c9:
        r1.hideInfoWindow();
        goto L_0x0123;
    L_0x00cd:
        r1.showInfoWindow();
        goto L_0x0123;
    L_0x00d1:
        r2 = r1.isDraggable();
    L_0x00d5:
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
    L_0x00dc:
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setDraggable(r2);
        goto L_0x0123;
    L_0x00e4:
        r2 = r1.getSnippet();
        goto L_0x0119;
    L_0x00e9:
        r2 = r3.readString();
        r1.setSnippet(r2);
        goto L_0x0123;
    L_0x00f1:
        r2 = r1.getTitle();
        goto L_0x0119;
    L_0x00f6:
        r2 = r3.readString();
        r1.setTitle(r2);
        goto L_0x0123;
    L_0x00fe:
        r2 = r1.getPosition();
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zzb(r4, r2);
        return r0;
    L_0x0109:
        r2 = com.google.android.gms.maps.model.LatLng.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (com.google.android.gms.maps.model.LatLng) r2;
        r1.setPosition(r2);
        goto L_0x0123;
    L_0x0115:
        r2 = r1.getId();
    L_0x0119:
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
    L_0x0120:
        r1.remove();
    L_0x0123:
        r4.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.internal.zzq.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
