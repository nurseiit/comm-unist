package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.zzap;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzim;
import com.google.android.gms.internal.zzqk;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class AdOverlayInfoParcel extends zza implements ReflectedParcelable {
    public static final Creator<AdOverlayInfoParcel> CREATOR = new zzv();
    public final int orientation;
    public final String url;
    public final zzc zzPd;
    public final zzim zzPe;
    public final zzw zzPf;
    public final zzaka zzPg;
    public final zzqk zzPh;
    public final String zzPi;
    public final boolean zzPj;
    public final String zzPk;
    public final zzag zzPl;
    public final int zzPm;
    public final String zzPn;
    public final zzap zzPo;
    public final zzaje zzvT;

    AdOverlayInfoParcel(zzc zzc, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzaje zzaje, String str4, zzap zzap) {
        this.zzPd = zzc;
        this.zzPe = (zzim) zzn.zzE(IObjectWrapper.zza.zzM(iBinder));
        this.zzPf = (zzw) zzn.zzE(IObjectWrapper.zza.zzM(iBinder2));
        this.zzPg = (zzaka) zzn.zzE(IObjectWrapper.zza.zzM(iBinder3));
        this.zzPh = (zzqk) zzn.zzE(IObjectWrapper.zza.zzM(iBinder4));
        this.zzPi = str;
        this.zzPj = z;
        this.zzPk = str2;
        this.zzPl = (zzag) zzn.zzE(IObjectWrapper.zza.zzM(iBinder5));
        this.orientation = i;
        this.zzPm = i2;
        this.url = str3;
        this.zzvT = zzaje;
        this.zzPn = str4;
        this.zzPo = zzap;
    }

    public AdOverlayInfoParcel(zzc zzc, zzim zzim, zzw zzw, zzag zzag, zzaje zzaje) {
        this.zzPd = zzc;
        this.zzPe = zzim;
        this.zzPf = zzw;
        this.zzPg = null;
        this.zzPh = null;
        this.zzPi = null;
        this.zzPj = false;
        this.zzPk = null;
        this.zzPl = zzag;
        this.orientation = -1;
        this.zzPm = 4;
        this.url = null;
        this.zzvT = zzaje;
        this.zzPn = null;
        this.zzPo = null;
    }

    public AdOverlayInfoParcel(zzim zzim, zzw zzw, zzag zzag, zzaka zzaka, int i, zzaje zzaje, String str, zzap zzap) {
        this.zzPd = null;
        this.zzPe = zzim;
        this.zzPf = zzw;
        this.zzPg = zzaka;
        this.zzPh = null;
        this.zzPi = null;
        this.zzPj = false;
        this.zzPk = null;
        this.zzPl = zzag;
        this.orientation = i;
        this.zzPm = 1;
        this.url = null;
        this.zzvT = zzaje;
        this.zzPn = str;
        this.zzPo = zzap;
    }

    public AdOverlayInfoParcel(zzim zzim, zzw zzw, zzag zzag, zzaka zzaka, boolean z, int i, zzaje zzaje) {
        this.zzPd = null;
        this.zzPe = zzim;
        this.zzPf = zzw;
        this.zzPg = zzaka;
        this.zzPh = null;
        this.zzPi = null;
        this.zzPj = z;
        this.zzPk = null;
        this.zzPl = zzag;
        this.orientation = i;
        this.zzPm = 2;
        this.url = null;
        this.zzvT = zzaje;
        this.zzPn = null;
        this.zzPo = null;
    }

    public AdOverlayInfoParcel(zzim zzim, zzw zzw, zzqk zzqk, zzag zzag, zzaka zzaka, boolean z, int i, String str, zzaje zzaje) {
        this.zzPd = null;
        this.zzPe = zzim;
        this.zzPf = zzw;
        this.zzPg = zzaka;
        this.zzPh = zzqk;
        this.zzPi = null;
        this.zzPj = z;
        this.zzPk = null;
        this.zzPl = zzag;
        this.orientation = i;
        this.zzPm = 3;
        this.url = str;
        this.zzvT = zzaje;
        this.zzPn = null;
        this.zzPo = null;
    }

    public AdOverlayInfoParcel(zzim zzim, zzw zzw, zzqk zzqk, zzag zzag, zzaka zzaka, boolean z, int i, String str, String str2, zzaje zzaje) {
        this.zzPd = null;
        this.zzPe = zzim;
        this.zzPf = zzw;
        this.zzPg = zzaka;
        this.zzPh = zzqk;
        this.zzPi = str2;
        this.zzPj = z;
        this.zzPk = str;
        this.zzPl = zzag;
        this.orientation = i;
        this.zzPm = 3;
        this.url = null;
        this.zzvT = zzaje;
        this.zzPn = null;
        this.zzPo = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzb(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzPd, i, false);
        zzd.zza(parcel, 3, zzn.zzw(this.zzPe).asBinder(), false);
        zzd.zza(parcel, 4, zzn.zzw(this.zzPf).asBinder(), false);
        zzd.zza(parcel, 5, zzn.zzw(this.zzPg).asBinder(), false);
        zzd.zza(parcel, 6, zzn.zzw(this.zzPh).asBinder(), false);
        zzd.zza(parcel, 7, this.zzPi, false);
        zzd.zza(parcel, 8, this.zzPj);
        zzd.zza(parcel, 9, this.zzPk, false);
        zzd.zza(parcel, 10, zzn.zzw(this.zzPl).asBinder(), false);
        zzd.zzc(parcel, 11, this.orientation);
        zzd.zzc(parcel, 12, this.zzPm);
        zzd.zza(parcel, 13, this.url, false);
        zzd.zza(parcel, 14, this.zzvT, i, false);
        zzd.zza(parcel, 16, this.zzPn, false);
        zzd.zza(parcel, 17, this.zzPo, i, false);
        zzd.zzI(parcel, zze);
    }
}
