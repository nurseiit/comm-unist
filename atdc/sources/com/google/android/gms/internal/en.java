package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class en {
    private final List<ei> zzbLJ;
    private final List<ei> zzbLK;
    private final List<String> zzbLL;
    private final List<String> zzbLM;
    private final List<String> zzbLN;
    private final List<String> zzbLO;
    private final List<ei> zzbLb;
    private final List<ei> zzbLc;
    private final List<ei> zzbLd;
    private final List<ei> zzbLe;

    private en() {
        this.zzbLb = new ArrayList();
        this.zzbLc = new ArrayList();
        this.zzbLd = new ArrayList();
        this.zzbLe = new ArrayList();
        this.zzbLJ = new ArrayList();
        this.zzbLK = new ArrayList();
        this.zzbLL = new ArrayList();
        this.zzbLM = new ArrayList();
        this.zzbLN = new ArrayList();
        this.zzbLO = new ArrayList();
    }

    public final em zzDE() {
        return new em(this.zzbLb, this.zzbLc, this.zzbLd, this.zzbLe, this.zzbLJ, this.zzbLK, this.zzbLL, this.zzbLM, this.zzbLN, this.zzbLO);
    }

    public final en zzd(ei eiVar) {
        this.zzbLb.add(eiVar);
        return this;
    }

    public final en zze(ei eiVar) {
        this.zzbLc.add(eiVar);
        return this;
    }

    public final en zzf(ei eiVar) {
        this.zzbLd.add(eiVar);
        return this;
    }

    public final en zzg(ei eiVar) {
        this.zzbLe.add(eiVar);
        return this;
    }

    public final en zzge(String str) {
        this.zzbLN.add(str);
        return this;
    }

    public final en zzgf(String str) {
        this.zzbLO.add(str);
        return this;
    }

    public final en zzgg(String str) {
        this.zzbLL.add(str);
        return this;
    }

    public final en zzgh(String str) {
        this.zzbLM.add(str);
        return this;
    }

    public final en zzh(ei eiVar) {
        this.zzbLJ.add(eiVar);
        return this;
    }

    public final en zzi(ei eiVar) {
        this.zzbLK.add(eiVar);
        return this;
    }
}
