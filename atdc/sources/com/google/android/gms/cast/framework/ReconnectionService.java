package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzauj;
import com.google.android.gms.internal.zzayo;

public class ReconnectionService extends Service {
    private static final zzayo zzarK = new zzayo("ReconnectionService");
    private zzs zzass;

    public IBinder onBind(Intent intent) {
        try {
            return this.zzass.onBind(intent);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onBind", zzs.class.getSimpleName());
            return null;
        }
    }

    public void onCreate() {
        CastContext sharedInstance = CastContext.getSharedInstance(this);
        this.zzass = zzauj.zza(this, sharedInstance.getSessionManager().zznp(), sharedInstance.zzno().zznp());
        try {
            this.zzass.onCreate();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onCreate", zzs.class.getSimpleName());
        }
        super.onCreate();
    }

    public void onDestroy() {
        try {
            this.zzass.onDestroy();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onDestroy", zzs.class.getSimpleName());
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            return this.zzass.onStartCommand(intent, i, i2);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onStartCommand", zzs.class.getSimpleName());
            return 1;
        }
    }
}
