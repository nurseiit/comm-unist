package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.List;
import java.util.concurrent.Future;

@zzzn
public final class zzaaf {
    public final ApplicationInfo applicationInfo;
    public final boolean zzMe;
    @Nullable
    public final PackageInfo zzSA;
    public final String zzSC;
    public final String zzSD;
    public final Bundle zzSE;
    public final int zzSF;
    public final Bundle zzSG;
    public final boolean zzSH;
    public final int zzSI;
    public final int zzSJ;
    public final String zzSK;
    public final long zzSL;
    public final String zzSM;
    @Nullable
    public final List<String> zzSN;
    public final List<String> zzSO;
    public final String zzSQ;
    public final float zzSR;
    public final int zzSS;
    public final int zzST;
    public final boolean zzSU;
    public final boolean zzSV;
    public final boolean zzSX;
    public final String zzSY;
    public final int zzSZ;
    @Nullable
    public final Bundle zzSy;
    public final zzir zzSz;
    public final Bundle zzTa;
    public final String zzTb;
    public final boolean zzTc;
    @Nullable
    public final Bundle zzTd;
    public final boolean zzTh;
    public final String zzTi;
    public final List<String> zzTj;
    public final Future<String> zzTk;
    public final Future<String> zzTl;
    public final String zzvQ;
    public final String zzvR;
    public final zzaje zzvT;
    public final zziv zzvX;
    public final zzon zzwj;
    @Nullable
    public final zzky zzwl;
    public final List<Integer> zzwn;
    public final List<String> zzwq;
    public final float zzxR;

    public zzaaf(@Nullable Bundle bundle, zzir zzir, zziv zziv, String str, ApplicationInfo applicationInfo, @Nullable PackageInfo packageInfo, String str2, String str3, zzaje zzaje, Bundle bundle2, List<String> list, List<String> list2, Bundle bundle3, boolean z, int i, int i2, float f, String str4, long j, String str5, @Nullable List<String> list3, String str6, zzon zzon, String str7, float f2, boolean z2, int i3, int i4, boolean z3, boolean z4, Future<String> future, String str8, boolean z5, int i5, Bundle bundle4, String str9, @Nullable zzky zzky, boolean z6, Bundle bundle5, boolean z7, Future<String> future2, List<Integer> list4, String str10, List<String> list5) {
        List list6;
        List<String> list7 = list;
        this.zzSy = bundle;
        this.zzSz = zzir;
        this.zzvX = zziv;
        this.zzvR = str;
        this.applicationInfo = applicationInfo;
        this.zzSA = packageInfo;
        this.zzSC = str2;
        this.zzSD = str3;
        this.zzvT = zzaje;
        this.zzSE = bundle2;
        this.zzSH = z;
        this.zzSI = i;
        this.zzSJ = i2;
        this.zzxR = f;
        if (list7 == null || list7.size() <= 0) {
            this.zzSF = 0;
            list6 = null;
            this.zzwq = null;
        } else {
            this.zzSF = 3;
            this.zzwq = list7;
            list6 = list2;
        }
        this.zzSO = list6;
        this.zzSG = bundle3;
        this.zzSK = str4;
        this.zzSL = j;
        this.zzSM = str5;
        this.zzSN = list3;
        this.zzvQ = str6;
        this.zzwj = zzon;
        this.zzSQ = str7;
        this.zzSR = f2;
        this.zzSX = z2;
        this.zzSS = i3;
        this.zzST = i4;
        this.zzSU = z3;
        this.zzSV = z4;
        this.zzTk = future;
        this.zzSY = str8;
        this.zzMe = z5;
        this.zzSZ = i5;
        this.zzTa = bundle4;
        this.zzTb = str9;
        this.zzwl = zzky;
        this.zzTc = z6;
        this.zzTd = bundle5;
        this.zzTh = z7;
        this.zzTl = future2;
        this.zzwn = list4;
        this.zzTi = str10;
        this.zzTj = list5;
    }
}
