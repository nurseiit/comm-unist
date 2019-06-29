package com.google.android.gms.internal;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class vq {
    public static final vq zzcgZ = new vq();
    private xe zzcgV = xr.zzJl();
    private Integer zzcha;
    private int zzchb;
    private xm zzchc = null;
    private wp zzchd = null;
    private xm zzche = null;
    private wp zzchf = null;
    private String zzchg = null;

    public static vq zzF(Map<String, Object> map) {
        String str;
        vq vqVar = new vq();
        vqVar.zzcha = (Integer) map.get("l");
        if (map.containsKey("sp")) {
            vqVar.zzchc = zze(xp.zza(map.get("sp"), xd.zzJb()));
            str = (String) map.get("sn");
            if (str != null) {
                vqVar.zzchd = wp.zzgT(str);
            }
        }
        if (map.containsKey("ep")) {
            vqVar.zzche = zze(xp.zza(map.get("ep"), xd.zzJb()));
            str = (String) map.get("en");
            if (str != null) {
                vqVar.zzchf = wp.zzgT(str);
            }
        }
        str = (String) map.get("vf");
        if (str != null) {
            vqVar.zzchb = str.equals("l") ? vs.zzchi : vs.zzchj;
        }
        String str2 = (String) map.get("i");
        if (str2 != null) {
            xe zzJm;
            if (str2.equals(".value")) {
                zzJm = xw.zzJm();
            } else if (str2.equals(".key")) {
                zzJm = xg.zzJh();
            } else if (str2.equals(".priority")) {
                throw new IllegalStateException("queryDefinition shouldn't ever be .priority since it's the default");
            } else {
                zzJm = new xq(new qr(str2));
            }
            vqVar.zzcgV = zzJm;
        }
        return vqVar;
    }

    private final vq zzIn() {
        vq vqVar = new vq();
        vqVar.zzcha = this.zzcha;
        vqVar.zzchc = this.zzchc;
        vqVar.zzchd = this.zzchd;
        vqVar.zzche = this.zzche;
        vqVar.zzchf = this.zzchf;
        vqVar.zzchb = this.zzchb;
        vqVar.zzcgV = this.zzcgV;
        return vqVar;
    }

    /* JADX WARNING: Missing block: B:15:0x0056, code skipped:
            return r3;
     */
    private static com.google.android.gms.internal.xm zze(com.google.android.gms.internal.xm r3) {
        /*
        r0 = r3 instanceof com.google.android.gms.internal.xu;
        if (r0 != 0) goto L_0x0056;
    L_0x0004:
        r0 = r3 instanceof com.google.android.gms.internal.wo;
        if (r0 != 0) goto L_0x0056;
    L_0x0008:
        r0 = r3 instanceof com.google.android.gms.internal.xc;
        if (r0 != 0) goto L_0x0056;
    L_0x000c:
        r0 = r3 instanceof com.google.android.gms.internal.xd;
        if (r0 == 0) goto L_0x0011;
    L_0x0010:
        return r3;
    L_0x0011:
        r0 = r3 instanceof com.google.android.gms.internal.xk;
        if (r0 == 0) goto L_0x002d;
    L_0x0015:
        r0 = new com.google.android.gms.internal.xc;
        r3 = r3.getValue();
        r3 = (java.lang.Long) r3;
        r1 = r3.doubleValue();
        r3 = java.lang.Double.valueOf(r1);
        r1 = com.google.android.gms.internal.xd.zzJb();
        r0.<init>(r3, r1);
        return r0;
    L_0x002d:
        r0 = new java.lang.IllegalStateException;
        r3 = r3.getValue();
        r3 = java.lang.String.valueOf(r3);
        r1 = java.lang.String.valueOf(r3);
        r1 = r1.length();
        r1 = r1 + 43;
        r2 = new java.lang.StringBuilder;
        r2.<init>(r1);
        r1 = "Unexpected value passed to normalizeValue: ";
        r2.append(r1);
        r2.append(r3);
        r3 = r2.toString();
        r0.<init>(r3);
        throw r0;
    L_0x0056:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vq.zze(com.google.android.gms.internal.xm):com.google.android.gms.internal.xm");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        vq vqVar = (vq) obj;
        if (this.zzcha != null) {
            if (!this.zzcha.equals(vqVar.zzcha)) {
                return false;
            }
        } else if (vqVar.zzcha != null) {
            return false;
        }
        if (this.zzcgV != null) {
            if (!this.zzcgV.equals(vqVar.zzcgV)) {
                return false;
            }
        } else if (vqVar.zzcgV != null) {
            return false;
        }
        if (this.zzchf != null) {
            if (!this.zzchf.equals(vqVar.zzchf)) {
                return false;
            }
        } else if (vqVar.zzchf != null) {
            return false;
        }
        if (this.zzche != null) {
            if (!this.zzche.equals(vqVar.zzche)) {
                return false;
            }
        } else if (vqVar.zzche != null) {
            return false;
        }
        if (this.zzchd != null) {
            if (!this.zzchd.equals(vqVar.zzchd)) {
                return false;
            }
        } else if (vqVar.zzchd != null) {
            return false;
        }
        if (this.zzchc != null) {
            if (!this.zzchc.equals(vqVar.zzchc)) {
                return false;
            }
        } else if (vqVar.zzchc != null) {
            return false;
        }
        return zzIo() == vqVar.zzIo();
    }

    public final int getLimit() {
        if (zzIk()) {
            return this.zzcha.intValue();
        }
        throw new IllegalArgumentException("Cannot get limit if limit has not been set");
    }

    public final int hashCode() {
        int i = 0;
        int intValue = (((((((((((this.zzcha != null ? this.zzcha.intValue() : 0) * 31) + (zzIo() ? 1231 : 1237)) * 31) + (this.zzchc != null ? this.zzchc.hashCode() : 0)) * 31) + (this.zzchd != null ? this.zzchd.hashCode() : 0)) * 31) + (this.zzche != null ? this.zzche.hashCode() : 0)) * 31) + (this.zzchf != null ? this.zzchf.hashCode() : 0)) * 31;
        if (this.zzcgV != null) {
            i = this.zzcgV.hashCode();
        }
        return intValue + i;
    }

    public final boolean isDefault() {
        return zzIq() && this.zzcgV.equals(xr.zzJl());
    }

    public final String toString() {
        return zzIp().toString();
    }

    public final boolean zzIe() {
        return this.zzchc != null;
    }

    public final xm zzIf() {
        if (zzIe()) {
            return this.zzchc;
        }
        throw new IllegalArgumentException("Cannot get index start value if start has not been set");
    }

    public final wp zzIg() {
        if (zzIe()) {
            return this.zzchd != null ? this.zzchd : wp.zzIJ();
        } else {
            throw new IllegalArgumentException("Cannot get index start name if start has not been set");
        }
    }

    public final boolean zzIh() {
        return this.zzche != null;
    }

    public final xm zzIi() {
        if (zzIh()) {
            return this.zzche;
        }
        throw new IllegalArgumentException("Cannot get index end value if start has not been set");
    }

    public final wp zzIj() {
        if (zzIh()) {
            return this.zzchf != null ? this.zzchf : wp.zzIK();
        } else {
            throw new IllegalArgumentException("Cannot get index end name if start has not been set");
        }
    }

    public final boolean zzIk() {
        return this.zzcha != null;
    }

    public final boolean zzIl() {
        return zzIk() && this.zzchb != 0;
    }

    public final xe zzIm() {
        return this.zzcgV;
    }

    public final boolean zzIo() {
        return this.zzchb != 0 ? this.zzchb == vs.zzchi : zzIe();
    }

    public final Map<String, Object> zzIp() {
        HashMap hashMap = new HashMap();
        if (zzIe()) {
            hashMap.put("sp", this.zzchc.getValue());
            if (this.zzchd != null) {
                hashMap.put("sn", this.zzchd.asString());
            }
        }
        if (zzIh()) {
            hashMap.put("ep", this.zzche.getValue());
            if (this.zzchf != null) {
                hashMap.put("en", this.zzchf.asString());
            }
        }
        if (this.zzcha != null) {
            Object obj;
            Object obj2;
            hashMap.put("l", this.zzcha);
            int i = this.zzchb;
            if (i == 0) {
                i = zzIe() ? vs.zzchi : vs.zzchj;
            }
            switch (vr.zzchh[i - 1]) {
                case 1:
                    obj = "vf";
                    obj2 = "l";
                    break;
                case 2:
                    obj = "vf";
                    obj2 = "r";
                    break;
            }
            hashMap.put(obj, obj2);
        }
        if (!this.zzcgV.equals(xr.zzJl())) {
            hashMap.put("i", this.zzcgV.zzJd());
        }
        return hashMap;
    }

    public final boolean zzIq() {
        return (zzIe() || zzIh() || zzIk()) ? false : true;
    }

    public final String zzIr() {
        if (this.zzchg == null) {
            try {
                this.zzchg = yr.zzak(zzIp());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return this.zzchg;
    }

    public final wf zzIs() {
        return zzIq() ? new wd(this.zzcgV) : zzIk() ? new we(this) : new wh(this);
    }

    public final vq zza(xe xeVar) {
        vq zzIn = zzIn();
        zzIn.zzcgV = xeVar;
        return zzIn;
    }

    public final vq zza(xm xmVar, wp wpVar) {
        zd.zzaF(!(xmVar instanceof xk));
        vq zzIn = zzIn();
        zzIn.zzchc = xmVar;
        zzIn.zzchd = wpVar;
        return zzIn;
    }

    public final vq zzb(xm xmVar, wp wpVar) {
        zd.zzaF(!(xmVar instanceof xk));
        vq zzIn = zzIn();
        zzIn.zzche = xmVar;
        zzIn.zzchf = wpVar;
        return zzIn;
    }

    public final vq zzbW(int i) {
        vq zzIn = zzIn();
        zzIn.zzcha = Integer.valueOf(i);
        zzIn.zzchb = vs.zzchi;
        return zzIn;
    }

    public final vq zzbX(int i) {
        vq zzIn = zzIn();
        zzIn.zzcha = Integer.valueOf(i);
        zzIn.zzchb = vs.zzchj;
        return zzIn;
    }
}
