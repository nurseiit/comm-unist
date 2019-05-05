package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public abstract class yu implements sd {
    private ScheduledThreadPoolExecutor zzcju = new yv(this, 1, new yw(this, null));

    public yu() {
        this.zzcju.setKeepAliveTime(3, TimeUnit.SECONDS);
    }

    public static String zzh(Throwable th) {
        if (th instanceof OutOfMemoryError) {
            return "Firebase Database encountered an OutOfMemoryError. You may need to reduce the amount of data you are syncing to the client (e.g. by using queries or syncing a deeper path). See https://firebase.google.com/docs/database/ios/structure-data#best_practices_for_data_structure and https://firebase.google.com/docs/database/android/retrieve-data#filtering_data";
        }
        if (th instanceof DatabaseException) {
            return "";
        }
        String valueOf = String.valueOf(FirebaseDatabase.getSdkVersion());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 104);
        stringBuilder.append("Uncaught exception in Firebase Database runloop (");
        stringBuilder.append(valueOf);
        stringBuilder.append("). Please report to firebase-database-client@google.com");
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: protected */
    public ThreadFactory getThreadFactory() {
        return Executors.defaultThreadFactory();
    }

    public final void restart() {
        this.zzcju.setCorePoolSize(1);
    }

    public final void shutdown() {
        this.zzcju.setCorePoolSize(0);
    }

    public final ScheduledExecutorService zzFV() {
        return this.zzcju;
    }

    /* Access modifiers changed, original: protected */
    public ti zzGY() {
        return ti.zzcfh;
    }

    public abstract void zzf(Throwable th);

    public final void zzq(Runnable runnable) {
        this.zzcju.execute(runnable);
    }
}
