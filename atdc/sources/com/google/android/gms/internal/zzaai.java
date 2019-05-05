package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Collections;
import java.util.List;

@zzzn
public final class zzaai extends zza {
    public static final Creator<zzaai> CREATOR = new zzaaj();
    public String body;
    public final int errorCode;
    public final int orientation;
    private int versionCode;
    public final boolean zzAv;
    public final boolean zzAw;
    public final boolean zzAx;
    private zzaae zzMM;
    public final List<String> zzMa;
    public final List<String> zzMb;
    public final List<String> zzMd;
    public final boolean zzMe;
    public final long zzMg;
    public final String zzPi;
    public final boolean zzSH;
    public final boolean zzSV;
    @Nullable
    public String zzSW;
    private zzaau zzTA;
    public String zzTB;
    public final String zzTC;
    @Nullable
    public final zzaee zzTD;
    @Nullable
    public final List<String> zzTE;
    @Nullable
    public final List<String> zzTF;
    public final boolean zzTG;
    @Nullable
    public final zzaak zzTH;
    @Nullable
    public final String zzTI;
    @Nullable
    public final zzaeq zzTJ;
    @Nullable
    public final String zzTK;
    public final boolean zzTL;
    private Bundle zzTM;
    public final boolean zzTh;
    public final long zzTn;
    public final boolean zzTo;
    public final long zzTp;
    public final List<String> zzTq;
    public final String zzTr;
    public final long zzTs;
    public final String zzTt;
    public final boolean zzTu;
    public final String zzTv;
    public final String zzTw;
    public final boolean zzTx;
    public final boolean zzTy;
    public final boolean zzTz;

    public zzaai(int i) {
        this(19, null, null, null, i, null, -1, false, -1, null, -1, -1, null, -1, null, false, null, null, false, false, false, true, false, null, null, null, false, false, null, null, null, false, null, false, null, null, false, null, null, null, true, false, null);
    }

    public zzaai(int i, long j) {
        this(19, null, null, null, i, null, -1, false, -1, null, j, -1, null, -1, null, false, null, null, false, false, false, true, false, null, null, null, false, false, null, null, null, false, null, false, null, null, false, null, null, null, true, false, null);
    }

    zzaai(int i, String str, String str2, List<String> list, int i2, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i3, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, zzaau zzaau, String str7, String str8, boolean z8, boolean z9, zzaee zzaee, List<String> list4, List<String> list5, boolean z10, zzaak zzaak, boolean z11, String str9, List<String> list6, boolean z12, String str10, zzaeq zzaeq, String str11, boolean z13, boolean z14, Bundle bundle) {
        this.versionCode = i;
        this.zzPi = str;
        this.body = str2;
        List list7 = null;
        this.zzMa = list != null ? Collections.unmodifiableList(list) : null;
        this.errorCode = i2;
        this.zzMb = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.zzTn = j;
        this.zzTo = z;
        this.zzTp = j2;
        if (list3 != null) {
            list7 = Collections.unmodifiableList(list3);
        }
        this.zzTq = list7;
        this.zzMg = j3;
        this.orientation = i3;
        this.zzTr = str3;
        this.zzTs = j4;
        this.zzTt = str4;
        this.zzTu = z2;
        this.zzTv = str5;
        this.zzTw = str6;
        this.zzTx = z3;
        this.zzAv = z4;
        this.zzSH = z5;
        this.zzTy = z6;
        this.zzTL = z13;
        this.zzTz = z7;
        this.zzTA = zzaau;
        this.zzTB = str7;
        this.zzTC = str8;
        if (this.body == null && this.zzTA != null) {
            zzabi zzabi = (zzabi) this.zzTA.zza(zzabi.CREATOR);
            if (!(zzabi == null || TextUtils.isEmpty(zzabi.zzHg))) {
                this.body = zzabi.zzHg;
            }
        }
        this.zzAw = z8;
        this.zzAx = z9;
        this.zzTD = zzaee;
        this.zzTE = list4;
        this.zzTF = list5;
        this.zzTG = z10;
        this.zzTH = zzaak;
        this.zzSV = z11;
        this.zzSW = str9;
        this.zzMd = list6;
        this.zzMe = z12;
        this.zzTI = str10;
        this.zzTJ = zzaeq;
        this.zzTK = str11;
        this.zzTh = z14;
        this.zzTM = bundle;
    }

    public zzaai(zzaae zzaae, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, String str5, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str6, boolean z7, boolean z8, zzaee zzaee, List<String> list4, List<String> list5, boolean z9, zzaak zzaak, boolean z10, String str7, List<String> list6, boolean z11, String str8, zzaeq zzaeq, String str9, boolean z12, boolean z13) {
        this(19, str, str2, list, -2, list2, j, z, -1, list3, j3, i, str3, j4, str4, false, null, str5, z2, z3, z4, z5, false, null, null, str6, z7, z8, zzaee, list4, list5, z9, zzaak, z10, str7, list6, z11, str8, zzaeq, str9, z12, z13, null);
        this.zzMM = zzaae;
    }

    public zzaai(zzaae zzaae, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str7, boolean z8, boolean z9, zzaee zzaee, List<String> list4, List<String> list5, boolean z10, zzaak zzaak, boolean z11, String str8, List<String> list6, boolean z12, String str9, zzaeq zzaeq, String str10, boolean z13, boolean z14) {
        this(19, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, null, null, str7, z8, z9, zzaee, list4, list5, z10, zzaak, z11, str8, list6, z12, str9, zzaeq, str10, z13, z14, null);
        this.zzMM = zzaae;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (!(this.zzMM == null || this.zzMM.versionCode < 9 || TextUtils.isEmpty(this.body))) {
            this.zzTA = new zzaau(new zzabi(this.body));
            this.body = null;
        }
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 2, this.zzPi, false);
        zzd.zza(parcel, 3, this.body, false);
        zzd.zzb(parcel, 4, this.zzMa, false);
        zzd.zzc(parcel, 5, this.errorCode);
        zzd.zzb(parcel, 6, this.zzMb, false);
        zzd.zza(parcel, 7, this.zzTn);
        zzd.zza(parcel, 8, this.zzTo);
        zzd.zza(parcel, 9, this.zzTp);
        zzd.zzb(parcel, 10, this.zzTq, false);
        zzd.zza(parcel, 11, this.zzMg);
        zzd.zzc(parcel, 12, this.orientation);
        zzd.zza(parcel, 13, this.zzTr, false);
        zzd.zza(parcel, 14, this.zzTs);
        zzd.zza(parcel, 15, this.zzTt, false);
        zzd.zza(parcel, 18, this.zzTu);
        zzd.zza(parcel, 19, this.zzTv, false);
        zzd.zza(parcel, 21, this.zzTw, false);
        zzd.zza(parcel, 22, this.zzTx);
        zzd.zza(parcel, 23, this.zzAv);
        zzd.zza(parcel, 24, this.zzSH);
        zzd.zza(parcel, 25, this.zzTy);
        zzd.zza(parcel, 26, this.zzTz);
        zzd.zza(parcel, 28, this.zzTA, i, false);
        zzd.zza(parcel, 29, this.zzTB, false);
        zzd.zza(parcel, 30, this.zzTC, false);
        zzd.zza(parcel, 31, this.zzAw);
        zzd.zza(parcel, 32, this.zzAx);
        zzd.zza(parcel, 33, this.zzTD, i, false);
        zzd.zzb(parcel, 34, this.zzTE, false);
        zzd.zzb(parcel, 35, this.zzTF, false);
        zzd.zza(parcel, 36, this.zzTG);
        zzd.zza(parcel, 37, this.zzTH, i, false);
        zzd.zza(parcel, 38, this.zzSV);
        zzd.zza(parcel, 39, this.zzSW, false);
        zzd.zzb(parcel, 40, this.zzMd, false);
        zzd.zza(parcel, 42, this.zzMe);
        zzd.zza(parcel, 43, this.zzTI, false);
        zzd.zza(parcel, 44, this.zzTJ, i, false);
        zzd.zza(parcel, 45, this.zzTK, false);
        zzd.zza(parcel, 46, this.zzTL);
        zzd.zza(parcel, 47, this.zzTh);
        zzd.zza(parcel, 48, this.zzTM, false);
        zzd.zzI(parcel, zze);
    }
}
