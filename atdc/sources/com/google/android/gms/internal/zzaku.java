package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzaku implements Runnable {
    private /* synthetic */ zzaks zzacC;
    private /* synthetic */ int zzacD;
    private /* synthetic */ int zzacE;
    private /* synthetic */ boolean zzacF;
    private /* synthetic */ boolean zzacG;

    zzaku(zzaks zzaks, int i, int i2, boolean z, boolean z2) {
        this.zzacC = zzaks;
        this.zzacD = i;
        this.zzacE = i2;
        this.zzacF = z;
        this.zzacG = z2;
    }

    public final void run() {
        synchronized (this.zzacC.mLock) {
            boolean z = false;
            Object obj = this.zzacD != this.zzacE ? 1 : null;
            Object obj2 = (this.zzacC.zzacx || this.zzacE != 1) ? null : 1;
            Object obj3 = (obj == null || this.zzacE != 1) ? null : 1;
            Object obj4 = (obj == null || this.zzacE != 2) ? null : 1;
            obj = (obj == null || this.zzacE != 3) ? null : 1;
            Object obj5 = this.zzacF != this.zzacG ? 1 : null;
            zzaks zzaks = this.zzacC;
            if (this.zzacC.zzacx || obj2 != null) {
                z = true;
            }
            zzaks.zzacx = z;
            if (this.zzacC.zzacw == null) {
                return;
            }
            if (obj2 != null) {
                try {
                    this.zzacC.zzacw.onVideoStart();
                } catch (RemoteException e) {
                    zzajc.zzc("Unable to call onVideoStart()", e);
                }
            }
            if (obj3 != null) {
                try {
                    this.zzacC.zzacw.onVideoPlay();
                } catch (RemoteException e2) {
                    zzajc.zzc("Unable to call onVideoPlay()", e2);
                }
            }
            if (obj4 != null) {
                try {
                    this.zzacC.zzacw.onVideoPause();
                } catch (RemoteException e22) {
                    zzajc.zzc("Unable to call onVideoPause()", e22);
                }
            }
            if (obj != null) {
                try {
                    this.zzacC.zzacw.onVideoEnd();
                } catch (RemoteException e3) {
                    zzajc.zzc("Unable to call onVideoEnd()", e3);
                }
            }
            if (obj5 != null) {
                try {
                    this.zzacC.zzacw.onVideoMute(this.zzacG);
                } catch (RemoteException e32) {
                    zzajc.zzc("Unable to call onVideoMute()", e32);
                }
            }
        }
        return;
    }
}
