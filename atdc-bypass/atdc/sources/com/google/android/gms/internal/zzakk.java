package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbl;
import com.google.android.gms.ads.internal.zzv;

@zzzn
public final class zzakk {
    public final zzaka zza(Context context, zziv zziv, boolean z, boolean z2, @Nullable zzcu zzcu, zzaje zzaje, zznb zznb, zzbl zzbl, zzv zzv, zzig zzig) throws zzakm {
        try {
            return (zzaka) zzait.zzc(new zzakl(this, context, zziv, z, z2, zzcu, zzaje, zznb, zzbl, zzv, zzig));
        } catch (Throwable th) {
            zzakm zzakm = new zzakm(this, "Webview initialization failed.", th);
        }
    }
}
