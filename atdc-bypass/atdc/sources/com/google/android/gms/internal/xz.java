package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

final class xz implements xy {
    private static ThreadLocal<CharsetDecoder> zzciI = new ya();
    private static ThreadLocal<CharsetEncoder> zzciJ = new yb();
    private StringBuilder zzciK = new StringBuilder();

    xz() {
    }

    private static String zzD(byte[] bArr) {
        try {
            return ((CharsetDecoder) zzciI.get()).decode(ByteBuffer.wrap(bArr)).toString();
        } catch (CharacterCodingException unused) {
            return null;
        }
    }

    public final boolean zzC(byte[] bArr) {
        String zzD = zzD(bArr);
        if (zzD == null) {
            return false;
        }
        this.zzciK.append(zzD);
        return true;
    }

    public final yl zzJn() {
        return new yl(this.zzciK.toString());
    }
}
