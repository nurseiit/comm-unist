package com.google.android.gms.tagmanager;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Keep;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
public class TagManagerService extends Service {
    @Keep
    @WorkerThread
    @KeepName
    public static void initialize(Context context) {
        zzbf.zzbo(context);
    }

    public IBinder onBind(Intent intent) {
        return zzbf.zzbn(this);
    }
}
