package com.google.android.gms.internal;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;

final class yb extends ThreadLocal<CharsetEncoder> {
    yb() {
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object initialValue() {
        CharsetEncoder newEncoder = Charset.forName("UTF8").newEncoder();
        newEncoder.onMalformedInput(CodingErrorAction.REPORT);
        newEncoder.onUnmappableCharacter(CodingErrorAction.REPORT);
        return newEncoder;
    }
}
