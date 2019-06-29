package com.google.android.gms.internal;

public final class vt {
    private final qr zzbZf;
    private final vq zzbZj;

    public vt(qr qrVar, vq vqVar) {
        this.zzbZf = qrVar;
        this.zzbZj = vqVar;
    }

    public static vt zzM(qr qrVar) {
        return new vt(qrVar, vq.zzcgZ);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        vt vtVar = (vt) obj;
        return this.zzbZf.equals(vtVar.zzbZf) && this.zzbZj.equals(vtVar.zzbZj);
    }

    public final int hashCode() {
        return (this.zzbZf.hashCode() * 31) + this.zzbZj.hashCode();
    }

    public final boolean isDefault() {
        return this.zzbZj.isDefault();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbZf);
        String valueOf2 = String.valueOf(this.zzbZj);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(":");
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    public final qr zzFq() {
        return this.zzbZf;
    }

    public final xe zzIm() {
        return this.zzbZj.zzIm();
    }

    public final boolean zzIq() {
        return this.zzbZj.zzIq();
    }

    public final vq zzIu() {
        return this.zzbZj;
    }
}
