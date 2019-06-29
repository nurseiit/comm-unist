package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.instantapps.ActivityCompat;

public final class zzcbk implements ActivityCompat {
    private final Activity zzbhp;

    public zzcbk(Activity activity) {
        this.zzbhp = activity;
    }

    public final ComponentName getCallingActivity() {
        ComponentName callingActivity = this.zzbhp.getCallingActivity();
        if (!(callingActivity == null || callingActivity.getPackageName() == null || !callingActivity.getPackageName().equals("com.google.android.instantapps.supervisor"))) {
            zzcbp zzbf = zzcbp.zzbf(this.zzbhp);
            if (zzbf != null) {
                try {
                    ComponentName zzdu = zzbf.zzdu(callingActivity.getClassName());
                    if (zzdu != null) {
                        return zzdu;
                    }
                } catch (RemoteException e) {
                    Log.e("IAActivityCompat", "Error getting calling activity", e);
                }
            }
        }
        return callingActivity;
    }

    public final String getCallingPackage() {
        ComponentName callingActivity = getCallingActivity();
        return callingActivity != null ? callingActivity.getPackageName() : null;
    }
}
