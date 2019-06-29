package com.google.android.gms.nearby.messages;

import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.messages.internal.zzc;
import com.google.android.gms.nearby.messages.internal.zzg;
import java.util.Arrays;

public class EddystoneUid {
    public static final int INSTANCE_LENGTH = 6;
    public static final int LENGTH = 16;
    public static final int NAMESPACE_LENGTH = 10;
    private final zzg zzbxR;

    public EddystoneUid(String str) {
        this(zzc.zzeE(str));
    }

    public EddystoneUid(String str, String str2) {
        this.zzbxR = new zzg(str, str2);
    }

    private EddystoneUid(byte[] bArr) {
        zzbo.zzb(bArr.length == 16, (Object) "Bytes must be a namespace plus instance (16 bytes).");
        this.zzbxR = new zzg(bArr);
    }

    public static EddystoneUid from(Message message) {
        boolean zzeD = message.zzeD(Message.MESSAGE_TYPE_EDDYSTONE_UID);
        String valueOf = String.valueOf(message.getType());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 58);
        stringBuilder.append("Message type '");
        stringBuilder.append(valueOf);
        stringBuilder.append("' is not Message.MESSAGE_TYPE_EDDYSTONE_UID.");
        zzbo.zzb(zzeD, stringBuilder.toString());
        return new EddystoneUid(message.getContent());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EddystoneUid)) {
            return false;
        }
        return zzbe.equal(this.zzbxR, ((EddystoneUid) obj).zzbxR);
    }

    public String getHex() {
        return this.zzbxR.getHex();
    }

    public String getInstance() {
        byte[] bytes = this.zzbxR.getBytes();
        return bytes.length < 16 ? null : zzc.zzo(Arrays.copyOfRange(bytes, 10, 16));
    }

    public String getNamespace() {
        return zzc.zzo(Arrays.copyOfRange(this.zzbxR.getBytes(), 0, 10));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbxR});
    }

    public String toString() {
        String valueOf = String.valueOf(getHex());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 17);
        stringBuilder.append("EddystoneUid{id=");
        stringBuilder.append(valueOf);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
