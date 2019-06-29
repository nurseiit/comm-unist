package com.google.android.gms.drive.events;

import android.os.Looper;
import com.google.android.gms.internal.zzbng;
import java.util.concurrent.CountDownLatch;

final class zzh extends Thread {
    private /* synthetic */ CountDownLatch zzaNh;
    private /* synthetic */ DriveEventService zzaNi;

    zzh(DriveEventService driveEventService, CountDownLatch countDownLatch) {
        this.zzaNi = driveEventService;
        this.zzaNh = countDownLatch;
    }

    public final void run() {
        try {
            Looper.prepare();
            this.zzaNi.zzaNf = new zza();
            this.zzaNi.zzaNg = false;
            this.zzaNh.countDown();
            zzbng.zzx("DriveEventService", "Bound and starting loop");
            Looper.loop();
            zzbng.zzx("DriveEventService", "Finished loop");
        } finally {
            if (this.zzaNi.zzaNe != null) {
                this.zzaNi.zzaNe.countDown();
            }
        }
    }
}
