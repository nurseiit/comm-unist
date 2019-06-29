package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

public final class zzay extends zza {
    public static final Creator<zzay> CREATOR = new zzaz();
    private final Session zzaTe;
    private final zzbxg zzaWo;
    private final int zzaku;

    zzay(int i, Session session, IBinder iBinder) {
        this.zzaku = i;
        this.zzaTe = session;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    public zzay(Session session, zzbxg zzbxg) {
        zzbo.zzb(session.getStartTime(TimeUnit.MILLISECONDS) < System.currentTimeMillis(), (Object) "Cannot start a session in the future");
        zzbo.zzb(session.isOngoing(), (Object) "Cannot start a session which has already ended");
        this.zzaku = 3;
        this.zzaTe = session;
        this.zzaWo = zzbxg;
    }

    /* JADX WARNING: Missing block: B:4:0x0010, code skipped:
            if (com.google.android.gms.common.internal.zzbe.equal(r1.zzaTe, ((com.google.android.gms.fitness.request.zzay) r2).zzaTe) != false) goto L_0x0015;
     */
    public final boolean equals(java.lang.Object r2) {
        /*
        r1 = this;
        if (r2 == r1) goto L_0x0015;
    L_0x0002:
        r0 = r2 instanceof com.google.android.gms.fitness.request.zzay;
        if (r0 == 0) goto L_0x0013;
    L_0x0006:
        r2 = (com.google.android.gms.fitness.request.zzay) r2;
        r0 = r1.zzaTe;
        r2 = r2.zzaTe;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.request.zzay.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaTe});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("session", this.zzaTe).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaTe, i, false);
        zzd.zza(parcel, 2, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
