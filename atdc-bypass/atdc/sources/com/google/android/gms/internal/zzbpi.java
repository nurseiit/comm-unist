package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.zzl;
import com.google.android.gms.drive.events.zzn;
import com.google.android.gms.drive.events.zzr;

public final class zzbpi implements Creator<zzbph> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        ChangeEvent changeEvent = null;
        CompletionEvent completionEvent = changeEvent;
        zzl zzl = completionEvent;
        com.google.android.gms.drive.events.zzb zzb = zzl;
        zzr zzr = zzb;
        zzn zzn = zzr;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 3:
                    changeEvent = (ChangeEvent) zzb.zza(parcel, readInt, ChangeEvent.CREATOR);
                    break;
                case 5:
                    completionEvent = (CompletionEvent) zzb.zza(parcel, readInt, CompletionEvent.CREATOR);
                    break;
                case 6:
                    zzl = (zzl) zzb.zza(parcel, readInt, zzl.CREATOR);
                    break;
                case 7:
                    zzb = (com.google.android.gms.drive.events.zzb) zzb.zza(parcel, readInt, com.google.android.gms.drive.events.zzb.CREATOR);
                    break;
                case 9:
                    zzr = (zzr) zzb.zza(parcel, readInt, zzr.CREATOR);
                    break;
                case 10:
                    zzn = (zzn) zzb.zza(parcel, readInt, zzn.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbph(i, changeEvent, completionEvent, zzl, zzb, zzr, zzn);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbph[i];
    }
}
