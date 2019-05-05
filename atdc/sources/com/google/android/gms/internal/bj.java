package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.common.internal.zzbo;

public final class bj implements zzcxo {
    private Context mContext;
    private DisplayMetrics zzxF = new DisplayMetrics();

    public bj(Context context) {
        this.mContext = context;
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(this.zzxF);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.zzxF.widthPixels);
        stringBuilder.append("x");
        stringBuilder.append(this.zzxF.heightPixels);
        return new eb(stringBuilder.toString());
    }
}
