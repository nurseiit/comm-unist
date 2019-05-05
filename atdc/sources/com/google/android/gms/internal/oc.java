package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;

public final class oc {
    private final List<List<String>> zzcao;
    private final List<String> zzcap;

    public oc(List<List<String>> list, List<String> list2) {
        if (list.size() != list2.size() - 1) {
            throw new IllegalArgumentException("Number of posts need to be n-1 for n hashes in CompoundHash");
        }
        this.zzcao = list;
        this.zzcap = list2;
    }

    public final List<List<String>> zzFR() {
        return Collections.unmodifiableList(this.zzcao);
    }

    public final List<String> zzFS() {
        return Collections.unmodifiableList(this.zzcap);
    }
}
