package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.hardware.display.DisplayManager;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

@TargetApi(19)
public final class zzazc extends zzaza {
    private final zzazf zzaza;
    private /* synthetic */ zzazb zzazb;

    public zzazc(zzazb zzazb, zzazf zzazf) {
        this.zzazb = zzazb;
        super(zzazb.zzayZ);
        this.zzaza = zzazf;
    }

    public final void onError(int i) throws RemoteException {
        zzayw.zzapq.zzb("onError: %d", Integer.valueOf(i));
        this.zzazb.zzayZ.zzoP();
        this.zzazb.setResult(new zzaze(Status.zzaBo));
    }

    public final void zza(int i, int i2, Surface surface) {
        zzazb zzazb;
        Result zzaze;
        zzayw.zzapq.zzb("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) this.zzaza.getContext().getSystemService("display");
        if (displayManager == null) {
            zzayw.zzapq.zzc("Unable to get the display manager", new Object[0]);
            zzazb = this.zzazb;
            zzaze = new zzaze(Status.zzaBo);
        } else {
            this.zzazb.zzayZ.zzoP();
            this.zzazb.zzayZ.zzayX = displayManager.createVirtualDisplay("private_display", i, i2, ((i < i2 ? i : i2) * 320) / 1080, surface, 2);
            if (this.zzazb.zzayZ.zzayX == null) {
                zzayw.zzapq.zzc("Unable to create virtual display", new Object[0]);
                zzazb = this.zzazb;
                zzaze = new zzaze(Status.zzaBo);
            } else if (this.zzazb.zzayZ.zzayX.getDisplay() == null) {
                zzayw.zzapq.zzc("Virtual display does not have a display", new Object[0]);
                zzazb = this.zzazb;
                zzaze = new zzaze(Status.zzaBo);
            } else {
                try {
                    ((zzazj) this.zzaza.zzrf()).zza(this, this.zzazb.zzayZ.zzayX.getDisplay().getDisplayId());
                    return;
                } catch (RemoteException | IllegalStateException unused) {
                    zzayw.zzapq.zzc("Unable to provision the route's new virtual Display", new Object[0]);
                    zzazb = this.zzazb;
                    zzaze = new zzaze(Status.zzaBo);
                }
            }
        }
        zzazb.setResult(zzaze);
    }

    public final void zzoR() {
        zzayw.zzapq.zzb("onConnectedWithDisplay", new Object[0]);
        if (this.zzazb.zzayZ.zzayX == null) {
            zzayw.zzapq.zzc("There is no virtual display", new Object[0]);
            this.zzazb.setResult(new zzaze(Status.zzaBo));
            return;
        }
        Display display = this.zzazb.zzayZ.zzayX.getDisplay();
        if (display != null) {
            this.zzazb.setResult(new zzaze(display));
            return;
        }
        zzayw.zzapq.zzc("Virtual display no longer has a display", new Object[0]);
        this.zzazb.setResult(new zzaze(Status.zzaBo));
    }
}
