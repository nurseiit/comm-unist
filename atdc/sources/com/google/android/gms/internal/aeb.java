package com.google.android.gms.internal;

import java.io.IOException;

public final class aeb extends adj<aeb> {
    private static volatile aeb[] zzctm;
    public String url;
    public Integer zzbuM;
    public adw zzctn;
    private ady zzcto;
    private Integer zzctp;
    private int[] zzctq;
    private String zzctr;
    public Integer zzcts;
    public String[] zzctt;

    public aeb() {
        this.zzbuM = null;
        this.url = null;
        this.zzctn = null;
        this.zzcto = null;
        this.zzctp = null;
        this.zzctq = ads.zzcsC;
        this.zzctr = null;
        this.zzcts = null;
        this.zzctt = ads.EMPTY_STRING_ARRAY;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static aeb[] zzLX() {
        if (zzctm == null) {
            synchronized (adn.zzcsw) {
                if (zzctm == null) {
                    zzctm = new aeb[0];
                }
            }
        }
        return zzctm;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzr(1, this.zzbuM.intValue());
        if (this.url != null) {
            adh.zzl(2, this.url);
        }
        if (this.zzctn != null) {
            adh.zza(3, this.zzctn);
        }
        if (this.zzcto != null) {
            adh.zza(4, this.zzcto);
        }
        if (this.zzctp != null) {
            adh.zzr(5, this.zzctp.intValue());
        }
        if (this.zzctq != null && this.zzctq.length > 0) {
            for (int zzr : this.zzctq) {
                adh.zzr(6, zzr);
            }
        }
        if (this.zzctr != null) {
            adh.zzl(7, this.zzctr);
        }
        if (this.zzcts != null) {
            adh.zzr(8, this.zzcts.intValue());
        }
        if (this.zzctt != null && this.zzctt.length > 0) {
            for (String str : this.zzctt) {
                if (str != null) {
                    adh.zzl(9, str);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int i2;
        int zzn = super.zzn() + adh.zzs(1, this.zzbuM.intValue());
        if (this.url != null) {
            zzn += adh.zzm(2, this.url);
        }
        if (this.zzctn != null) {
            zzn += adh.zzb(3, this.zzctn);
        }
        if (this.zzcto != null) {
            zzn += adh.zzb(4, this.zzcto);
        }
        if (this.zzctp != null) {
            zzn += adh.zzs(5, this.zzctp.intValue());
        }
        if (this.zzctq != null && this.zzctq.length > 0) {
            i = 0;
            for (int zzcr : this.zzctq) {
                i += adh.zzcr(zzcr);
            }
            zzn = (zzn + i) + (this.zzctq.length * 1);
        }
        if (this.zzctr != null) {
            zzn += adh.zzm(7, this.zzctr);
        }
        if (this.zzcts != null) {
            zzn += adh.zzs(8, this.zzcts.intValue());
        }
        if (this.zzctt == null || this.zzctt.length <= 0) {
            return zzn;
        }
        i2 = 0;
        i = 0;
        for (String str : this.zzctt) {
            if (str != null) {
                i++;
                i2 += adh.zzhQ(str);
            }
        }
        return (zzn + i2) + (i * 1);
    }
}
