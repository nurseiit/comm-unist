package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzjo;
import com.google.android.gms.internal.zzjr;
import com.google.android.gms.internal.zzjv;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzon;
import com.google.android.gms.internal.zzpn;
import com.google.android.gms.internal.zzpq;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzpz;
import com.google.android.gms.internal.zzuq;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzak extends zzjv {
    private final Context mContext;
    private final zzv zzsS;
    private final zzuq zzsX;
    private zzjo zztK;
    private zziv zztO;
    private PublisherAdViewOptions zztP;
    private zzon zztS;
    private zzkk zztU;
    private final String zztV;
    private final zzaje zztW;
    private zzpn zzua;
    private zzpq zzub;
    private SimpleArrayMap<String, zzpt> zzuc = new SimpleArrayMap();
    private SimpleArrayMap<String, zzpw> zzud = new SimpleArrayMap();
    private zzpz zzue;

    public zzak(Context context, String str, zzuq zzuq, zzaje zzaje, zzv zzv) {
        this.mContext = context;
        this.zztV = str;
        this.zzsX = zzuq;
        this.zztW = zzaje;
        this.zzsS = zzv;
    }

    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.zztP = publisherAdViewOptions;
    }

    public final void zza(zzon zzon) {
        this.zztS = zzon;
    }

    public final void zza(zzpn zzpn) {
        this.zzua = zzpn;
    }

    public final void zza(zzpq zzpq) {
        this.zzub = zzpq;
    }

    public final void zza(zzpz zzpz, zziv zziv) {
        this.zzue = zzpz;
        this.zztO = zziv;
    }

    public final void zza(String str, zzpw zzpw, zzpt zzpt) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.zzud.put(str, zzpw);
        this.zzuc.put(str, zzpt);
    }

    public final zzjr zzaZ() {
        return new zzai(this.mContext, this.zztV, this.zzsX, this.zztW, this.zztK, this.zzua, this.zzub, this.zzud, this.zzuc, this.zztS, this.zztU, this.zzsS, this.zzue, this.zztO, this.zztP);
    }

    public final void zzb(zzjo zzjo) {
        this.zztK = zzjo;
    }

    public final void zzb(zzkk zzkk) {
        this.zztU = zzkk;
    }
}
