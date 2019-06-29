package com.google.android.gms.internal;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;

final class cp implements ct {
    private /* synthetic */ Context zztF;

    cp(Context context) {
        this.zztF = context;
    }

    public final InputStream open(String str) throws IOException {
        return this.zztF.getAssets().open(str);
    }
}
