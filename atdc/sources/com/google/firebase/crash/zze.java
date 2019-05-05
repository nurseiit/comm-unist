package com.google.firebase.crash;

import android.util.Log;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.mh;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.ml;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class zze implements Runnable {
    private /* synthetic */ zzc zzbYd;
    private /* synthetic */ Future zzbYe;
    private /* synthetic */ long zzbYf = 10000;
    private /* synthetic */ zzf zzbYg;

    zze(zzc zzc, Future future, long j, zzf zzf) {
        this.zzbYd = zzc;
        this.zzbYe = future;
        this.zzbYg = zzf;
    }

    public final void run() {
        mj mjVar;
        try {
            mjVar = (mj) this.zzbYe.get(this.zzbYf, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Log.e("FirebaseCrash", "Failed to initialize crash reporting", e);
            this.zzbYe.cancel(true);
            mjVar = null;
        }
        if (mjVar == null) {
            this.zzbYg.zzFh();
            return;
        }
        String valueOf;
        try {
            FirebaseOptions options = this.zzbYd.zzbVZ.getOptions();
            mjVar.zza(zzn.zzw(this.zzbYd.mContext), new mh(options.getApplicationId(), options.getApiKey()));
            if (this.zzbYd.zzbYc == null) {
                this.zzbYd.zzbYc = FirebaseInstanceId.getInstance().getId();
            }
            mjVar.zzgz(this.zzbYd.zzbYc);
            valueOf = String.valueOf(ml.zzFj());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 36);
            stringBuilder.append("FirebaseCrash reporting initialized ");
            stringBuilder.append(valueOf);
            Log.i("FirebaseCrash", stringBuilder.toString());
            this.zzbYg.zzc(mjVar);
        } catch (Exception e2) {
            String str = "FirebaseCrash";
            valueOf = "Failed to initialize crash reporting: ";
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e(str, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            zzg.zza(this.zzbYd.mContext, e2);
            this.zzbYg.zzFh();
        }
    }
}
