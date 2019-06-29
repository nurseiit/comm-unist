package com.google.android.gms.nearby.messages.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzb;

public final class zzg extends zzc {
    public zzg(String str) {
        this(zzc.zzeE(str));
    }

    public zzg(String str, String str2) {
        this(zzc.zzeE(str), zzc.zzeE(str2));
    }

    public zzg(byte[] bArr) {
        boolean z = bArr.length == 10 || bArr.length == 16;
        zzbo.zzb(z, (Object) "Bytes must be a namespace (10 bytes), or a namespace plus instance (16 bytes).");
        super(bArr);
    }

    private zzg(byte[] bArr, byte[] bArr2) {
        byte[][] bArr3 = new byte[2][];
        boolean z = false;
        boolean z2 = bArr.length == 10;
        int length = bArr.length;
        StringBuilder stringBuilder = new StringBuilder(62);
        stringBuilder.append("Namespace length(");
        stringBuilder.append(length);
        stringBuilder.append(" bytes) must be 10 bytes.");
        zzbo.zzb(z2, stringBuilder.toString());
        bArr3[0] = bArr;
        if (bArr2.length == 6) {
            z = true;
        }
        int length2 = bArr2.length;
        StringBuilder stringBuilder2 = new StringBuilder(61);
        stringBuilder2.append("Instance length(");
        stringBuilder2.append(length2);
        stringBuilder2.append(" bytes) must be 6 bytes.");
        zzbo.zzb(z, stringBuilder2.toString());
        bArr3[1] = bArr2;
        this(zzb.zza(bArr3));
    }

    public final String toString() {
        String valueOf = String.valueOf(getHex());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 26);
        stringBuilder.append("EddystoneUidPrefix{bytes=");
        stringBuilder.append(valueOf);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
