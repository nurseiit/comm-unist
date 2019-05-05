package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement.zza;
import com.google.android.gms.measurement.AppMeasurement.zzb;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public final class zzchz extends zzchj {
    protected zzcic zzbtE;
    private volatile zzb zzbtF;
    private zzb zzbtG;
    private long zzbtH;
    private final Map<Activity, zzcic> zzbtI = new ArrayMap();
    private final CopyOnWriteArrayList<zza> zzbtJ = new CopyOnWriteArrayList();
    private boolean zzbtK;
    private zzb zzbtL;
    private String zzbtM;

    public zzchz(zzcgl zzcgl) {
        super(zzcgl);
    }

    @MainThread
    private final void zza(Activity activity, zzcic zzcic, boolean z) {
        zzb zzb = null;
        zzb zzb2 = this.zzbtF != null ? this.zzbtF : (this.zzbtG == null || Math.abs(super.zzkq().elapsedRealtime() - this.zzbtH) >= 1000) ? null : this.zzbtG;
        if (zzb2 != null) {
            zzb = new zzb(zzb2);
        }
        int i = 1;
        this.zzbtK = true;
        try {
            Iterator it = this.zzbtJ.iterator();
            while (it.hasNext()) {
                try {
                    i &= ((zza) it.next()).zza(zzb, zzcic);
                } catch (Exception e) {
                    super.zzwF().zzyx().zzj("onScreenChangeCallback threw exception", e);
                }
            }
        } catch (Exception e2) {
            super.zzwF().zzyx().zzj("onScreenChangeCallback loop threw exception", e2);
        } catch (Throwable th) {
            this.zzbtK = false;
        }
        this.zzbtK = false;
        zzb = this.zzbtF == null ? this.zzbtG : this.zzbtF;
        if (i != 0) {
            if (zzcic.zzbok == null) {
                zzcic.zzbok = zzen(activity.getClass().getCanonicalName());
            }
            zzcic zzcic2 = new zzcic(zzcic);
            this.zzbtG = this.zzbtF;
            this.zzbtH = super.zzkq().elapsedRealtime();
            this.zzbtF = zzcic2;
            super.zzwE().zzj(new zzcia(this, z, zzb, zzcic2));
        }
    }

    @WorkerThread
    private final void zza(@NonNull zzcic zzcic) {
        super.zzwr().zzJ(super.zzkq().elapsedRealtime());
        if (super.zzwD().zzap(zzcic.zzbtS)) {
            zzcic.zzbtS = false;
        }
    }

    public static void zza(zzb zzb, Bundle bundle) {
        if (bundle != null && zzb != null && !bundle.containsKey("_sc")) {
            if (zzb.zzboj != null) {
                bundle.putString("_sn", zzb.zzboj);
            }
            bundle.putString("_sc", zzb.zzbok);
            bundle.putLong("_si", zzb.zzbol);
        }
    }

    private static String zzen(String str) {
        String[] split = str.split("\\.");
        if (split.length == 0) {
            return str.substring(0, 36);
        }
        str = split[split.length - 1];
        if (str.length() > 36) {
            str = str.substring(0, 36);
        }
        return str;
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @MainThread
    public final void onActivityDestroyed(Activity activity) {
        this.zzbtI.remove(activity);
    }

    @MainThread
    public final void onActivityPaused(Activity activity) {
        zzcic zzq = zzq(activity);
        this.zzbtG = this.zzbtF;
        this.zzbtH = super.zzkq().elapsedRealtime();
        this.zzbtF = null;
        super.zzwE().zzj(new zzcib(this, zzq));
    }

    @MainThread
    public final void onActivityResumed(Activity activity) {
        zza(activity, zzq(activity), false);
        super.zzwr().zzwn();
    }

    @MainThread
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (bundle != null) {
            zzcic zzcic = (zzcic) this.zzbtI.get(activity);
            if (zzcic != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("id", zzcic.zzbol);
                bundle2.putString("name", zzcic.zzboj);
                bundle2.putString("referrer_name", zzcic.zzbok);
                bundle.putBundle("com.google.firebase.analytics.screen_service", bundle2);
            }
        }
    }

    @MainThread
    public final void registerOnScreenChangeCallback(@NonNull zza zza) {
        super.zzwp();
        if (zza == null) {
            super.zzwF().zzyz().log("Attempting to register null OnScreenChangeCallback");
            return;
        }
        this.zzbtJ.remove(zza);
        this.zzbtJ.add(zza);
    }

    @MainThread
    public final void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        if (activity == null) {
            super.zzwF().zzyz().log("setCurrentScreen must be called with a non-null activity");
            return;
        }
        super.zzwE();
        if (!zzcgg.zzS()) {
            super.zzwF().zzyz().log("setCurrentScreen must be called from the main thread");
        } else if (this.zzbtK) {
            super.zzwF().zzyz().log("Cannot call setCurrentScreen from onScreenChangeCallback");
        } else if (this.zzbtF == null) {
            super.zzwF().zzyz().log("setCurrentScreen cannot be called while no activity active");
        } else if (this.zzbtI.get(activity) == null) {
            super.zzwF().zzyz().log("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            Object str22;
            if (str22 == null) {
                str22 = zzen(activity.getClass().getCanonicalName());
            }
            boolean equals = this.zzbtF.zzbok.equals(str22);
            boolean zzR = zzcjl.zzR(this.zzbtF.zzboj, str);
            if (equals && zzR) {
                super.zzwF().zzyA().log("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > zzcem.zzxk())) {
                super.zzwF().zzyz().zzj("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str22 == null || (str22.length() > 0 && str22.length() <= zzcem.zzxk())) {
                super.zzwF().zzyD().zze("Setting current screen to name, class", str == null ? "null" : str, str22);
                zzcic zzcic = new zzcic(str, str22, super.zzwB().zzzs());
                this.zzbtI.put(activity, zzcic);
                zza(activity, zzcic, true);
            } else {
                super.zzwF().zzyz().zzj("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str22.length()));
            }
        }
    }

    @MainThread
    public final void unregisterOnScreenChangeCallback(@NonNull zza zza) {
        super.zzwp();
        this.zzbtJ.remove(zza);
    }

    @WorkerThread
    public final void zza(String str, zzb zzb) {
        super.zzjC();
        synchronized (this) {
            if (this.zzbtM == null || this.zzbtM.equals(str) || zzb != null) {
                this.zzbtM = str;
                this.zzbtL = zzb;
            }
        }
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
    }

    /* Access modifiers changed, original: final */
    @MainThread
    public final zzcic zzq(@NonNull Activity activity) {
        zzbo.zzu(activity);
        zzcic zzcic = (zzcic) this.zzbtI.get(activity);
        if (zzcic != null) {
            return zzcic;
        }
        zzcic zzcic2 = new zzcic(null, zzen(activity.getClass().getCanonicalName()), super.zzwB().zzzs());
        this.zzbtI.put(activity, zzcic2);
        return zzcic2;
    }

    public final /* bridge */ /* synthetic */ zzcfj zzwA() {
        return super.zzwA();
    }

    public final /* bridge */ /* synthetic */ zzcjl zzwB() {
        return super.zzwB();
    }

    public final /* bridge */ /* synthetic */ zzcgf zzwC() {
        return super.zzwC();
    }

    public final /* bridge */ /* synthetic */ zzcja zzwD() {
        return super.zzwD();
    }

    public final /* bridge */ /* synthetic */ zzcgg zzwE() {
        return super.zzwE();
    }

    public final /* bridge */ /* synthetic */ zzcfl zzwF() {
        return super.zzwF();
    }

    public final /* bridge */ /* synthetic */ zzcfw zzwG() {
        return super.zzwG();
    }

    public final /* bridge */ /* synthetic */ zzcem zzwH() {
        return super.zzwH();
    }

    public final /* bridge */ /* synthetic */ void zzwo() {
        super.zzwo();
    }

    public final /* bridge */ /* synthetic */ void zzwp() {
        super.zzwp();
    }

    public final /* bridge */ /* synthetic */ void zzwq() {
        super.zzwq();
    }

    public final /* bridge */ /* synthetic */ zzcec zzwr() {
        return super.zzwr();
    }

    public final /* bridge */ /* synthetic */ zzcej zzws() {
        return super.zzws();
    }

    public final /* bridge */ /* synthetic */ zzchl zzwt() {
        return super.zzwt();
    }

    public final /* bridge */ /* synthetic */ zzcfg zzwu() {
        return super.zzwu();
    }

    public final /* bridge */ /* synthetic */ zzcet zzwv() {
        return super.zzwv();
    }

    public final /* bridge */ /* synthetic */ zzcid zzww() {
        return super.zzww();
    }

    public final /* bridge */ /* synthetic */ zzchz zzwx() {
        return super.zzwx();
    }

    public final /* bridge */ /* synthetic */ zzcfh zzwy() {
        return super.zzwy();
    }

    public final /* bridge */ /* synthetic */ zzcen zzwz() {
        return super.zzwz();
    }

    @WorkerThread
    public final zzcic zzzh() {
        zzkD();
        super.zzjC();
        return this.zzbtE;
    }

    public final zzb zzzi() {
        super.zzwp();
        zzb zzb = this.zzbtF;
        return zzb == null ? null : new zzb(zzb);
    }
}
