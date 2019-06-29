package com.google.android.gms.internal;

import java.io.IOException;

public final class acw extends adj<acw> {
    private int zzcqq;
    private long zzcqr;
    private long zzcrr;
    private int[] zzcrv;
    private String[] zzcrw;
    private String[] zzcrx;
    private String zzcry;

    public acw() {
        this.zzcqq = 0;
        this.zzcqr = 0;
        this.zzcrv = ads.zzcsC;
        this.zzcrw = ads.EMPTY_STRING_ARRAY;
        this.zzcrr = 0;
        this.zzcrx = ads.EMPTY_STRING_ARRAY;
        this.zzcry = "";
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acw)) {
            return false;
        }
        acw acw = (acw) obj;
        if (this.zzcqq != acw.zzcqq || this.zzcqr != acw.zzcqr || !adn.equals(this.zzcrv, acw.zzcrv) || !adn.equals(this.zzcrw, acw.zzcrw) || this.zzcrr != acw.zzcrr || !adn.equals(this.zzcrx, acw.zzcrx)) {
            return false;
        }
        if (this.zzcry == null) {
            if (acw.zzcry != null) {
                return false;
            }
        } else if (!this.zzcry.equals(acw.zzcry)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? acw.zzcso == null || acw.zzcso.isEmpty() : this.zzcso.equals(acw.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + adn.hashCode(this.zzcrv)) * 31) + adn.hashCode(this.zzcrw)) * 31) + ((int) (this.zzcrr ^ (this.zzcrr >>> 32)))) * 31) + adn.hashCode(this.zzcrx)) * 31) + (this.zzcry == null ? 0 : this.zzcry.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (this.zzcqr != 0) {
            adh.zzb(2, this.zzcqr);
        }
        if (this.zzcrv != null && this.zzcrv.length > 0) {
            for (int zzr : this.zzcrv) {
                adh.zzr(3, zzr);
            }
        }
        if (this.zzcrw != null && this.zzcrw.length > 0) {
            for (String str : this.zzcrw) {
                if (str != null) {
                    adh.zzl(4, str);
                }
            }
        }
        if (this.zzcrr != 0) {
            adh.zzb(5, this.zzcrr);
        }
        if (this.zzcrx != null && this.zzcrx.length > 0) {
            for (String str2 : this.zzcrx) {
                if (str2 != null) {
                    adh.zzl(6, str2);
                }
            }
        }
        if (!(this.zzcry == null || this.zzcry.equals(""))) {
            adh.zzl(7, this.zzcry);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int i2;
        int i3;
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        if (this.zzcqr != 0) {
            zzn += adh.zze(2, this.zzcqr);
        }
        if (this.zzcrv != null && this.zzcrv.length > 0) {
            i = 0;
            for (int i32 : this.zzcrv) {
                i += adh.zzcr(i32);
            }
            zzn = (zzn + i) + (this.zzcrv.length * 1);
        }
        if (this.zzcrw != null && this.zzcrw.length > 0) {
            i = 0;
            i32 = 0;
            for (String str : this.zzcrw) {
                if (str != null) {
                    i32++;
                    i += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i) + (i32 * 1);
        }
        if (this.zzcrr != 0) {
            zzn += adh.zze(5, this.zzcrr);
        }
        if (this.zzcrx != null && this.zzcrx.length > 0) {
            i2 = 0;
            i = 0;
            for (String str2 : this.zzcrx) {
                if (str2 != null) {
                    i++;
                    i2 += adh.zzhQ(str2);
                }
            }
            zzn = (zzn + i2) + (i * 1);
        }
        return (this.zzcry == null || this.zzcry.equals("")) ? zzn : zzn + adh.zzm(7, this.zzcry);
    }
}
