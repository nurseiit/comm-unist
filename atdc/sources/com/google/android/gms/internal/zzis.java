package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

@zzzn
public final class zzis {
    private Bundle mExtras;
    private long zzAd;
    private int zzAe;
    private List<String> zzAf;
    private boolean zzAg;
    private int zzAh;
    private String zzAi;
    private zzlt zzAj;
    private String zzAk;
    private Bundle zzAl;
    private Bundle zzAm;
    private List<String> zzAn;
    private String zzAo;
    private String zzAp;
    private boolean zzAq;
    private Location zzde;
    private boolean zzsu;

    public zzis() {
        this.zzAd = -1;
        this.mExtras = new Bundle();
        this.zzAe = -1;
        this.zzAf = new ArrayList();
        this.zzAg = false;
        this.zzAh = -1;
        this.zzsu = false;
        this.zzAi = null;
        this.zzAj = null;
        this.zzde = null;
        this.zzAk = null;
        this.zzAl = new Bundle();
        this.zzAm = new Bundle();
        this.zzAn = new ArrayList();
        this.zzAo = null;
        this.zzAp = null;
        this.zzAq = false;
    }

    public zzis(zzir zzir) {
        this.zzAd = zzir.zzzN;
        this.mExtras = zzir.extras;
        this.zzAe = zzir.zzzO;
        this.zzAf = zzir.zzzP;
        this.zzAg = zzir.zzzQ;
        this.zzAh = zzir.zzzR;
        this.zzsu = zzir.zzzS;
        this.zzAi = zzir.zzzT;
        this.zzAj = zzir.zzzU;
        this.zzde = zzir.zzzV;
        this.zzAk = zzir.zzzW;
        this.zzAl = zzir.zzzX;
        this.zzAm = zzir.zzzY;
        this.zzAn = zzir.zzzZ;
        this.zzAo = zzir.zzAa;
        this.zzAp = zzir.zzAb;
    }

    public final zzis zza(@Nullable Location location) {
        this.zzde = null;
        return this;
    }

    public final zzir zzdj() {
        long j = this.zzAd;
        Bundle bundle = this.mExtras;
        int i = this.zzAe;
        List list = this.zzAf;
        boolean z = this.zzAg;
        int i2 = this.zzAh;
        boolean z2 = this.zzsu;
        String str = this.zzAi;
        zzlt zzlt = this.zzAj;
        Location location = this.zzde;
        String str2 = this.zzAk;
        Bundle bundle2 = this.zzAl;
        Bundle bundle3 = this.zzAm;
        Bundle bundle4 = bundle3;
        Bundle bundle5 = bundle4;
        return new zzir(7, j, bundle, i, list, z, i2, z2, str, zzlt, location, str2, bundle2, bundle5, this.zzAn, this.zzAo, this.zzAp, false);
    }
}
