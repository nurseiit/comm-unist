package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbtl extends zza {
    public static final Creator<zzbtl> CREATOR = new zzbtm();
    private String mSessionId;
    private String zzaRF;
    private List<String> zzaRL;
    private boolean zzaRM;
    private boolean zzaRN;
    private boolean zzaRO;
    private String zzaRP;
    private zzbtt zzaRQ;
    private zzbtr zzaRR;
    private zzbtx zzaRS;
    private zzbtz zzaRT;
    private zzbub zzaRU;
    private zzbtv zzaRV;
    private zzbtp zzaRW;
    private zzbtj zzaRX;
    private zzbth zzaRY;
    private String zzafe;

    zzbtl(String str, String str2, List<String> list, boolean z, boolean z2, boolean z3, String str3, String str4, zzbtt zzbtt, zzbtr zzbtr, zzbtx zzbtx, zzbtz zzbtz, zzbub zzbub, zzbtv zzbtv, zzbtp zzbtp, zzbtj zzbtj, zzbth zzbth) {
        this.mSessionId = str;
        this.zzafe = str2;
        this.zzaRL = list;
        this.zzaRM = z;
        this.zzaRN = z2;
        this.zzaRO = z3;
        this.zzaRF = str3;
        this.zzaRP = str4;
        this.zzaRQ = zzbtt;
        this.zzaRR = zzbtr;
        this.zzaRS = zzbtx;
        this.zzaRT = zzbtz;
        this.zzaRU = zzbub;
        this.zzaRV = zzbtv;
        this.zzaRW = zzbtp;
        this.zzaRX = zzbtj;
        this.zzaRY = zzbth;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.mSessionId, false);
        zzd.zza(parcel, 3, this.zzafe, false);
        zzd.zzb(parcel, 4, this.zzaRL, false);
        zzd.zza(parcel, 5, this.zzaRM);
        zzd.zza(parcel, 6, this.zzaRF, false);
        zzd.zza(parcel, 7, this.zzaRP, false);
        zzd.zza(parcel, 8, this.zzaRQ, i, false);
        zzd.zza(parcel, 9, this.zzaRR, i, false);
        zzd.zza(parcel, 10, this.zzaRS, i, false);
        zzd.zza(parcel, 11, this.zzaRT, i, false);
        zzd.zza(parcel, 12, this.zzaRU, i, false);
        zzd.zza(parcel, 13, this.zzaRV, i, false);
        zzd.zza(parcel, 14, this.zzaRW, i, false);
        zzd.zza(parcel, 15, this.zzaRX, i, false);
        zzd.zza(parcel, 16, this.zzaRN);
        zzd.zza(parcel, 17, this.zzaRO);
        zzd.zza(parcel, 18, this.zzaRY, i, false);
        zzd.zzI(parcel, zze);
    }
}
