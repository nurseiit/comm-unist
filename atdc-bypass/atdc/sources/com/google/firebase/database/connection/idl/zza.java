package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.oc;
import com.google.android.gms.internal.ok;
import java.util.ArrayList;
import java.util.List;

final class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<zza> CREATOR = new zzb();
    private List<String> zzcao;
    private List<String> zzcap;

    public zza(List<String> list, List<String> list2) {
        this.zzcao = list;
        this.zzcap = list2;
    }

    public static oc zza(zza zza) {
        ArrayList arrayList = new ArrayList(zza.zzcao.size());
        for (String zzgG : zza.zzcao) {
            arrayList.add(ok.zzgG(zzgG));
        }
        return new oc(arrayList, zza.zzcap);
    }

    public static zza zza(oc ocVar) {
        List<List> zzFR = ocVar.zzFR();
        ArrayList arrayList = new ArrayList(zzFR.size());
        for (List zzR : zzFR) {
            arrayList.add(ok.zzR(zzR));
        }
        return new zza(arrayList, ocVar.zzFS());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzb(parcel, 2, this.zzcao, false);
        zzd.zzb(parcel, 3, this.zzcap, false);
        zzd.zzI(parcel, i);
    }
}
