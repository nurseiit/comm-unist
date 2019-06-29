package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;

public interface IPolylineDelegate extends IInterface {

    public static abstract class zza extends zzee implements IPolylineDelegate {
        public static IPolylineDelegate zzah(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
            return queryLocalInterface instanceof IPolylineDelegate ? (IPolylineDelegate) queryLocalInterface : new zzv(iBinder);
        }

        /* JADX WARNING: Missing block: B:16:0x005b, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zzb(r4, r2);
     */
        /* JADX WARNING: Missing block: B:17:0x0061, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:33:0x00b5, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
        /* JADX WARNING: Missing block: B:34:0x00bb, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:39:0x00d5, code skipped:
            r4.writeNoException();
            r4.writeInt(r2);
     */
        /* JADX WARNING: Missing block: B:40:0x00db, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:43:0x00e8, code skipped:
            r4.writeNoException();
            r4.writeFloat(r2);
     */
        /* JADX WARNING: Missing block: B:44:0x00ee, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:47:0x00fb, code skipped:
            r4.writeNoException();
            r4.writeTypedList(r2);
     */
        /* JADX WARNING: Missing block: B:48:0x0101, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:53:0x011a, code skipped:
            r4.writeNoException();
     */
        /* JADX WARNING: Missing block: B:54:0x011d, code skipped:
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
                case 1: goto L_0x0117;
                case 2: goto L_0x010c;
                case 3: goto L_0x0102;
                case 4: goto L_0x00f7;
                case 5: goto L_0x00ef;
                case 6: goto L_0x00e4;
                case 7: goto L_0x00dc;
                case 8: goto L_0x00d1;
                case 9: goto L_0x00c9;
                case 10: goto L_0x00c4;
                case 11: goto L_0x00bc;
                case 12: goto L_0x00b1;
                case 13: goto L_0x00a8;
                case 14: goto L_0x00a3;
                case 15: goto L_0x0082;
                case 16: goto L_0x007d;
                case 17: goto L_0x0074;
                case 18: goto L_0x006f;
                case 19: goto L_0x0062;
                case 20: goto L_0x0057;
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
            goto L_0x011a;
        L_0x0025:
            r2 = r1.getPattern();
            goto L_0x00fb;
        L_0x002b:
            r2 = com.google.android.gms.maps.model.PatternItem.CREATOR;
            r2 = r3.createTypedArrayList(r2);
            r1.setPattern(r2);
            goto L_0x011a;
        L_0x0036:
            r2 = r1.getJointType();
            goto L_0x00d5;
        L_0x003c:
            r2 = r3.readInt();
            r1.setJointType(r2);
            goto L_0x011a;
        L_0x0045:
            r2 = r1.getEndCap();
            goto L_0x005b;
        L_0x004a:
            r2 = com.google.android.gms.maps.model.Cap.CREATOR;
            r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
            r2 = (com.google.android.gms.maps.model.Cap) r2;
            r1.setEndCap(r2);
            goto L_0x011a;
        L_0x0057:
            r2 = r1.getStartCap();
        L_0x005b:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zzb(r4, r2);
            return r0;
        L_0x0062:
            r2 = com.google.android.gms.maps.model.Cap.CREATOR;
            r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
            r2 = (com.google.android.gms.maps.model.Cap) r2;
            r1.setStartCap(r2);
            goto L_0x011a;
        L_0x006f:
            r2 = r1.isClickable();
            goto L_0x00b5;
        L_0x0074:
            r2 = com.google.android.gms.internal.zzef.zza(r3);
            r1.setClickable(r2);
            goto L_0x011a;
        L_0x007d:
            r2 = r1.hashCodeRemote();
            goto L_0x00d5;
        L_0x0082:
            r2 = r3.readStrongBinder();
            if (r2 != 0) goto L_0x008a;
        L_0x0088:
            r2 = 0;
            goto L_0x009e;
        L_0x008a:
            r3 = "com.google.android.gms.maps.model.internal.IPolylineDelegate";
            r3 = r2.queryLocalInterface(r3);
            r5 = r3 instanceof com.google.android.gms.maps.model.internal.IPolylineDelegate;
            if (r5 == 0) goto L_0x0098;
        L_0x0094:
            r2 = r3;
            r2 = (com.google.android.gms.maps.model.internal.IPolylineDelegate) r2;
            goto L_0x009e;
        L_0x0098:
            r3 = new com.google.android.gms.maps.model.internal.zzv;
            r3.<init>(r2);
            r2 = r3;
        L_0x009e:
            r2 = r1.equalsRemote(r2);
            goto L_0x00b5;
        L_0x00a3:
            r2 = r1.isGeodesic();
            goto L_0x00b5;
        L_0x00a8:
            r2 = com.google.android.gms.internal.zzef.zza(r3);
            r1.setGeodesic(r2);
            goto L_0x011a;
        L_0x00b1:
            r2 = r1.isVisible();
        L_0x00b5:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
            return r0;
        L_0x00bc:
            r2 = com.google.android.gms.internal.zzef.zza(r3);
            r1.setVisible(r2);
            goto L_0x011a;
        L_0x00c4:
            r2 = r1.getZIndex();
            goto L_0x00e8;
        L_0x00c9:
            r2 = r3.readFloat();
            r1.setZIndex(r2);
            goto L_0x011a;
        L_0x00d1:
            r2 = r1.getColor();
        L_0x00d5:
            r4.writeNoException();
            r4.writeInt(r2);
            return r0;
        L_0x00dc:
            r2 = r3.readInt();
            r1.setColor(r2);
            goto L_0x011a;
        L_0x00e4:
            r2 = r1.getWidth();
        L_0x00e8:
            r4.writeNoException();
            r4.writeFloat(r2);
            return r0;
        L_0x00ef:
            r2 = r3.readFloat();
            r1.setWidth(r2);
            goto L_0x011a;
        L_0x00f7:
            r2 = r1.getPoints();
        L_0x00fb:
            r4.writeNoException();
            r4.writeTypedList(r2);
            return r0;
        L_0x0102:
            r2 = com.google.android.gms.maps.model.LatLng.CREATOR;
            r2 = r3.createTypedArrayList(r2);
            r1.setPoints(r2);
            goto L_0x011a;
        L_0x010c:
            r2 = r1.getId();
            r4.writeNoException();
            r4.writeString(r2);
            return r0;
        L_0x0117:
            r1.remove();
        L_0x011a:
            r4.writeNoException();
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.internal.IPolylineDelegate$zza.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    boolean equalsRemote(IPolylineDelegate iPolylineDelegate) throws RemoteException;

    int getColor() throws RemoteException;

    Cap getEndCap() throws RemoteException;

    String getId() throws RemoteException;

    int getJointType() throws RemoteException;

    List<PatternItem> getPattern() throws RemoteException;

    List<LatLng> getPoints() throws RemoteException;

    Cap getStartCap() throws RemoteException;

    IObjectWrapper getTag() throws RemoteException;

    float getWidth() throws RemoteException;

    float getZIndex() throws RemoteException;

    int hashCodeRemote() throws RemoteException;

    boolean isClickable() throws RemoteException;

    boolean isGeodesic() throws RemoteException;

    boolean isVisible() throws RemoteException;

    void remove() throws RemoteException;

    void setClickable(boolean z) throws RemoteException;

    void setColor(int i) throws RemoteException;

    void setEndCap(Cap cap) throws RemoteException;

    void setGeodesic(boolean z) throws RemoteException;

    void setJointType(int i) throws RemoteException;

    void setPattern(List<PatternItem> list) throws RemoteException;

    void setPoints(List<LatLng> list) throws RemoteException;

    void setStartCap(Cap cap) throws RemoteException;

    void setTag(IObjectWrapper iObjectWrapper) throws RemoteException;

    void setVisible(boolean z) throws RemoteException;

    void setWidth(float f) throws RemoteException;

    void setZIndex(float f) throws RemoteException;
}
