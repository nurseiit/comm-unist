package com.google.android.gms.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.iid.zzb;

public class InstanceIDListenerService extends zzb {
    static void zza(Context context, zzh zzh) {
        zzh.zzvP();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra("CMD", "RST");
        intent.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
        context.sendBroadcast(intent);
    }

    public void handleIntent(Intent intent) {
        if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            Bundle bundle = null;
            String stringExtra = intent.getStringExtra("subtype");
            if (stringExtra != null) {
                bundle = new Bundle();
                bundle.putString("subtype", stringExtra);
            }
            InstanceID zza = InstanceID.zza(this, bundle);
            String stringExtra2 = intent.getStringExtra("CMD");
            if (Log.isLoggable("InstanceID", 3)) {
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(stringExtra).length() + 34) + String.valueOf(stringExtra2).length());
                stringBuilder.append("Service command. subtype:");
                stringBuilder.append(stringExtra);
                stringBuilder.append(" command:");
                stringBuilder.append(stringExtra2);
                Log.d("InstanceID", stringBuilder.toString());
            }
            if (!"gcm.googleapis.com/refresh".equals(intent.getStringExtra("from"))) {
                if ("RST".equals(stringExtra2)) {
                    zza.zzvL();
                } else {
                    if ("RST_FULL".equals(stringExtra2)) {
                        if (!InstanceID.zzvM().isEmpty()) {
                            InstanceID.zzvM().zzvP();
                        }
                    } else if (!"SYNC".equals(stringExtra2)) {
                        "PING".equals(stringExtra2);
                    }
                    return;
                }
                onTokenRefresh();
            }
            InstanceID.zzvM().zzdr(stringExtra);
            onTokenRefresh();
        }
    }

    public void onTokenRefresh() {
    }
}
