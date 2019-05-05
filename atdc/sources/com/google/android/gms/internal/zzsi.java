package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzal;
import com.google.android.gms.ads.internal.zzv;

@zzzn
public final class zzsi {
    private final Context mContext;
    private final zzv zzsS;
    private final zzuq zzsX;
    private final zzaje zztW;

    zzsi(Context context, zzuq zzuq, zzaje zzaje, zzv zzv) {
        this.mContext = context;
        this.zzsX = zzuq;
        this.zztW = zzaje;
        this.zzsS = zzv;
    }

    public final Context getApplicationContext() {
        return this.mContext.getApplicationContext();
    }

    public final zzal zzW(String str) {
        return new zzal(this.mContext, new zziv(), str, this.zzsX, this.zztW, this.zzsS);
    }

    public final zzal zzX(String str) {
        return new zzal(this.mContext.getApplicationContext(), new zziv(), str, this.zzsX, this.zztW, this.zzsS);
    }

    public final zzsi zzeF() {
        return new zzsi(this.mContext.getApplicationContext(), this.zzsX, this.zztW, this.zzsS);
    }
}
