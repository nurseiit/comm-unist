package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

final class zzhi {
    private ByteArrayOutputStream zzzb = new ByteArrayOutputStream(4096);
    private Base64OutputStream zzzc = new Base64OutputStream(this.zzzb, 10);

    public final String toString() {
        String byteArrayOutputStream;
        try {
            this.zzzc.close();
        } catch (IOException e) {
            zzajc.zzb("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.zzzb.close();
            byteArrayOutputStream = this.zzzb.toString();
        } catch (IOException e2) {
            zzajc.zzb("HashManager: Unable to convert to Base64.", e2);
            byteArrayOutputStream = "";
        } catch (Throwable th) {
            this.zzzb = null;
            this.zzzc = null;
        }
        this.zzzb = null;
        this.zzzc = null;
        return byteArrayOutputStream;
    }

    public final void write(byte[] bArr) throws IOException {
        this.zzzc.write(bArr);
    }
}
