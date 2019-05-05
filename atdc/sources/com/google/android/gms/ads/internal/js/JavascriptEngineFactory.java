package com.google.android.gms.ads.internal.js;

import android.content.Context;
import android.support.annotation.Keep;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzajg;
import com.google.android.gms.internal.zzajm;
import com.google.android.gms.internal.zzcu;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class JavascriptEngineFactory {

    static class JSEngineSettableFuture extends zzajg<zza> {
        @Keep
        zza mEngineReference;

        private JSEngineSettableFuture() {
        }

        /* synthetic */ JSEngineSettableFuture(zzc zzc) {
            this();
        }
    }

    public final zzajm<zza> zza(Context context, zzaje zzaje, String str, zzcu zzcu, zzv zzv) {
        JSEngineSettableFuture jSEngineSettableFuture = new JSEngineSettableFuture();
        zzagz.zzZr.post(new zzc(this, context, zzaje, zzcu, zzv, jSEngineSettableFuture, str));
        return jSEngineSettableFuture;
    }
}
