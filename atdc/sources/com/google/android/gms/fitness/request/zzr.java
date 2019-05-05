package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbwb;
import com.google.android.gms.internal.zzbwc;
import java.util.Arrays;

public final class zzr extends zza {
    public static final Creator<zzr> CREATOR = new zzs();
    private final String mName;
    private final zzbwb zzaWM;
    private final int zzaku;

    zzr(int i, String str, IBinder iBinder) {
        this.zzaku = i;
        this.mName = str;
        this.zzaWM = zzbwc.zzR(iBinder);
    }

    public zzr(String str, zzbwb zzbwb) {
        this.zzaku = 3;
        this.mName = str;
        this.zzaWM = zzbwb;
    }

    /* JADX WARNING: Missing block: B:4:0x0010, code skipped:
            if (com.google.android.gms.common.internal.zzbe.equal(r1.mName, ((com.google.android.gms.fitness.request.zzr) r2).mName) != false) goto L_0x0015;
     */
    public final boolean equals(java.lang.Object r2) {
        /*
        r1 = this;
        if (r2 == r1) goto L_0x0015;
    L_0x0002:
        r0 = r2 instanceof com.google.android.gms.fitness.request.zzr;
        if (r0 == 0) goto L_0x0013;
    L_0x0006:
        r2 = (com.google.android.gms.fitness.request.zzr) r2;
        r0 = r1.mName;
        r2 = r2.mName;
        r2 = com.google.android.gms.common.internal.zzbe.equal(r0, r2);
        if (r2 == 0) goto L_0x0013;
    L_0x0012:
        goto L_0x0015;
    L_0x0013:
        r2 = 0;
        return r2;
    L_0x0015:
        r2 = 1;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.request.zzr.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.mName});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("name", this.mName).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.mName, false);
        zzd.zza(parcel, 3, this.zzaWM.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
