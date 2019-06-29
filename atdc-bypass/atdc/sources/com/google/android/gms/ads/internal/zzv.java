package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.zzad;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.internal.zzaek;
import com.google.android.gms.internal.zzaeu;
import com.google.android.gms.internal.zzij;
import com.google.android.gms.internal.zzik;
import com.google.android.gms.internal.zzql;
import com.google.android.gms.internal.zzsg;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzv {
    public final zzsg zztm;
    public final zzz zztn;
    public final zzaeu zzto;
    public final zzij zztp;

    private zzv(zzsg zzsg, zzz zzz, zzaeu zzaeu, zzij zzij) {
        this.zztm = zzsg;
        this.zztn = zzz;
        this.zzto = zzaeu;
        this.zztp = zzij;
    }

    public static zzv zzaQ() {
        return new zzv(new zzql(), new zzad(), new zzaek(), new zzik());
    }
}
