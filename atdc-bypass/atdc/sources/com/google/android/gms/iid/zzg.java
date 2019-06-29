package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

final class zzg extends BroadcastReceiver {
    private /* synthetic */ zze zzbhn;

    zzg(zze zze) {
        this.zzbhn = zze;
    }

    public final void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            Log.d("InstanceID/Rpc", "Received GSF callback via dynamic receiver");
        }
        this.zzbhn.zzi(intent);
    }
}
