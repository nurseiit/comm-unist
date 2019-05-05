package com.google.android.gms.cast.framework.media;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzauj;
import com.google.android.gms.internal.zzayo;

public class MediaNotificationService extends Service {
    public static final String ACTION_UPDATE_NOTIFICATION = "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION";
    private static final zzayo zzarK = new zzayo("MediaNotificationService");
    private zzd zzatM;

    public IBinder onBind(Intent intent) {
        try {
            return this.zzatM.onBind(intent);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onBind", zzd.class.getSimpleName());
            return null;
        }
    }

    public void onCreate() {
        this.zzatM = zzauj.zza((Service) this, CastContext.getSharedInstance(this).zznp(), zzn.zzw(null), CastContext.getSharedInstance(this).getCastOptions().getCastMediaOptions());
        try {
            this.zzatM.onCreate();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onCreate", zzd.class.getSimpleName());
        }
        super.onCreate();
    }

    public void onDestroy() {
        try {
            this.zzatM.onDestroy();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onDestroy", zzd.class.getSimpleName());
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            return this.zzatM.onStartCommand(intent, i, i2);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onStartCommand", zzd.class.getSimpleName());
            return 1;
        }
    }
}
