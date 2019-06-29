package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ep {
    private static Integer zzbLP = Integer.valueOf(0);
    private static Integer zzbLQ = Integer.valueOf(1);
    private final Context mContext;
    private final ExecutorService zzbrV;

    public ep(Context context) {
        this(context, Executors.newSingleThreadExecutor());
    }

    private ep(Context context, ExecutorService executorService) {
        this.mContext = context;
        this.zzbrV = executorService;
    }
}
