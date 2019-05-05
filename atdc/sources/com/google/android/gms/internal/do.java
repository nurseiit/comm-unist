package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.List;

public final class do {
    private final Object mValue;
    private final List<Integer> zzbLh = new ArrayList();
    private final Integer zzbLj;
    private boolean zzbLk = false;

    public do(int i, Object obj) {
        this.zzbLj = Integer.valueOf(i);
        this.mValue = obj;
    }

    public final dm zzDj() {
        zzbo.zzu(this.zzbLj);
        zzbo.zzu(this.mValue);
        return new dm(this.zzbLj, this.mValue, this.zzbLh, this.zzbLk, null);
    }

    public final do zzau(boolean z) {
        this.zzbLk = true;
        return this;
    }

    public final do zzbF(int i) {
        this.zzbLh.add(Integer.valueOf(i));
        return this;
    }
}
