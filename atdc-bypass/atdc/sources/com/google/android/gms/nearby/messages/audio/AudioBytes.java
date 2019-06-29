package com.google.android.gms.nearby.messages.audio;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.messages.Message;
import java.util.Arrays;

public final class AudioBytes {
    public static final int MAX_SIZE = 10;
    private final byte[] zzbyC;

    public AudioBytes(byte[] bArr) {
        zzbo.zzu(bArr);
        boolean z = false;
        zzbo.zzb(bArr.length <= 10, (Object) "Given byte array longer than 10 bytes, given by AudioBytes.MAX_SIZE.");
        if (bArr.length > 0) {
            z = true;
        }
        zzbo.zzb(z, (Object) "Given byte array is of zero length.");
        this.zzbyC = bArr;
    }

    public static AudioBytes from(Message message) {
        zzbo.zzu(message);
        boolean zzeD = message.zzeD(Message.MESSAGE_TYPE_AUDIO_BYTES);
        String valueOf = String.valueOf(message.getType());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 56);
        stringBuilder.append("Message type '");
        stringBuilder.append(valueOf);
        stringBuilder.append("' is not Message.MESSAGE_TYPE_AUDIO_BYTES.");
        zzbo.zzb(zzeD, stringBuilder.toString());
        return new AudioBytes(message.getContent());
    }

    public final byte[] getBytes() {
        return this.zzbyC;
    }

    public final Message toMessage() {
        return new Message(this.zzbyC, Message.MESSAGE_NAMESPACE_RESERVED, Message.MESSAGE_TYPE_AUDIO_BYTES);
    }

    public final String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.zzbyC));
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 14);
        stringBuilder.append("AudioBytes [");
        stringBuilder.append(valueOf);
        stringBuilder.append(" ]");
        return stringBuilder.toString();
    }
}
