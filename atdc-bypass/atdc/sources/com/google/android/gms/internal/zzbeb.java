package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

public class zzbeb extends zzbba {
    private TaskCompletionSource<Void> zzalE = new TaskCompletionSource();

    private zzbeb(zzbdt zzbdt) {
        super(zzbdt);
        this.zzaEG.zza("GmsAvailabilityHelper", (zzbds) this);
    }

    public static zzbeb zzp(Activity activity) {
        zzbdt zzn = zzbds.zzn(activity);
        zzbeb zzbeb = (zzbeb) zzn.zza("GmsAvailabilityHelper", zzbeb.class);
        if (zzbeb == null) {
            return new zzbeb(zzn);
        }
        if (zzbeb.zzalE.getTask().isComplete()) {
            zzbeb.zzalE = new TaskCompletionSource();
        }
        return zzbeb;
    }

    public final Task<Void> getTask() {
        return this.zzalE.getTask();
    }

    public final void onDestroy() {
        super.onDestroy();
        this.zzalE.setException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(ConnectionResult connectionResult, int i) {
        this.zzalE.setException(zzb.zzx(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution())));
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzps() {
        int isGooglePlayServicesAvailable = this.zzaBd.isGooglePlayServicesAvailable(this.zzaEG.zzqF());
        if (isGooglePlayServicesAvailable == 0) {
            this.zzalE.setResult(null);
            return;
        }
        if (!this.zzalE.getTask().isComplete()) {
            zzb(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }
}
