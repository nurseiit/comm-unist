package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;
import java.util.concurrent.Callable;

final class zzmp implements Callable<Void> {
    private /* synthetic */ Context zztF;

    zzmp(Context context) {
        this.zztF = context;
    }

    public final /* synthetic */ Object call() throws Exception {
        zzbs.zzbL().initialize(this.zztF);
        return null;
    }
}
