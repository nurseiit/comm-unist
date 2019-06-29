package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.google.android.gms.internal.zzajc;

final class zzbo implements OnTouchListener {
    private /* synthetic */ zzbm zzvf;

    zzbo(zzbm zzbm) {
        this.zzvf = zzbm;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.zzvf.zzvd != null) {
            try {
                this.zzvf.zzvd.zza(motionEvent);
            } catch (RemoteException e) {
                zzajc.zzc("Unable to process ad data", e);
            }
        }
        return false;
    }
}
