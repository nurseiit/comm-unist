package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbo extends adj<zzbo> {
    private static volatile zzbo[] zzld;
    public int[] zzle;
    public int[] zzlf;
    public int[] zzlg;
    public int[] zzlh;
    public int[] zzli;
    public int[] zzlj;
    public int[] zzlk;
    public int[] zzll;
    public int[] zzlm;
    public int[] zzln;

    public zzbo() {
        this.zzle = ads.zzcsC;
        this.zzlf = ads.zzcsC;
        this.zzlg = ads.zzcsC;
        this.zzlh = ads.zzcsC;
        this.zzli = ads.zzcsC;
        this.zzlj = ads.zzcsC;
        this.zzlk = ads.zzcsC;
        this.zzll = ads.zzcsC;
        this.zzlm = ads.zzcsC;
        this.zzln = ads.zzcsC;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzbo[] zzs() {
        if (zzld == null) {
            synchronized (adn.zzcsw) {
                if (zzld == null) {
                    zzld = new zzbo[0];
                }
            }
        }
        return zzld;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbo)) {
            return false;
        }
        zzbo zzbo = (zzbo) obj;
        return (adn.equals(this.zzle, zzbo.zzle) && adn.equals(this.zzlf, zzbo.zzlf) && adn.equals(this.zzlg, zzbo.zzlg) && adn.equals(this.zzlh, zzbo.zzlh) && adn.equals(this.zzli, zzbo.zzli) && adn.equals(this.zzlj, zzbo.zzlj) && adn.equals(this.zzlk, zzbo.zzlk) && adn.equals(this.zzll, zzbo.zzll) && adn.equals(this.zzlm, zzbo.zzlm) && adn.equals(this.zzln, zzbo.zzln)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbo.zzcso == null || zzbo.zzcso.isEmpty() : this.zzcso.equals(zzbo.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzle)) * 31) + adn.hashCode(this.zzlf)) * 31) + adn.hashCode(this.zzlg)) * 31) + adn.hashCode(this.zzlh)) * 31) + adn.hashCode(this.zzli)) * 31) + adn.hashCode(this.zzlj)) * 31) + adn.hashCode(this.zzlk)) * 31) + adn.hashCode(this.zzll)) * 31) + adn.hashCode(this.zzlm)) * 31) + adn.hashCode(this.zzln)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzle != null && this.zzle.length > 0) {
            for (int zzr : this.zzle) {
                adh.zzr(1, zzr);
            }
        }
        if (this.zzlf != null && this.zzlf.length > 0) {
            for (int zzr2 : this.zzlf) {
                adh.zzr(2, zzr2);
            }
        }
        if (this.zzlg != null && this.zzlg.length > 0) {
            for (int zzr22 : this.zzlg) {
                adh.zzr(3, zzr22);
            }
        }
        if (this.zzlh != null && this.zzlh.length > 0) {
            for (int zzr222 : this.zzlh) {
                adh.zzr(4, zzr222);
            }
        }
        if (this.zzli != null && this.zzli.length > 0) {
            for (int zzr2222 : this.zzli) {
                adh.zzr(5, zzr2222);
            }
        }
        if (this.zzlj != null && this.zzlj.length > 0) {
            for (int zzr22222 : this.zzlj) {
                adh.zzr(6, zzr22222);
            }
        }
        if (this.zzlk != null && this.zzlk.length > 0) {
            for (int zzr222222 : this.zzlk) {
                adh.zzr(7, zzr222222);
            }
        }
        if (this.zzll != null && this.zzll.length > 0) {
            for (int zzr2222222 : this.zzll) {
                adh.zzr(8, zzr2222222);
            }
        }
        if (this.zzlm != null && this.zzlm.length > 0) {
            for (int zzr22222222 : this.zzlm) {
                adh.zzr(9, zzr22222222);
            }
        }
        if (this.zzln != null && this.zzln.length > 0) {
            for (int zzr3 : this.zzln) {
                adh.zzr(10, zzr3);
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int i2;
        int zzn = super.zzn();
        if (this.zzle != null && this.zzle.length > 0) {
            i = 0;
            for (int zzcr : this.zzle) {
                i += adh.zzcr(zzcr);
            }
            zzn = (zzn + i) + (this.zzle.length * 1);
        }
        if (this.zzlf != null && this.zzlf.length > 0) {
            i = 0;
            for (int zzcr2 : this.zzlf) {
                i += adh.zzcr(zzcr2);
            }
            zzn = (zzn + i) + (this.zzlf.length * 1);
        }
        if (this.zzlg != null && this.zzlg.length > 0) {
            i = 0;
            for (int zzcr22 : this.zzlg) {
                i += adh.zzcr(zzcr22);
            }
            zzn = (zzn + i) + (this.zzlg.length * 1);
        }
        if (this.zzlh != null && this.zzlh.length > 0) {
            i = 0;
            for (int zzcr222 : this.zzlh) {
                i += adh.zzcr(zzcr222);
            }
            zzn = (zzn + i) + (this.zzlh.length * 1);
        }
        if (this.zzli != null && this.zzli.length > 0) {
            i = 0;
            for (int zzcr2222 : this.zzli) {
                i += adh.zzcr(zzcr2222);
            }
            zzn = (zzn + i) + (this.zzli.length * 1);
        }
        if (this.zzlj != null && this.zzlj.length > 0) {
            i = 0;
            for (int zzcr22222 : this.zzlj) {
                i += adh.zzcr(zzcr22222);
            }
            zzn = (zzn + i) + (this.zzlj.length * 1);
        }
        if (this.zzlk != null && this.zzlk.length > 0) {
            i = 0;
            for (int zzcr222222 : this.zzlk) {
                i += adh.zzcr(zzcr222222);
            }
            zzn = (zzn + i) + (this.zzlk.length * 1);
        }
        if (this.zzll != null && this.zzll.length > 0) {
            i = 0;
            for (int zzcr2222222 : this.zzll) {
                i += adh.zzcr(zzcr2222222);
            }
            zzn = (zzn + i) + (this.zzll.length * 1);
        }
        if (this.zzlm != null && this.zzlm.length > 0) {
            i = 0;
            for (int zzcr22222222 : this.zzlm) {
                i += adh.zzcr(zzcr22222222);
            }
            zzn = (zzn + i) + (this.zzlm.length * 1);
        }
        if (this.zzln == null || this.zzln.length <= 0) {
            return zzn;
        }
        i2 = 0;
        for (int i3 : this.zzln) {
            i2 += adh.zzcr(i3);
        }
        return (zzn + i2) + (this.zzln.length * 1);
    }
}
