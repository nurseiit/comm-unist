package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import java.util.Arrays;

public final class zzbc extends zza {
    public static final Creator<zzbc> CREATOR = new zzbd();
    private final PendingIntent mPendingIntent;
    private final zzbxg zzaWo;
    private final int zzaku;

    zzbc(int i, PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaku = i;
        this.mPendingIntent = pendingIntent;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    public zzbc(PendingIntent pendingIntent, zzbxg zzbxg) {
        this.zzaku = 5;
        this.mPendingIntent = pendingIntent;
        this.zzaWo = zzbxg;
    }

    /* JADX WARNING: Missing block: B:4:0x0010, code skipped:
            if (com.google.android.gms.common.internal.zzbe.equal(r1.mPendingIntent, ((com.google.android.gms.fitness.request.zzbc) r2).mPendingIntent) != false) goto L_0x0015;
     */
    public final boolean equals(java.lang.Object r2) {
        /*
        r1 = this;
        if (r1 == r2) goto L_0x0015;
    L_0x0002:
        r0 = r2 instanceof com.google.android.gms.fitness.request.zzbc;
        if (r0 == 0) goto L_0x0013;
    L_0x0006:
        r2 = (com.google.android.gms.fitness.request.zzbc) r2;
        r0 = r1.mPendingIntent;
        r2 = r2.mPendingIntent;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.request.zzbc.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.mPendingIntent});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("pendingIntent", this.mPendingIntent).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.mPendingIntent, i, false);
        zzd.zza(parcel, 2, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
