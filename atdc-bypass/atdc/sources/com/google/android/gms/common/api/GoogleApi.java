package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbas;
import com.google.android.gms.internal.zzbat;
import com.google.android.gms.internal.zzbay;
import com.google.android.gms.internal.zzbbw;
import com.google.android.gms.internal.zzbdb;
import com.google.android.gms.internal.zzbdd;
import com.google.android.gms.internal.zzbdj;
import com.google.android.gms.internal.zzbej;
import com.google.android.gms.internal.zzbem;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

public class GoogleApi<O extends ApiOptions> {
    private final Context mContext;
    private final int mId;
    private final O zzaAJ;
    private final zzbat<O> zzaAK;
    private final GoogleApiClient zzaAL;
    private final zzbem zzaAM;
    protected final zzbdb zzaAN;
    private final Account zzajb;
    private final Api<O> zzayW;
    private final Looper zzrM;

    public static class zza {
        public static final zza zzaAO = new zzd().zzpj();
        public final Account account;
        public final zzbem zzaAP;
        public final Looper zzaAQ;

        private zza(zzbem zzbem, Account account, Looper looper) {
            this.zzaAP = zzbem;
            this.account = account;
            this.zzaAQ = looper;
        }

        /* synthetic */ zza(zzbem zzbem, Account account, Looper looper, zzc zzc) {
            this(zzbem, null, looper);
        }
    }

    @MainThread
    private GoogleApi(@NonNull Activity activity, Api<O> api, O o, zza zza) {
        zzbo.zzb((Object) activity, (Object) "Null activity is not permitted.");
        zzbo.zzb((Object) api, (Object) "Api must not be null.");
        zzbo.zzb((Object) zza, (Object) "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.mContext = activity.getApplicationContext();
        this.zzayW = api;
        this.zzaAJ = null;
        this.zzrM = zza.zzaAQ;
        this.zzaAK = zzbat.zza(this.zzayW, this.zzaAJ);
        this.zzaAL = new zzbdj(this);
        this.zzaAN = zzbdb.zzay(this.mContext);
        this.mId = this.zzaAN.zzqm();
        this.zzaAM = zza.zzaAP;
        this.zzajb = zza.account;
        zzbbw.zza(activity, this.zzaAN, this.zzaAK);
        this.zzaAN.zzb(this);
    }

    @Deprecated
    public GoogleApi(@NonNull Activity activity, Api<O> api, O o, zzbem zzbem) {
        this(activity, (Api) api, null, new zzd().zza(zzbem).zza(activity.getMainLooper()).zzpj());
    }

    protected GoogleApi(@NonNull Context context, Api<O> api, Looper looper) {
        zzbo.zzb((Object) context, (Object) "Null context is not permitted.");
        zzbo.zzb((Object) api, (Object) "Api must not be null.");
        zzbo.zzb((Object) looper, (Object) "Looper must not be null.");
        this.mContext = context.getApplicationContext();
        this.zzayW = api;
        this.zzaAJ = null;
        this.zzrM = looper;
        this.zzaAK = zzbat.zzb(api);
        this.zzaAL = new zzbdj(this);
        this.zzaAN = zzbdb.zzay(this.mContext);
        this.mId = this.zzaAN.zzqm();
        this.zzaAM = new zzbas();
        this.zzajb = null;
    }

    @Deprecated
    public GoogleApi(@NonNull Context context, Api<O> api, O o, Looper looper, zzbem zzbem) {
        this(context, (Api) api, null, new zzd().zza(looper).zza(zzbem).zzpj());
    }

    public GoogleApi(@NonNull Context context, Api<O> api, O o, zza zza) {
        zzbo.zzb((Object) context, (Object) "Null context is not permitted.");
        zzbo.zzb((Object) api, (Object) "Api must not be null.");
        zzbo.zzb((Object) zza, (Object) "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.mContext = context.getApplicationContext();
        this.zzayW = api;
        this.zzaAJ = o;
        this.zzrM = zza.zzaAQ;
        this.zzaAK = zzbat.zza(this.zzayW, this.zzaAJ);
        this.zzaAL = new zzbdj(this);
        this.zzaAN = zzbdb.zzay(this.mContext);
        this.mId = this.zzaAN.zzqm();
        this.zzaAM = zza.zzaAP;
        this.zzajb = zza.account;
        this.zzaAN.zzb(this);
    }

    @Deprecated
    public GoogleApi(@NonNull Context context, Api<O> api, O o, zzbem zzbem) {
        this(context, (Api) api, (ApiOptions) o, new zzd().zza(zzbem).zzpj());
    }

    private final <A extends zzb, T extends zzbay<? extends Result, A>> T zza(int i, @NonNull T t) {
        t.zzpC();
        this.zzaAN.zza(this, i, (zzbay) t);
        return t;
    }

    private final <TResult, A extends zzb> Task<TResult> zza(int i, @NonNull zzbeq<A, TResult> zzbeq) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zzaAN.zza(this, i, zzbeq, taskCompletionSource, this.zzaAM);
        return taskCompletionSource.getTask();
    }

    public final Context getApplicationContext() {
        return this.mContext;
    }

    public final int getInstanceId() {
        return this.mId;
    }

    public final Looper getLooper() {
        return this.zzrM;
    }

    @WorkerThread
    public zze zza(Looper looper, zzbdd<O> zzbdd) {
        return this.zzayW.zzpc().zza(this.mContext, looper, new Builder(this.mContext).zze(this.zzajb).zzpn(), this.zzaAJ, zzbdd, zzbdd);
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zza(@NonNull T t) {
        return zza(0, (zzbay) t);
    }

    public zzbej zza(Context context, Handler handler) {
        return new zzbej(context, handler);
    }

    public final <TResult, A extends zzb> Task<TResult> zza(zzbeq<A, TResult> zzbeq) {
        return zza(0, (zzbeq) zzbeq);
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zzb(@NonNull T t) {
        return zza(1, (zzbay) t);
    }

    public final <TResult, A extends zzb> Task<TResult> zzb(zzbeq<A, TResult> zzbeq) {
        return zza(1, (zzbeq) zzbeq);
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zzc(@NonNull T t) {
        return zza(2, (zzbay) t);
    }

    public final Api<O> zzpg() {
        return this.zzayW;
    }

    public final zzbat<O> zzph() {
        return this.zzaAK;
    }

    public final GoogleApiClient zzpi() {
        return this.zzaAL;
    }
}
