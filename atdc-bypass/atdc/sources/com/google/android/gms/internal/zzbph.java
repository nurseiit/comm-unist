package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.zzb;
import com.google.android.gms.drive.events.zzl;
import com.google.android.gms.drive.events.zzn;
import com.google.android.gms.drive.events.zzr;

public final class zzbph extends zza {
    public static final Creator<zzbph> CREATOR = new zzbpi();
    private int zzaJo;
    private ChangeEvent zzaPb;
    private CompletionEvent zzaPc;
    private zzl zzaPd;
    private zzb zzaPe;
    private zzr zzaPf;
    private zzn zzaPg;

    zzbph(int i, ChangeEvent changeEvent, CompletionEvent completionEvent, zzl zzl, zzb zzb, zzr zzr, zzn zzn) {
        this.zzaJo = i;
        this.zzaPb = changeEvent;
        this.zzaPc = completionEvent;
        this.zzaPd = zzl;
        this.zzaPe = zzb;
        this.zzaPf = zzr;
        this.zzaPg = zzn;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaJo);
        zzd.zza(parcel, 3, this.zzaPb, i, false);
        zzd.zza(parcel, 5, this.zzaPc, i, false);
        zzd.zza(parcel, 6, this.zzaPd, i, false);
        zzd.zza(parcel, 7, this.zzaPe, i, false);
        zzd.zza(parcel, 9, this.zzaPf, i, false);
        zzd.zza(parcel, 10, this.zzaPg, i, false);
        zzd.zzI(parcel, zze);
    }

    public final DriveEvent zztj() {
        switch (this.zzaJo) {
            case 1:
                return this.zzaPb;
            case 2:
                return this.zzaPc;
            case 3:
                return this.zzaPd;
            case 4:
                return this.zzaPe;
            case 7:
                return this.zzaPf;
            case 8:
                return this.zzaPg;
            default:
                int i = this.zzaJo;
                StringBuilder stringBuilder = new StringBuilder(33);
                stringBuilder.append("Unexpected event type ");
                stringBuilder.append(i);
                throw new IllegalStateException(stringBuilder.toString());
        }
    }
}
