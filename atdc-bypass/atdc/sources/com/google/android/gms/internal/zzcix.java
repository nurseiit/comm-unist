package com.google.android.gms.internal;

import android.app.job.JobParameters;

final class zzcix implements Runnable {
    private /* synthetic */ zzcgl zzbrM;
    final /* synthetic */ zzcfl zzbrP;
    final /* synthetic */ Integer zzbun;
    final /* synthetic */ JobParameters zzbuo;
    final /* synthetic */ zzciw zzbup;

    zzcix(zzciw zzciw, zzcgl zzcgl, Integer num, zzcfl zzcfl, JobParameters jobParameters) {
        this.zzbup = zzciw;
        this.zzbrM = zzcgl;
        this.zzbun = num;
        this.zzbrP = zzcfl;
        this.zzbuo = jobParameters;
    }

    public final void run() {
        this.zzbrM.zzze();
        this.zzbrM.zzl(new zzciy(this));
        this.zzbrM.zzza();
    }
}
