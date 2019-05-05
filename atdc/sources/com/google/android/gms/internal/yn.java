package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

final class yn {
    private final Random random = new Random();
    private final Thread zzciT = yd.getThreadFactory().newThread(new yo(this));
    private yd zzcjk;
    private volatile boolean zzcjn = false;
    private BlockingQueue<ByteBuffer> zzcjo;
    private boolean zzcjp = false;
    private WritableByteChannel zzcjq;

    yn(yd ydVar, String str, int i) {
        yc zzJo = yd.zzJo();
        Thread thread = this.zzciT;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 18);
        stringBuilder.append(str);
        stringBuilder.append("Writer-");
        stringBuilder.append(i);
        zzJo.zza(thread, stringBuilder.toString());
        this.zzcjk = ydVar;
        this.zzcjo = new LinkedBlockingQueue();
    }

    private final void zzJA() {
        while (!this.zzcjn && !Thread.interrupted()) {
            try {
                zzJy();
            } catch (IOException e) {
                this.zzcjk.zzb(new yj("IO Exception", e));
                return;
            } catch (InterruptedException unused) {
            }
        }
        for (int i = 0; i < this.zzcjo.size(); i++) {
            zzJy();
        }
    }

    private final void zzJy() throws InterruptedException, IOException {
        this.zzcjq.write((ByteBuffer) this.zzcjo.take());
    }

    /* Access modifiers changed, original: final */
    public final Thread zzJB() {
        return this.zzciT;
    }

    /* Access modifiers changed, original: final */
    public final void zzJz() {
        this.zzcjn = true;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized void zza(byte b, boolean z, byte[] bArr) throws IOException {
        int i = 6;
        int length = bArr.length;
        if (length >= TransportMediator.KEYCODE_MEDIA_PLAY) {
            i = length <= 65535 ? 8 : 14;
        }
        ByteBuffer allocate = ByteBuffer.allocate(bArr.length + i);
        allocate.put((byte) (b | -128));
        int i2 = 0;
        if (length < TransportMediator.KEYCODE_MEDIA_PLAY) {
            allocate.put((byte) (length | 128));
        } else if (length <= 65535) {
            allocate.put((byte) -2);
            allocate.putShort((short) length);
        } else {
            allocate.put((byte) -1);
            allocate.putInt(0);
            allocate.putInt(length);
        }
        byte[] bArr2 = new byte[4];
        this.random.nextBytes(bArr2);
        allocate.put(bArr2);
        while (i2 < bArr.length) {
            allocate.put((byte) (bArr[i2] ^ bArr2[i2 % 4]));
            i2++;
        }
        allocate.flip();
        if (!this.zzcjn || (!this.zzcjp && b == (byte) 8)) {
            if (b == (byte) 8) {
                this.zzcjp = true;
            }
            this.zzcjo.add(allocate);
        } else {
            throw new yj("Shouldn't be sending");
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzb(OutputStream outputStream) {
        this.zzcjq = Channels.newChannel(outputStream);
    }
}
