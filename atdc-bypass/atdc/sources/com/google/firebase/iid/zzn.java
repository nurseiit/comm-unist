package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

final class zzn extends BroadcastReceiver {
    private /* synthetic */ zzl zzckJ;

    zzn(zzl zzl) {
        this.zzckJ = zzl;
    }

    public final void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 44);
            stringBuilder.append("Received GSF callback via dynamic receiver: ");
            stringBuilder.append(valueOf);
            Log.d("InstanceID/Rpc", stringBuilder.toString());
        }
        this.zzckJ.zzi(intent);
    }
}
