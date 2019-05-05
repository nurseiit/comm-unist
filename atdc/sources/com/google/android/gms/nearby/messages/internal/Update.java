package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzcpj;
import com.google.android.gms.nearby.messages.Message;
import java.util.Arrays;

public class Update extends zza implements ReflectedParcelable {
    public static final Creator<Update> CREATOR = new zzbg();
    private int zzaku;
    private int zzbzA;
    @Nullable
    public final zze zzbzB;
    @Nullable
    public final zza zzbzC;
    @Nullable
    public final zzcpj zzbzD;
    public final Message zzbzd;

    Update(int i, int i2, Message message, @Nullable zze zze, @Nullable zza zza, @Nullable zzcpj zzcpj) {
        this.zzaku = i;
        this.zzbzA = i2;
        boolean z = true;
        if (zzbt(1) && zzbt(2)) {
            z = false;
        }
        zzbo.zza(z, (Object) "Update cannot represent both FOUND and LOST.");
        this.zzbzd = message;
        this.zzbzB = zze;
        this.zzbzC = zza;
        this.zzbzD = zzcpj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Update)) {
            return false;
        }
        Update update = (Update) obj;
        return this.zzbzA == update.zzbzA && zzbe.equal(this.zzbzd, update.zzbzd) && zzbe.equal(this.zzbzB, update.zzbzB) && zzbe.equal(this.zzbzC, update.zzbzC) && zzbe.equal(this.zzbzD, update.zzbzD);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzbzA), this.zzbzd, this.zzbzB, this.zzbzC, this.zzbzD});
    }

    public String toString() {
        com.google.android.gms.common.util.zza zza = new com.google.android.gms.common.util.zza();
        if (zzbt(1)) {
            zza.add("FOUND");
        }
        if (zzbt(2)) {
            zza.add("LOST");
        }
        if (zzbt(4)) {
            zza.add("DISTANCE");
        }
        if (zzbt(8)) {
            zza.add("BLE_SIGNAL");
        }
        if (zzbt(16)) {
            zza.add("DEVICE");
        }
        String valueOf = String.valueOf(zza);
        String valueOf2 = String.valueOf(this.zzbzd);
        String valueOf3 = String.valueOf(this.zzbzB);
        String valueOf4 = String.valueOf(this.zzbzC);
        String valueOf5 = String.valueOf(this.zzbzD);
        StringBuilder stringBuilder = new StringBuilder(((((String.valueOf(valueOf).length() + 56) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length()) + String.valueOf(valueOf5).length());
        stringBuilder.append("Update{types=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", message=");
        stringBuilder.append(valueOf2);
        stringBuilder.append(", distance=");
        stringBuilder.append(valueOf3);
        stringBuilder.append(", bleSignal=");
        stringBuilder.append(valueOf4);
        stringBuilder.append(", device=");
        stringBuilder.append(valueOf5);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zzc(parcel, 2, this.zzbzA);
        zzd.zza(parcel, 3, this.zzbzd, i, false);
        zzd.zza(parcel, 4, this.zzbzB, i, false);
        zzd.zza(parcel, 5, this.zzbzC, i, false);
        zzd.zza(parcel, 6, this.zzbzD, i, false);
        zzd.zzI(parcel, zze);
    }

    public final boolean zzbt(int i) {
        return (i & this.zzbzA) != 0;
    }
}
