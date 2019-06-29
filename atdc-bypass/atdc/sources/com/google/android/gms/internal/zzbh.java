package com.google.android.gms.internal;

import java.io.IOException;

public interface zzbh {

    public static final class zza extends adj<zza> {
        public static final adk<zzbr, zza> zzlo = adk.zza(11, zza.class, 810);
        private static final zza[] zzlp = new zza[0];
        public int[] zzlq;
        public int[] zzlr;
        public int[] zzls;
        private int zzlt;
        public int[] zzlu;
        public int zzlv;
        private int zzlw;

        public zza() {
            this.zzlq = ads.zzcsC;
            this.zzlr = ads.zzcsC;
            this.zzls = ads.zzcsC;
            this.zzlt = 0;
            this.zzlu = ads.zzcsC;
            this.zzlv = 0;
            this.zzlw = 0;
            this.zzcso = null;
            this.zzcsx = -1;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            return (adn.equals(this.zzlq, zza.zzlq) && adn.equals(this.zzlr, zza.zzlr) && adn.equals(this.zzls, zza.zzls) && this.zzlt == zza.zzlt && adn.equals(this.zzlu, zza.zzlu) && this.zzlv == zza.zzlv && this.zzlw == zza.zzlw) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zza.zzcso == null || zza.zzcso.isEmpty() : this.zzcso.equals(zza.zzcso) : false;
        }

        public final int hashCode() {
            int hashCode = (((((((((((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzlq)) * 31) + adn.hashCode(this.zzlr)) * 31) + adn.hashCode(this.zzls)) * 31) + this.zzlt) * 31) + adn.hashCode(this.zzlu)) * 31) + this.zzlv) * 31) + this.zzlw) * 31;
            int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
            return hashCode + hashCode2;
        }

        public final void zza(adh adh) throws IOException {
            if (this.zzlq != null && this.zzlq.length > 0) {
                for (int zzr : this.zzlq) {
                    adh.zzr(1, zzr);
                }
            }
            if (this.zzlr != null && this.zzlr.length > 0) {
                for (int zzr2 : this.zzlr) {
                    adh.zzr(2, zzr2);
                }
            }
            if (this.zzls != null && this.zzls.length > 0) {
                for (int zzr22 : this.zzls) {
                    adh.zzr(3, zzr22);
                }
            }
            if (this.zzlt != 0) {
                adh.zzr(4, this.zzlt);
            }
            if (this.zzlu != null && this.zzlu.length > 0) {
                for (int zzr3 : this.zzlu) {
                    adh.zzr(5, zzr3);
                }
            }
            if (this.zzlv != 0) {
                adh.zzr(6, this.zzlv);
            }
            if (this.zzlw != 0) {
                adh.zzr(7, this.zzlw);
            }
            super.zza(adh);
        }

        /* Access modifiers changed, original: protected|final */
        public final int zzn() {
            int i;
            int i2;
            int zzn = super.zzn();
            if (this.zzlq != null && this.zzlq.length > 0) {
                i = 0;
                for (int zzcr : this.zzlq) {
                    i += adh.zzcr(zzcr);
                }
                zzn = (zzn + i) + (this.zzlq.length * 1);
            }
            if (this.zzlr != null && this.zzlr.length > 0) {
                i = 0;
                for (int zzcr2 : this.zzlr) {
                    i += adh.zzcr(zzcr2);
                }
                zzn = (zzn + i) + (this.zzlr.length * 1);
            }
            if (this.zzls != null && this.zzls.length > 0) {
                i = 0;
                for (int zzcr22 : this.zzls) {
                    i += adh.zzcr(zzcr22);
                }
                zzn = (zzn + i) + (this.zzls.length * 1);
            }
            if (this.zzlt != 0) {
                zzn += adh.zzs(4, this.zzlt);
            }
            if (this.zzlu != null && this.zzlu.length > 0) {
                i2 = 0;
                for (int i3 : this.zzlu) {
                    i2 += adh.zzcr(i3);
                }
                zzn = (zzn + i2) + (this.zzlu.length * 1);
            }
            if (this.zzlv != 0) {
                zzn += adh.zzs(6, this.zzlv);
            }
            return this.zzlw != 0 ? zzn + adh.zzs(7, this.zzlw) : zzn;
        }
    }
}
