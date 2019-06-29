package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.internal.zzbo;

class zzaod extends BroadcastReceiver {
    private static String zzaiq = "com.google.android.gms.internal.zzaod";
    private boolean mRegistered;
    private final zzamj zzafJ;
    private boolean zzair;

    zzaod(zzamj zzamj) {
        zzbo.zzu(zzamj);
        this.zzafJ = zzamj;
    }

    private final void zzlO() {
        this.zzafJ.zzkr();
        this.zzafJ.zzkv();
    }

    private final boolean zzlQ() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.zzafJ.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
        } catch (SecurityException unused) {
        }
        return false;
    }

    public final boolean isConnected() {
        if (!this.mRegistered) {
            this.zzafJ.zzkr().zzbr("Connectivity unknown. Receiver not registered");
        }
        return this.zzair;
    }

    public void onReceive(Context context, Intent intent) {
        zzlO();
        String action = intent.getAction();
        this.zzafJ.zzkr().zza("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zzlQ = zzlQ();
            if (this.zzair != zzlQ) {
                this.zzair = zzlQ;
                zzaly zzkv = this.zzafJ.zzkv();
                zzkv.zza("Network connectivity status changed", Boolean.valueOf(zzlQ));
                zzkv.zzkt().zzf(new zzama(zzkv, zzlQ));
            }
        } else if ("com.google.analytics.RADIO_POWERED".equals(action)) {
            if (!intent.hasExtra(zzaiq)) {
                zzaly zzkv2 = this.zzafJ.zzkv();
                zzkv2.zzbo("Radio powered up");
                zzkv2.zzkl();
            }
        } else {
            this.zzafJ.zzkr().zzd("NetworkBroadcastReceiver received unknown action", action);
        }
    }

    public final void unregister() {
        if (this.mRegistered) {
            this.zzafJ.zzkr().zzbo("Unregistering connectivity change receiver");
            this.mRegistered = false;
            this.zzair = false;
            try {
                this.zzafJ.getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.zzafJ.zzkr().zze("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public final void zzlN() {
        zzlO();
        if (!this.mRegistered) {
            Context context = this.zzafJ.getContext();
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
            intentFilter.addCategory(context.getPackageName());
            context.registerReceiver(this, intentFilter);
            this.zzair = zzlQ();
            this.zzafJ.zzkr().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzair));
            this.mRegistered = true;
        }
    }

    public final void zzlP() {
        Context context = this.zzafJ.getContext();
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(zzaiq, true);
        context.sendOrderedBroadcast(intent, null);
    }
}
