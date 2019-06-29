package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@zzzn
public final class zzaff {
    public final int errorCode;
    public final int orientation;
    @Nullable
    public final zzua zzMG;
    @Nullable
    public final zzut zzMH;
    @Nullable
    public final String zzMI;
    @Nullable
    public final zzud zzMJ;
    public final List<String> zzMa;
    public final List<String> zzMb;
    @Nullable
    public final List<String> zzMd;
    public final long zzMg;
    @Nullable
    public final zzaka zzPg;
    public final String zzSC;
    public final zzir zzSz;
    @Nullable
    public final zzaee zzTD;
    @Nullable
    public final List<String> zzTF;
    public final boolean zzTG;
    private zzaak zzTH;
    public final String zzTK;
    private long zzTn;
    public final boolean zzTo;
    private long zzTp;
    public final List<String> zzTq;
    public final String zzTt;
    public final JSONObject zzXL;
    public boolean zzXM;
    public final zzub zzXN;
    @Nullable
    public final String zzXO;
    public final zziv zzXP;
    @Nullable
    public final List<String> zzXQ;
    public final long zzXR;
    public final long zzXS;
    @Nullable
    public final zzoa zzXT;
    public boolean zzXU;
    public boolean zzXV;
    public boolean zzXW;
    private zzig zzXX;

    public zzaff(zzafg zzafg, @Nullable zzaka zzaka, @Nullable zzua zzua, @Nullable zzut zzut, @Nullable String str, @Nullable zzud zzud, @Nullable zzoa zzoa, @Nullable String str2) {
        zzafg zzafg2 = zzafg;
        zzir zzir = zzafg2.zzUj.zzSz;
        List list = zzafg2.zzXY.zzMa;
        int i = zzafg2.errorCode;
        List list2 = zzafg2.zzXY.zzMb;
        List list3 = zzafg2.zzXY.zzTq;
        int i2 = zzafg2.zzXY.orientation;
        long j = zzafg2.zzXY.zzMg;
        String str3 = zzafg2.zzUj.zzSC;
        boolean z = zzafg2.zzXY.zzTo;
        zzub zzub = zzafg2.zzXN;
        long j2 = zzafg2.zzXY.zzTp;
        zziv zziv = zzafg2.zzvX;
        long j3 = j2;
        long j4 = zzafg2.zzXY.zzTn;
        long j5 = zzafg2.zzXR;
        j2 = zzafg2.zzXS;
        String str4 = zzafg2.zzXY.zzTt;
        long j6 = j2;
        JSONObject jSONObject = zzafg2.zzXL;
        zzaee zzaee = zzafg2.zzXY.zzTD;
        String str5 = str4;
        List list4 = zzafg2.zzXY.zzTE;
        List list5 = zzafg2.zzXY.zzTE;
        boolean z2 = zzafg2.zzXY.zzTG;
        zzaak zzaak = zzafg2.zzXY.zzTH;
        List list6 = zzafg2.zzXY.zzMd;
        String str6 = zzafg2.zzXY.zzTK;
        zziv zziv2 = zziv;
        zzaee zzaee2 = zzaee;
        JSONObject jSONObject2 = jSONObject;
        this(zzir, null, list, i, list2, list3, i2, j, str3, z, null, null, null, zzub, null, j3, zziv2, j4, j5, j6, str5, jSONObject2, null, zzaee2, list4, list5, z2, zzaak, null, list6, str6, zzafg2.zzXX);
    }

    public zzaff(zzir zzir, @Nullable zzaka zzaka, List<String> list, int i, List<String> list2, List<String> list3, int i2, long j, String str, boolean z, @Nullable zzua zzua, @Nullable zzut zzut, @Nullable String str2, zzub zzub, @Nullable zzud zzud, long j2, zziv zziv, long j3, long j4, long j5, String str3, JSONObject jSONObject, @Nullable zzoa zzoa, zzaee zzaee, List<String> list4, List<String> list5, boolean z2, zzaak zzaak, @Nullable String str4, List<String> list6, String str5, zzig zzig) {
        this.zzXU = false;
        this.zzXV = false;
        this.zzXW = false;
        this.zzSz = zzir;
        this.zzPg = zzaka;
        this.zzMa = zzn(list);
        this.errorCode = i;
        this.zzMb = zzn(list2);
        this.zzTq = zzn(list3);
        this.orientation = i2;
        this.zzMg = j;
        this.zzSC = str;
        this.zzTo = z;
        this.zzMG = zzua;
        this.zzMH = zzut;
        this.zzMI = str2;
        this.zzXN = zzub;
        this.zzMJ = zzud;
        this.zzTp = j2;
        this.zzXP = zziv;
        this.zzTn = j3;
        this.zzXR = j4;
        this.zzXS = j5;
        this.zzTt = str3;
        this.zzXL = jSONObject;
        this.zzXT = zzoa;
        this.zzTD = zzaee;
        this.zzXQ = zzn(list4);
        this.zzTF = zzn(list5);
        this.zzTG = z2;
        this.zzTH = zzaak;
        this.zzXO = str4;
        this.zzMd = zzn(list6);
        this.zzTK = str5;
        this.zzXX = zzig;
    }

    @Nullable
    private static <T> List<T> zzn(@Nullable List<T> list) {
        return list == null ? null : Collections.unmodifiableList(list);
    }

    public final boolean zzcn() {
        return (this.zzPg == null || this.zzPg.zziw() == null) ? false : this.zzPg.zziw().zzcn();
    }
}
