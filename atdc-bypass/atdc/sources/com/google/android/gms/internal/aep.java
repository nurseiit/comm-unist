package com.google.android.gms.internal;

import android.content.ComponentName;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import java.lang.ref.WeakReference;

public final class aep extends CustomTabsServiceConnection {
    private WeakReference<aeq> zzcuA;

    public aep(aeq aeq) {
        this.zzcuA = new WeakReference(aeq);
    }

    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        aeq aeq = (aeq) this.zzcuA.get();
        if (aeq != null) {
            aeq.zza(customTabsClient);
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        aeq aeq = (aeq) this.zzcuA.get();
        if (aeq != null) {
            aeq.zzdZ();
        }
    }
}
