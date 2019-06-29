package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.awareness.state.BeaconState.TypeFilter;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public final class zzasv extends TypeFilter {
    public static final Creator<zzasv> CREATOR = new zzaug();
    private final ack zzanT;

    public zzasv(String str, String str2) {
        this.zzanT = new ack();
        this.zzanT.zzbxU = zzbo.zzcF(str);
        this.zzanT.type = zzbo.zzcF(str2);
    }

    public zzasv(String str, String str2, byte[] bArr) {
        this.zzanT = new ack();
        this.zzanT.zzbxU = zzbo.zzcF(str);
        this.zzanT.type = zzbo.zzcF(str2);
        this.zzanT.content = (byte[]) zzbo.zzu(bArr);
    }

    zzasv(byte[] bArr) {
        ack ack;
        try {
            ack = (ack) adp.zza(new ack(), bArr);
        } catch (ado unused) {
            zzeq.zzd("BeaconStateImpl", "Could not deserialize BeaconFence.BeaconTypeFilter");
            ack = null;
        }
        this.zzanT = ack;
    }

    private final byte[] getContent() {
        return (this.zzanT == null || this.zzanT.content == null || this.zzanT.content.length == 0) ? null : this.zzanT.content;
    }

    private final String getNamespace() {
        return this.zzanT == null ? null : this.zzanT.zzbxU;
    }

    private final String getType() {
        return this.zzanT == null ? null : this.zzanT.type;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzasv)) {
            return false;
        }
        zzasv zzasv = (zzasv) obj;
        return TextUtils.equals(getNamespace(), zzasv.getNamespace()) && TextUtils.equals(getType(), zzasv.getType()) && Arrays.equals(getContent(), zzasv.getContent());
    }

    public final int hashCode() {
        r0 = new Object[3];
        int i = 0;
        r0[0] = getNamespace();
        r0[1] = getType();
        if (getContent() != null) {
            i = Arrays.hashCode(getContent());
        }
        r0[2] = Integer.valueOf(i);
        return Arrays.hashCode(r0);
    }

    public final String toString() {
        String valueOf = String.valueOf(getNamespace());
        String valueOf2 = String.valueOf(getType());
        Object str = getContent() == null ? "null" : new String(getContent());
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 4) + String.valueOf(valueOf2).length()) + String.valueOf(str).length());
        stringBuilder.append("(");
        stringBuilder.append(valueOf);
        stringBuilder.append(",");
        stringBuilder.append(valueOf2);
        stringBuilder.append(",");
        stringBuilder.append(str);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, adp.zzc(this.zzanT), false);
        zzd.zzI(parcel, i);
    }

    public final ack zzmV() {
        return this.zzanT;
    }
}
