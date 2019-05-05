package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class zzchk {
    final Context mContext;

    public zzchk(Context context) {
        zzbo.zzu(context);
        context = context.getApplicationContext();
        zzbo.zzu(context);
        this.mContext = context;
    }
}
