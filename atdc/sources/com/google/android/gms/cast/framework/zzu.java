package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzee;

public interface zzu extends IInterface {

    public static abstract class zza extends zzee implements zzu {
        public static zzu zzD(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
            return queryLocalInterface instanceof zzu ? (zzu) queryLocalInterface : new zzv(iBinder);
        }

        /* JADX WARNING: Missing block: B:12:0x003c, code skipped:
            r4.writeNoException();
     */
        /* JADX WARNING: Missing block: B:13:0x003f, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:20:0x005d, code skipped:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
     */
        /* JADX WARNING: Missing block: B:21:0x0063, code skipped:
            return true;
     */
        /* JADX WARNING: Missing block: B:25:0x0072, code skipped:
            r4.writeNoException();
            r4.writeString(r2);
     */
        /* JADX WARNING: Missing block: B:26:0x0078, code skipped:
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
                case 1: goto L_0x0079;
                case 2: goto L_0x006e;
                case 3: goto L_0x0069;
                case 4: goto L_0x0064;
                case 5: goto L_0x0059;
                case 6: goto L_0x0054;
                case 7: goto L_0x004f;
                case 8: goto L_0x004a;
                case 9: goto L_0x0045;
                case 10: goto L_0x0040;
                case 11: goto L_0x0035;
                case 12: goto L_0x002d;
                case 13: goto L_0x0025;
                case 14: goto L_0x001d;
                case 15: goto L_0x0015;
                case 16: goto L_0x000d;
                default: goto L_0x000b;
            };
        L_0x000b:
            r2 = 0;
            return r2;
        L_0x000d:
            r2 = r3.readInt();
            r1.notifySessionSuspended(r2);
            goto L_0x003c;
        L_0x0015:
            r2 = r3.readInt();
            r1.notifyFailedToResumeSession(r2);
            goto L_0x003c;
        L_0x001d:
            r2 = com.google.android.gms.internal.zzef.zza(r3);
            r1.notifySessionResumed(r2);
            goto L_0x003c;
        L_0x0025:
            r2 = r3.readInt();
            r1.notifySessionEnded(r2);
            goto L_0x003c;
        L_0x002d:
            r2 = r3.readInt();
            r1.notifyFailedToStartSession(r2);
            goto L_0x003c;
        L_0x0035:
            r2 = r3.readString();
            r1.notifySessionStarted(r2);
        L_0x003c:
            r4.writeNoException();
            return r0;
        L_0x0040:
            r2 = r1.isSuspended();
            goto L_0x005d;
        L_0x0045:
            r2 = r1.isResuming();
            goto L_0x005d;
        L_0x004a:
            r2 = r1.isDisconnected();
            goto L_0x005d;
        L_0x004f:
            r2 = r1.isDisconnecting();
            goto L_0x005d;
        L_0x0054:
            r2 = r1.isConnecting();
            goto L_0x005d;
        L_0x0059:
            r2 = r1.isConnected();
        L_0x005d:
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
            return r0;
        L_0x0064:
            r2 = r1.zznx();
            goto L_0x0072;
        L_0x0069:
            r2 = r1.getSessionId();
            goto L_0x0072;
        L_0x006e:
            r2 = r1.getCategory();
        L_0x0072:
            r4.writeNoException();
            r4.writeString(r2);
            return r0;
        L_0x0079:
            r2 = r1.zznw();
            r4.writeNoException();
            com.google.android.gms.internal.zzef.zza(r4, r2);
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.zzu$zza.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    String getCategory() throws RemoteException;

    String getSessionId() throws RemoteException;

    boolean isConnected() throws RemoteException;

    boolean isConnecting() throws RemoteException;

    boolean isDisconnected() throws RemoteException;

    boolean isDisconnecting() throws RemoteException;

    boolean isResuming() throws RemoteException;

    boolean isSuspended() throws RemoteException;

    void notifyFailedToResumeSession(int i) throws RemoteException;

    void notifyFailedToStartSession(int i) throws RemoteException;

    void notifySessionEnded(int i) throws RemoteException;

    void notifySessionResumed(boolean z) throws RemoteException;

    void notifySessionStarted(String str) throws RemoteException;

    void notifySessionSuspended(int i) throws RemoteException;

    IObjectWrapper zznw() throws RemoteException;

    String zznx() throws RemoteException;
}
