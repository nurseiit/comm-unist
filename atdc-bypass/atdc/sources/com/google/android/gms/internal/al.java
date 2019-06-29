package com.google.android.gms.internal;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.PhoneAuthProvider;

public final class al implements zzcxo {
    private final Context mContext;

    public al(Context context) {
        this.mContext = (Context) zzbo.zzu(context);
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneAuthProvider.PROVIDER_ID);
        dv dvVar = dv.zzbLu;
        if (telephonyManager == null) {
            return dvVar;
        }
        String networkOperatorName = telephonyManager.getNetworkOperatorName();
        return networkOperatorName != null ? new eb(networkOperatorName) : dvVar;
    }
}
