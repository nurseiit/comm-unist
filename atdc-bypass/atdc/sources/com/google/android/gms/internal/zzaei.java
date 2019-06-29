package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;

final class zzaei implements Runnable {
    private /* synthetic */ zzaeg zzXf;
    private /* synthetic */ zzajm zzXg;

    zzaei(zzaeg zzaeg, zzajm zzajm) {
        this.zzXf = zzaeg;
        this.zzXg = zzajm;
    }

    public final void run() {
        try {
            this.zzXf.zzi((Map) this.zzXg.get());
            if (this.zzXf.zzXa) {
                synchronized (this.zzXf.mLock) {
                    this.zzXf.zzWX.zzcsJ = Integer.valueOf(9);
                }
            }
            this.zzXf.send();
        } catch (InterruptedException | ExecutionException | JSONException e) {
            String str = "Failed to get SafeBrowsing metadata";
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGe)).booleanValue()) {
                zzajc.zza(str, e);
            }
        }
    }
}
