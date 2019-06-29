package com.google.android.gms.internal;

import java.io.IOException;

public final class acn extends adj<acn> {
    private static volatile acn[] zzcqM;
    public int type;
    public acn[] zzcqN;
    public add zzcqO;
    public acs zzcqP;
    private acw zzcqQ;
    public ach zzcqR;
    private acz zzcqS;
    private acx zzcqT;
    private acv zzcqU;
    public aci zzcqV;
    public acj zzcqW;
    private act zzcqX;
    private ada zzcqY;
    private adf zzcqZ;
    public ade zzcra;
    private acq zzcrb;
    private acu zzcrc;
    private acy zzcrd;
    public adb zzcre;
    public add zzcrf;

    public acn() {
        this.type = 0;
        this.zzcqN = zzLp();
        this.zzcqO = null;
        this.zzcqP = null;
        this.zzcqQ = null;
        this.zzcqR = null;
        this.zzcqS = null;
        this.zzcqT = null;
        this.zzcqU = null;
        this.zzcqV = null;
        this.zzcqW = null;
        this.zzcqX = null;
        this.zzcqY = null;
        this.zzcqZ = null;
        this.zzcra = null;
        this.zzcrb = null;
        this.zzcrc = null;
        this.zzcrd = null;
        this.zzcre = null;
        this.zzcrf = null;
        this.zzcsx = -1;
    }

    private static acn[] zzLp() {
        if (zzcqM == null) {
            synchronized (adn.zzcsw) {
                if (zzcqM == null) {
                    zzcqM = new acn[0];
                }
            }
        }
        return zzcqM;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acn)) {
            return false;
        }
        acn acn = (acn) obj;
        if (this.type != acn.type || !adn.equals(this.zzcqN, acn.zzcqN)) {
            return false;
        }
        if (this.zzcqO == null) {
            if (acn.zzcqO != null) {
                return false;
            }
        } else if (!this.zzcqO.equals(acn.zzcqO)) {
            return false;
        }
        if (this.zzcqP == null) {
            if (acn.zzcqP != null) {
                return false;
            }
        } else if (!this.zzcqP.equals(acn.zzcqP)) {
            return false;
        }
        if (this.zzcqQ == null) {
            if (acn.zzcqQ != null) {
                return false;
            }
        } else if (!this.zzcqQ.equals(acn.zzcqQ)) {
            return false;
        }
        if (this.zzcqR == null) {
            if (acn.zzcqR != null) {
                return false;
            }
        } else if (!this.zzcqR.equals(acn.zzcqR)) {
            return false;
        }
        if (this.zzcqS == null) {
            if (acn.zzcqS != null) {
                return false;
            }
        } else if (!this.zzcqS.equals(acn.zzcqS)) {
            return false;
        }
        if (this.zzcqT == null) {
            if (acn.zzcqT != null) {
                return false;
            }
        } else if (!this.zzcqT.equals(acn.zzcqT)) {
            return false;
        }
        if (this.zzcqU == null) {
            if (acn.zzcqU != null) {
                return false;
            }
        } else if (!this.zzcqU.equals(acn.zzcqU)) {
            return false;
        }
        if (this.zzcqV == null) {
            if (acn.zzcqV != null) {
                return false;
            }
        } else if (!this.zzcqV.equals(acn.zzcqV)) {
            return false;
        }
        if (this.zzcqW == null) {
            if (acn.zzcqW != null) {
                return false;
            }
        } else if (!this.zzcqW.equals(acn.zzcqW)) {
            return false;
        }
        if (this.zzcqX == null) {
            if (acn.zzcqX != null) {
                return false;
            }
        } else if (!this.zzcqX.equals(acn.zzcqX)) {
            return false;
        }
        if (this.zzcqY == null) {
            if (acn.zzcqY != null) {
                return false;
            }
        } else if (!this.zzcqY.equals(acn.zzcqY)) {
            return false;
        }
        if (this.zzcqZ == null) {
            if (acn.zzcqZ != null) {
                return false;
            }
        } else if (!this.zzcqZ.equals(acn.zzcqZ)) {
            return false;
        }
        if (this.zzcra == null) {
            if (acn.zzcra != null) {
                return false;
            }
        } else if (!this.zzcra.equals(acn.zzcra)) {
            return false;
        }
        if (this.zzcrb == null) {
            if (acn.zzcrb != null) {
                return false;
            }
        } else if (!this.zzcrb.equals(acn.zzcrb)) {
            return false;
        }
        if (this.zzcrc == null) {
            if (acn.zzcrc != null) {
                return false;
            }
        } else if (!this.zzcrc.equals(acn.zzcrc)) {
            return false;
        }
        if (this.zzcrd == null) {
            if (acn.zzcrd != null) {
                return false;
            }
        } else if (!this.zzcrd.equals(acn.zzcrd)) {
            return false;
        }
        if (this.zzcre == null) {
            if (acn.zzcre != null) {
                return false;
            }
        } else if (!this.zzcre.equals(acn.zzcre)) {
            return false;
        }
        if (this.zzcrf == null) {
            if (acn.zzcrf != null) {
                return false;
            }
        } else if (!this.zzcrf.equals(acn.zzcrf)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? acn.zzcso == null || acn.zzcso.isEmpty() : this.zzcso.equals(acn.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((((((((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + adn.hashCode(this.zzcqN)) * 31) + (this.zzcqO == null ? 0 : this.zzcqO.hashCode())) * 31) + (this.zzcqP == null ? 0 : this.zzcqP.hashCode())) * 31) + (this.zzcqQ == null ? 0 : this.zzcqQ.hashCode())) * 31) + (this.zzcqR == null ? 0 : this.zzcqR.hashCode())) * 31) + (this.zzcqS == null ? 0 : this.zzcqS.hashCode())) * 31) + (this.zzcqT == null ? 0 : this.zzcqT.hashCode())) * 31) + (this.zzcqU == null ? 0 : this.zzcqU.hashCode())) * 31) + (this.zzcqV == null ? 0 : this.zzcqV.hashCode())) * 31) + (this.zzcqW == null ? 0 : this.zzcqW.hashCode())) * 31) + (this.zzcqX == null ? 0 : this.zzcqX.hashCode())) * 31) + (this.zzcqY == null ? 0 : this.zzcqY.hashCode())) * 31) + (this.zzcqZ == null ? 0 : this.zzcqZ.hashCode())) * 31) + (this.zzcra == null ? 0 : this.zzcra.hashCode())) * 31) + (this.zzcrb == null ? 0 : this.zzcrb.hashCode())) * 31) + (this.zzcrc == null ? 0 : this.zzcrc.hashCode())) * 31) + (this.zzcrd == null ? 0 : this.zzcrd.hashCode())) * 31) + (this.zzcre == null ? 0 : this.zzcre.hashCode())) * 31) + (this.zzcrf == null ? 0 : this.zzcrf.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.type != 0) {
            adh.zzr(1, this.type);
        }
        if (this.zzcqN != null && this.zzcqN.length > 0) {
            for (adp adp : this.zzcqN) {
                if (adp != null) {
                    adh.zza(2, adp);
                }
            }
        }
        if (this.zzcqO != null) {
            adh.zza(3, this.zzcqO);
        }
        if (this.zzcqP != null) {
            adh.zza(4, this.zzcqP);
        }
        if (this.zzcqQ != null) {
            adh.zza(5, this.zzcqQ);
        }
        if (this.zzcqR != null) {
            adh.zza(6, this.zzcqR);
        }
        if (this.zzcqS != null) {
            adh.zza(7, this.zzcqS);
        }
        if (this.zzcqT != null) {
            adh.zza(8, this.zzcqT);
        }
        if (this.zzcqU != null) {
            adh.zza(9, this.zzcqU);
        }
        if (this.zzcqV != null) {
            adh.zza(10, this.zzcqV);
        }
        if (this.zzcqW != null) {
            adh.zza(11, this.zzcqW);
        }
        if (this.zzcqX != null) {
            adh.zza(12, this.zzcqX);
        }
        if (this.zzcqY != null) {
            adh.zza(13, this.zzcqY);
        }
        if (this.zzcqZ != null) {
            adh.zza(14, this.zzcqZ);
        }
        if (this.zzcra != null) {
            adh.zza(15, this.zzcra);
        }
        if (this.zzcrb != null) {
            adh.zza(16, this.zzcrb);
        }
        if (this.zzcrc != null) {
            adh.zza(17, this.zzcrc);
        }
        if (this.zzcrd != null) {
            adh.zza(18, this.zzcrd);
        }
        if (this.zzcre != null) {
            adh.zza(19, this.zzcre);
        }
        if (this.zzcrf != null) {
            adh.zza(20, this.zzcrf);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.type != 0) {
            zzn += adh.zzs(1, this.type);
        }
        if (this.zzcqN != null && this.zzcqN.length > 0) {
            for (adp adp : this.zzcqN) {
                if (adp != null) {
                    zzn += adh.zzb(2, adp);
                }
            }
        }
        if (this.zzcqO != null) {
            zzn += adh.zzb(3, this.zzcqO);
        }
        if (this.zzcqP != null) {
            zzn += adh.zzb(4, this.zzcqP);
        }
        if (this.zzcqQ != null) {
            zzn += adh.zzb(5, this.zzcqQ);
        }
        if (this.zzcqR != null) {
            zzn += adh.zzb(6, this.zzcqR);
        }
        if (this.zzcqS != null) {
            zzn += adh.zzb(7, this.zzcqS);
        }
        if (this.zzcqT != null) {
            zzn += adh.zzb(8, this.zzcqT);
        }
        if (this.zzcqU != null) {
            zzn += adh.zzb(9, this.zzcqU);
        }
        if (this.zzcqV != null) {
            zzn += adh.zzb(10, this.zzcqV);
        }
        if (this.zzcqW != null) {
            zzn += adh.zzb(11, this.zzcqW);
        }
        if (this.zzcqX != null) {
            zzn += adh.zzb(12, this.zzcqX);
        }
        if (this.zzcqY != null) {
            zzn += adh.zzb(13, this.zzcqY);
        }
        if (this.zzcqZ != null) {
            zzn += adh.zzb(14, this.zzcqZ);
        }
        if (this.zzcra != null) {
            zzn += adh.zzb(15, this.zzcra);
        }
        if (this.zzcrb != null) {
            zzn += adh.zzb(16, this.zzcrb);
        }
        if (this.zzcrc != null) {
            zzn += adh.zzb(17, this.zzcrc);
        }
        if (this.zzcrd != null) {
            zzn += adh.zzb(18, this.zzcrd);
        }
        if (this.zzcre != null) {
            zzn += adh.zzb(19, this.zzcre);
        }
        return this.zzcrf != null ? zzn + adh.zzb(20, this.zzcrf) : zzn;
    }
}
