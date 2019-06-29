package com.google.android.gms.ads.internal.js;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzahz;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzcu;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzl {
    private final Context mContext;
    private final Object mLock;
    private final String zzLa;
    private zzahz<zza> zzLb;
    private zzahz<zza> zzLc;
    @Nullable
    private zzac zzLd;
    private int zzLe;
    private final zzaje zztW;

    public zzl(Context context, zzaje zzaje, String str) {
        this.mLock = new Object();
        this.zzLe = 1;
        this.zzLa = str;
        this.mContext = context.getApplicationContext();
        this.zztW = zzaje;
        this.zzLb = new zzx();
        this.zzLc = new zzx();
    }

    public zzl(Context context, zzaje zzaje, String str, zzahz<zza> zzahz, zzahz<zza> zzahz2) {
        this(context, zzaje, str);
        this.zzLb = zzahz;
        this.zzLc = zzahz2;
    }

    /* Access modifiers changed, original: protected|final */
    public final zzac zza(@Nullable zzcu zzcu) {
        zzac zzac = new zzac(this.zzLc);
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzm(this, zzcu, zzac));
        zzac.zza(new zzu(this, zzac), new zzv(this, zzac));
        return zzac;
    }

    public final zzy zzb(@Nullable zzcu zzcu) {
        synchronized (this.mLock) {
            zzy zzfa;
            if (this.zzLd != null) {
                if (this.zzLd.getStatus() != -1) {
                    if (this.zzLe == 0) {
                        zzfa = this.zzLd.zzfa();
                        return zzfa;
                    } else if (this.zzLe == 1) {
                        this.zzLe = 2;
                        zza(zzcu);
                        zzfa = this.zzLd.zzfa();
                        return zzfa;
                    } else if (this.zzLe == 2) {
                        zzfa = this.zzLd.zzfa();
                        return zzfa;
                    } else {
                        zzfa = this.zzLd.zzfa();
                        return zzfa;
                    }
                }
            }
            this.zzLe = 2;
            this.zzLd = zza(zzcu);
            zzfa = this.zzLd.zzfa();
            return zzfa;
        }
    }
}
