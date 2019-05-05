package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzee;

public interface zzk extends IInterface {

    public static abstract class zza extends zzee implements zzk {
        public static zzk zzA(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastContext");
            return queryLocalInterface instanceof zzk ? (zzk) queryLocalInterface : new zzl(iBinder);
        }

        /* JADX WARNING: Missing block: B:11:0x002e, code skipped:
            r4.writeNoException();
     */
        /* JADX WARNING: Missing block: B:12:0x0031, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:15:0x003b, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
        /* JADX WARNING: Missing block: B:16:0x0041, code skipped:
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
            r5 = 0;
            switch(r2) {
                case 1: goto L_0x0089;
                case 2: goto L_0x007e;
                case 3: goto L_0x0060;
                case 4: goto L_0x0042;
                case 5: goto L_0x0037;
                case 6: goto L_0x0032;
                case 7: goto L_0x002b;
                case 8: goto L_0x001f;
                case 9: goto L_0x0013;
                case 10: goto L_0x000e;
                default: goto L_0x000c;
            };
        L_0x000c:
            r2 = 0;
            return r2;
        L_0x000e:
            r2 = r1.zznu();
            goto L_0x003b;
        L_0x0013:
            r2 = r3.readStrongBinder();
            r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
            r1.zzy(r2);
            goto L_0x002e;
        L_0x001f:
            r2 = r3.readStrongBinder();
            r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
            r1.zzx(r2);
            goto L_0x002e;
        L_0x002b:
            r1.destroy();
        L_0x002e:
            r4.writeNoException();
            return r0;
        L_0x0032:
            r2 = r1.zznt();
            goto L_0x003b;
        L_0x0037:
            r2 = r1.zzns();
        L_0x003b:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
            return r0;
        L_0x0042:
            r2 = r3.readStrongBinder();
            if (r2 != 0) goto L_0x0049;
        L_0x0048:
            goto L_0x005c;
        L_0x0049:
            r3 = "com.google.android.gms.cast.framework.IAppVisibilityListener";
            r3 = r2.queryLocalInterface(r3);
            r5 = r3 instanceof com.google.android.gms.cast.framework.zzf;
            if (r5 == 0) goto L_0x0057;
        L_0x0053:
            r5 = r3;
            r5 = (com.google.android.gms.cast.framework.zzf) r5;
            goto L_0x005c;
        L_0x0057:
            r5 = new com.google.android.gms.cast.framework.zzh;
            r5.<init>(r2);
        L_0x005c:
            r1.zzb(r5);
            goto L_0x002e;
        L_0x0060:
            r2 = r3.readStrongBinder();
            if (r2 != 0) goto L_0x0067;
        L_0x0066:
            goto L_0x007a;
        L_0x0067:
            r3 = "com.google.android.gms.cast.framework.IAppVisibilityListener";
            r3 = r2.queryLocalInterface(r3);
            r5 = r3 instanceof com.google.android.gms.cast.framework.zzf;
            if (r5 == 0) goto L_0x0075;
        L_0x0071:
            r5 = r3;
            r5 = (com.google.android.gms.cast.framework.zzf) r5;
            goto L_0x007a;
        L_0x0075:
            r5 = new com.google.android.gms.cast.framework.zzh;
            r5.<init>(r2);
        L_0x007a:
            r1.zza(r5);
            goto L_0x002e;
        L_0x007e:
            r2 = r1.isAppVisible();
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
            return r0;
        L_0x0089:
            r2 = r1.zznr();
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zzb(r4, r2);
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.zzk$zza.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    void destroy() throws RemoteException;

    boolean isAppVisible() throws RemoteException;

    void zza(zzf zzf) throws RemoteException;

    void zzb(zzf zzf) throws RemoteException;

    Bundle zznr() throws RemoteException;

    zzw zzns() throws RemoteException;

    zzq zznt() throws RemoteException;

    IObjectWrapper zznu() throws RemoteException;

    void zzx(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzy(IObjectWrapper iObjectWrapper) throws RemoteException;
}
