package com.google.android.gms.internal;

import java.io.IOException;

public final class adt extends adj<adt> {
    public String url;
    public Integer zzcsJ;
    private Integer zzcsK;
    public String zzcsL;
    private String zzcsM;
    public adu zzcsN;
    public aeb[] zzcsO;
    public String zzcsP;
    public aea zzcsQ;
    private Boolean zzcsR;
    private String[] zzcsS;
    private String zzcsT;
    private Boolean zzcsU;
    private Boolean zzcsV;
    private byte[] zzcsW;
    public aec zzcsX;

    public adt() {
        this.zzcsJ = null;
        this.zzcsK = null;
        this.url = null;
        this.zzcsL = null;
        this.zzcsM = null;
        this.zzcsN = null;
        this.zzcsO = aeb.zzLX();
        this.zzcsP = null;
        this.zzcsQ = null;
        this.zzcsR = null;
        this.zzcsS = ads.EMPTY_STRING_ARRAY;
        this.zzcsT = null;
        this.zzcsU = null;
        this.zzcsV = null;
        this.zzcsW = null;
        this.zzcsX = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.url != null) {
            adh.zzl(1, this.url);
        }
        if (this.zzcsL != null) {
            adh.zzl(2, this.zzcsL);
        }
        if (this.zzcsM != null) {
            adh.zzl(3, this.zzcsM);
        }
        if (this.zzcsO != null && this.zzcsO.length > 0) {
            for (adp adp : this.zzcsO) {
                if (adp != null) {
                    adh.zza(4, adp);
                }
            }
        }
        if (this.zzcsR != null) {
            adh.zzk(5, this.zzcsR.booleanValue());
        }
        if (this.zzcsS != null && this.zzcsS.length > 0) {
            for (String str : this.zzcsS) {
                if (str != null) {
                    adh.zzl(6, str);
                }
            }
        }
        if (this.zzcsT != null) {
            adh.zzl(7, this.zzcsT);
        }
        if (this.zzcsU != null) {
            adh.zzk(8, this.zzcsU.booleanValue());
        }
        if (this.zzcsV != null) {
            adh.zzk(9, this.zzcsV.booleanValue());
        }
        if (this.zzcsJ != null) {
            adh.zzr(10, this.zzcsJ.intValue());
        }
        if (this.zzcsK != null) {
            adh.zzr(11, this.zzcsK.intValue());
        }
        if (this.zzcsN != null) {
            adh.zza(12, this.zzcsN);
        }
        if (this.zzcsP != null) {
            adh.zzl(13, this.zzcsP);
        }
        if (this.zzcsQ != null) {
            adh.zza(14, this.zzcsQ);
        }
        if (this.zzcsW != null) {
            adh.zzb(15, this.zzcsW);
        }
        if (this.zzcsX != null) {
            adh.zza(17, this.zzcsX);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn();
        if (this.url != null) {
            zzn += adh.zzm(1, this.url);
        }
        if (this.zzcsL != null) {
            zzn += adh.zzm(2, this.zzcsL);
        }
        if (this.zzcsM != null) {
            zzn += adh.zzm(3, this.zzcsM);
        }
        if (this.zzcsO != null && this.zzcsO.length > 0) {
            i = zzn;
            for (adp adp : this.zzcsO) {
                if (adp != null) {
                    i += adh.zzb(4, adp);
                }
            }
            zzn = i;
        }
        if (this.zzcsR != null) {
            this.zzcsR.booleanValue();
            zzn += adh.zzct(5) + 1;
        }
        if (this.zzcsS != null && this.zzcsS.length > 0) {
            i = 0;
            int i2 = 0;
            for (String str : this.zzcsS) {
                if (str != null) {
                    i2++;
                    i += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i) + (i2 * 1);
        }
        if (this.zzcsT != null) {
            zzn += adh.zzm(7, this.zzcsT);
        }
        if (this.zzcsU != null) {
            this.zzcsU.booleanValue();
            zzn += adh.zzct(8) + 1;
        }
        if (this.zzcsV != null) {
            this.zzcsV.booleanValue();
            zzn += adh.zzct(9) + 1;
        }
        if (this.zzcsJ != null) {
            zzn += adh.zzs(10, this.zzcsJ.intValue());
        }
        if (this.zzcsK != null) {
            zzn += adh.zzs(11, this.zzcsK.intValue());
        }
        if (this.zzcsN != null) {
            zzn += adh.zzb(12, this.zzcsN);
        }
        if (this.zzcsP != null) {
            zzn += adh.zzm(13, this.zzcsP);
        }
        if (this.zzcsQ != null) {
            zzn += adh.zzb(14, this.zzcsQ);
        }
        if (this.zzcsW != null) {
            zzn += adh.zzc(15, this.zzcsW);
        }
        return this.zzcsX != null ? zzn + adh.zzb(17, this.zzcsX) : zzn;
    }
}
