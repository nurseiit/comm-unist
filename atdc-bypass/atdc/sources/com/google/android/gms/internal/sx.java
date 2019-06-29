package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

final class sx implements Callable<List<? extends vk>> {
    private /* synthetic */ so zzceR;

    sx(so soVar) {
        this.zzceR = soVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.zzceR.zzceF.zzFv();
        if (this.zzceR.zzceH.zzHz().isEmpty()) {
            return Collections.emptyList();
        }
        return this.zzceR.zza(new tu(qr.zzGZ(), new uv(Boolean.valueOf(true)), true));
    }
}
