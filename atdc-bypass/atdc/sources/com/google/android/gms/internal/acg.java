package com.google.android.gms.internal;

public final class acg {
    private final byte[] zzcqn = new byte[256];
    private int zzcqo;
    private int zzcqp;

    public acg(byte[] bArr) {
        int i;
        for (i = 0; i < 256; i++) {
            this.zzcqn[i] = (byte) i;
        }
        int i2 = 0;
        for (i = 0; i < 256; i++) {
            i2 = ((i2 + this.zzcqn[i]) + bArr[i % bArr.length]) & 255;
            byte b = this.zzcqn[i];
            this.zzcqn[i] = this.zzcqn[i2];
            this.zzcqn[i2] = b;
        }
        this.zzcqo = 0;
        this.zzcqp = 0;
    }

    public final void zzG(byte[] bArr) {
        int i = this.zzcqo;
        int i2 = this.zzcqp;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            i2 = (i2 + this.zzcqn[i]) & 255;
            byte b = this.zzcqn[i];
            this.zzcqn[i] = this.zzcqn[i2];
            this.zzcqn[i2] = b;
            bArr[i3] = (byte) (bArr[i3] ^ this.zzcqn[(this.zzcqn[i] + this.zzcqn[i2]) & 255]);
        }
        this.zzcqo = i;
        this.zzcqp = i2;
    }
}
