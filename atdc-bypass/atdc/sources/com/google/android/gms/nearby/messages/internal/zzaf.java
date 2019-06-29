package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.messages.Message;
import java.util.Arrays;

public final class zzaf extends zza {
    public static final Creator<zzaf> CREATOR = new zzag();
    private int zzaku;
    private Message zzbzd;

    zzaf(int i, Message message) {
        this.zzaku = i;
        this.zzbzd = (Message) zzbo.zzu(message);
    }

    public static final zzaf zza(Message message) {
        return new zzaf(1, message);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaf)) {
            return false;
        }
        return zzbe.equal(this.zzbzd, ((zzaf) obj).zzbzd);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbzd});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbzd.toString());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 24);
        stringBuilder.append("MessageWrapper{message=");
        stringBuilder.append(valueOf);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbzd, i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
