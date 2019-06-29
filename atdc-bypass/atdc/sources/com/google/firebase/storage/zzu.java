package com.google.firebase.storage;

import android.support.annotation.NonNull;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class zzu implements ThreadFactory {
    private final AtomicInteger zzbfH = new AtomicInteger(1);
    private final String zzcpo;

    zzu(@NonNull String str) {
        this.zzcpo = str;
    }

    public final Thread newThread(@NonNull Runnable runnable) {
        String str = this.zzcpo;
        int andIncrement = this.zzbfH.getAndIncrement();
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 27);
        stringBuilder.append("FirebaseStorage-");
        stringBuilder.append(str);
        stringBuilder.append(andIncrement);
        Thread thread = new Thread(runnable, stringBuilder.toString());
        thread.setDaemon(false);
        thread.setPriority(9);
        return thread;
    }
}
