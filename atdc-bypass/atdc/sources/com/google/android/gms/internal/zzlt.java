package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

@zzzn
public final class zzlt extends zza {
    public static final Creator<zzlt> CREATOR = new zzlu();
    public final int backgroundColor;
    public final int zzBA;
    public final int zzBB;
    public final int zzBC;
    public final String zzBD;
    public final int zzBE;
    public final String zzBF;
    public final int zzBG;
    public final int zzBH;
    public final String zzBI;
    public final int zzBw;
    public final int zzBx;
    public final int zzBy;
    public final int zzBz;

    zzlt(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, int i9, String str2, int i10, int i11, String str3) {
        this.zzBw = i;
        this.backgroundColor = i2;
        this.zzBx = i3;
        this.zzBy = i4;
        this.zzBz = i5;
        this.zzBA = i6;
        this.zzBB = i7;
        this.zzBC = i8;
        this.zzBD = str;
        this.zzBE = i9;
        this.zzBF = str2;
        this.zzBG = i10;
        this.zzBH = i11;
        this.zzBI = str3;
    }

    public zzlt(SearchAdRequest searchAdRequest) {
        this.zzBw = searchAdRequest.getAnchorTextColor();
        this.backgroundColor = searchAdRequest.getBackgroundColor();
        this.zzBx = searchAdRequest.getBackgroundGradientBottom();
        this.zzBy = searchAdRequest.getBackgroundGradientTop();
        this.zzBz = searchAdRequest.getBorderColor();
        this.zzBA = searchAdRequest.getBorderThickness();
        this.zzBB = searchAdRequest.getBorderType();
        this.zzBC = searchAdRequest.getCallButtonColor();
        this.zzBD = searchAdRequest.getCustomChannels();
        this.zzBE = searchAdRequest.getDescriptionTextColor();
        this.zzBF = searchAdRequest.getFontFace();
        this.zzBG = searchAdRequest.getHeaderTextColor();
        this.zzBH = searchAdRequest.getHeaderTextSize();
        this.zzBI = searchAdRequest.getQuery();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzBw);
        zzd.zzc(parcel, 3, this.backgroundColor);
        zzd.zzc(parcel, 4, this.zzBx);
        zzd.zzc(parcel, 5, this.zzBy);
        zzd.zzc(parcel, 6, this.zzBz);
        zzd.zzc(parcel, 7, this.zzBA);
        zzd.zzc(parcel, 8, this.zzBB);
        zzd.zzc(parcel, 9, this.zzBC);
        zzd.zza(parcel, 10, this.zzBD, false);
        zzd.zzc(parcel, 11, this.zzBE);
        zzd.zza(parcel, 12, this.zzBF, false);
        zzd.zzc(parcel, 13, this.zzBG);
        zzd.zzc(parcel, 14, this.zzBH);
        zzd.zza(parcel, 15, this.zzBI, false);
        zzd.zzI(parcel, i);
    }
}
