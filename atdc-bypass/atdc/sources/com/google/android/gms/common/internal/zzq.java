package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzctl;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzq {
    private final Set<Scope> zzaAT;
    private final int zzaAV;
    private final View zzaAW;
    private final String zzaAX;
    private final Set<Scope> zzaHk;
    private final Map<Api<?>, zzr> zzaHl;
    private final zzctl zzaHm;
    private Integer zzaHn;
    private final Account zzajb;
    private final String zzake;

    public zzq(Account account, Set<Scope> set, Map<Api<?>, zzr> map, int i, View view, String str, String str2, zzctl zzctl) {
        Map map2;
        this.zzajb = account;
        this.zzaAT = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        if (map2 == null) {
            map2 = Collections.EMPTY_MAP;
        }
        this.zzaHl = map2;
        this.zzaAW = view;
        this.zzaAV = i;
        this.zzake = str;
        this.zzaAX = str2;
        this.zzaHm = zzctl;
        HashSet hashSet = new HashSet(this.zzaAT);
        for (zzr zzr : this.zzaHl.values()) {
            hashSet.addAll(zzr.zzame);
        }
        this.zzaHk = Collections.unmodifiableSet(hashSet);
    }

    public static zzq zzaA(Context context) {
        return new Builder(context).zzpn();
    }

    public final Account getAccount() {
        return this.zzajb;
    }

    @Deprecated
    public final String getAccountName() {
        return this.zzajb != null ? this.zzajb.name : null;
    }

    public final Set<Scope> zzc(Api<?> api) {
        zzr zzr = (zzr) this.zzaHl.get(api);
        if (zzr == null || zzr.zzame.isEmpty()) {
            return this.zzaAT;
        }
        HashSet hashSet = new HashSet(this.zzaAT);
        hashSet.addAll(zzr.zzame);
        return hashSet;
    }

    public final void zzc(Integer num) {
        this.zzaHn = num;
    }

    public final Account zzrl() {
        return this.zzajb != null ? this.zzajb : new Account("<<default account>>", "com.google");
    }

    public final int zzrm() {
        return this.zzaAV;
    }

    public final Set<Scope> zzrn() {
        return this.zzaAT;
    }

    public final Set<Scope> zzro() {
        return this.zzaHk;
    }

    public final Map<Api<?>, zzr> zzrp() {
        return this.zzaHl;
    }

    public final String zzrq() {
        return this.zzake;
    }

    public final String zzrr() {
        return this.zzaAX;
    }

    public final View zzrs() {
        return this.zzaAW;
    }

    public final zzctl zzrt() {
        return this.zzaHm;
    }

    public final Integer zzru() {
        return this.zzaHn;
    }
}
