package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.zzbb;
import com.google.android.gms.ads.internal.zzbs;
import java.lang.ref.WeakReference;

@zzzn
public final class zzyx {
    private final Context mContext;
    private final Object mLock = new Object();
    private final zzcu zzIc;
    private final zzafg zzQQ;
    private OnGlobalLayoutListener zzRX;
    private OnScrollChangedListener zzRY;
    private final zzbb zzRm;
    private final zznb zzsK;
    private int zzwv = -1;
    private int zzww = -1;
    private zzair zzwx;

    public zzyx(Context context, zzcu zzcu, zzafg zzafg, zznb zznb, zzbb zzbb) {
        this.mContext = context;
        this.zzIc = zzcu;
        this.zzQQ = zzafg;
        this.zzsK = zznb;
        this.zzRm = zzbb;
        this.zzwx = new zzair(200);
    }

    private final OnGlobalLayoutListener zza(WeakReference<zzaka> weakReference) {
        if (this.zzRX == null) {
            this.zzRX = new zzzd(this, weakReference);
        }
        return this.zzRX;
    }

    private final void zza(WeakReference<zzaka> weakReference, boolean z) {
        if (weakReference != null) {
            zzaka zzaka = (zzaka) weakReference.get();
            if (zzaka != null && zzaka.getView() != null) {
                if (!z || this.zzwx.tryAcquire()) {
                    int[] iArr = new int[2];
                    zzaka.getView().getLocationOnScreen(iArr);
                    zzji.zzds();
                    int zzd = zzaiy.zzd(this.mContext, iArr[0]);
                    zzji.zzds();
                    int zzd2 = zzaiy.zzd(this.mContext, iArr[1]);
                    synchronized (this.mLock) {
                        if (!(this.zzwv == zzd && this.zzww == zzd2)) {
                            this.zzwv = zzd;
                            this.zzww = zzd2;
                            zzaka.zziw().zza(this.zzwv, this.zzww, z ^ 1);
                        }
                    }
                }
            }
        }
    }

    private final OnScrollChangedListener zzb(WeakReference<zzaka> weakReference) {
        if (this.zzRY == null) {
            this.zzRY = new zzze(this, weakReference);
        }
        return this.zzRY;
    }

    private final void zzi(zzaka zzaka) {
        zzakb zziw = zzaka.zziw();
        zziw.zza("/video", zzqn.zzJg);
        zziw.zza("/videoMeta", zzqn.zzJh);
        zziw.zza("/precache", zzqn.zzJj);
        zziw.zza("/delayPageLoaded", zzqn.zzJm);
        zziw.zza("/instrument", zzqn.zzJk);
        zziw.zza("/log", zzqn.zzJb);
        zziw.zza("/videoClicked", zzqn.zzJc);
        zziw.zza("/trackActiveViewUnit", new zzzb(this));
        zziw.zza("/untrackActiveViewUnit", new zzzc(this));
    }

    /* Access modifiers changed, original: final */
    public final zzaka zzgz() throws zzakm {
        return zzbs.zzbA().zza(this.mContext, zziv.zzg(this.mContext), false, false, this.zzIc, this.zzQQ.zzUj.zzvT, this.zzsK, null, this.zzRm.zzak(), this.zzQQ.zzXX);
    }
}
