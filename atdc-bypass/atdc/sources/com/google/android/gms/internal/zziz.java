package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.widget.FrameLayout;

@zzzn
public class zziz {
    private final Object mLock = new Object();
    private final zziq zzAA;
    private final zzip zzAB;
    private final zzli zzAC;
    private final zzqc zzAD;
    private final zzadh zzAE;
    private final zzww zzAF;
    private zzkh zzAz;

    @VisibleForTesting
    abstract class zza<T> {
        zza() {
        }

        @Nullable
        public abstract T zza(zzkh zzkh) throws RemoteException;

        @Nullable
        public abstract T zzdo() throws RemoteException;

        /* Access modifiers changed, original: protected|final */
        @Nullable
        public final T zzdp() {
            zzkh zza = zziz.this.zzdn();
            if (zza == null) {
                zzajc.zzaT("ClientApi class cannot be loaded.");
                return null;
            }
            try {
                return zza(zza);
            } catch (RemoteException e) {
                zzajc.zzc("Cannot invoke local loader using ClientApi class", e);
                return null;
            }
        }

        /* Access modifiers changed, original: protected|final */
        @Nullable
        public final T zzdq() {
            try {
                return zzdo();
            } catch (RemoteException e) {
                zzajc.zzc("Cannot invoke remote loader", e);
                return null;
            }
        }
    }

    public zziz(zziq zziq, zzip zzip, zzli zzli, zzqc zzqc, zzadh zzadh, zzww zzww) {
        this.zzAA = zziq;
        this.zzAB = zzip;
        this.zzAC = zzli;
        this.zzAD = zzqc;
        this.zzAE = zzadh;
        this.zzAF = zzww;
    }

    @VisibleForTesting
    static <T> T zza(Context context, boolean z, zza<T> zza) {
        T zzdp;
        if (!z) {
            zzji.zzds();
            if (!zzaiy.zzX(context)) {
                zzajc.zzaC("Google Play Services is not available");
                z = true;
            }
        }
        zzji.zzds();
        int zzQ = zzaiy.zzQ(context);
        zzji.zzds();
        if (zzQ > zzaiy.zzP(context)) {
            z = true;
        }
        if (z) {
            zzdp = zza.zzdp();
            if (zzdp == null) {
                return zza.zzdq();
            }
        }
        zzdp = zza.zzdq();
        if (zzdp == null) {
            zzdp = zza.zzdp();
        }
        return zzdp;
    }

    private static void zzb(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzji.zzds().zza(context, null, "gmob-apps", bundle, true);
    }

    @Nullable
    private static zzkh zzdm() {
        try {
            Object newInstance = zziz.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
            if (newInstance instanceof IBinder) {
                return zzki.asInterface((IBinder) newInstance);
            }
            zzajc.zzaT("ClientApi class is not an instance of IBinder");
            return null;
        } catch (Exception e) {
            zzajc.zzc("Failed to instantiate ClientApi class.", e);
            return null;
        }
    }

    @Nullable
    private final zzkh zzdn() {
        zzkh zzkh;
        synchronized (this.mLock) {
            if (this.zzAz == null) {
                this.zzAz = zzdm();
            }
            zzkh = this.zzAz;
        }
        return zzkh;
    }

    public final zzow zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzow) zza(context, false, new zzjf(this, frameLayout, frameLayout2, context));
    }

    public final zzju zzb(Context context, String str, zzuq zzuq) {
        return (zzju) zza(context, false, new zzjd(this, context, str, zzuq));
    }

    @Nullable
    public final zzwx zzb(Activity activity) {
        String str = "com.google.android.gms.ads.internal.overlay.useClientJar";
        Intent intent = activity.getIntent();
        boolean z = false;
        if (intent.hasExtra(str)) {
            z = intent.getBooleanExtra(str, false);
        } else {
            zzajc.e("useClientJar flag not found in activity intent extras.");
        }
        return (zzwx) zza((Context) activity, z, new zzjh(this, activity));
    }
}
