package com.google.android.gms.common.api;

import android.support.annotation.NonNull;

public class Response<T extends Result> {
    private T zzaBj;

    protected Response(@NonNull T t) {
        this.zzaBj = t;
    }

    /* Access modifiers changed, original: protected */
    @NonNull
    public T getResult() {
        return this.zzaBj;
    }

    public void setResult(@NonNull T t) {
        this.zzaBj = t;
    }
}
