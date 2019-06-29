package com.google.android.gms.awareness;

import android.accounts.Account;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public class AwarenessOptions implements Optional {
    public static final int NO_UID = -1;
    private final Account zzajb;
    private final String zzanK;
    private final int zzanL;
    private final String zzanM;
    private final String zzanN;
    private final int zzanO;

    protected AwarenessOptions(String str, int i, String str2, String str3, int i2, Account account) {
        zzbo.zzb((Object) str, (Object) "moduleId must not be null");
        this.zzanK = str;
        this.zzanL = i;
        this.zzanM = str2;
        this.zzanN = str3;
        this.zzanO = i2;
        this.zzajb = account;
    }

    @Deprecated
    public static AwarenessOptions create1p(String str) {
        zzbo.zzcF(str);
        return new AwarenessOptions(str, 1, null, null, -1, null);
    }

    public static AwarenessOptions create1p(String str, Account account) {
        zzbo.zzcF(str);
        return new AwarenessOptions(str, 1, null, null, -1, account);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AwarenessOptions awarenessOptions = (AwarenessOptions) obj;
        return this.zzanL == awarenessOptions.zzanL && this.zzanO == awarenessOptions.zzanO && zzbe.equal(this.zzanK, awarenessOptions.zzanK) && zzbe.equal(this.zzanM, awarenessOptions.zzanM) && zzbe.equal(this.zzanN, awarenessOptions.zzanN) && zzbe.equal(this.zzajb, awarenessOptions.zzajb);
    }

    @Nullable
    public final Account getAccount() {
        return this.zzajb;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzanK, Integer.valueOf(this.zzanL), this.zzanM, this.zzanN, Integer.valueOf(this.zzanO), this.zzajb});
    }

    public final String zzmQ() {
        return this.zzanK;
    }

    public final int zzmR() {
        return this.zzanL;
    }

    @Nullable
    public final String zzmS() {
        return this.zzanM;
    }

    @Nullable
    public final String zzmT() {
        return this.zzanN;
    }

    public final int zzmU() {
        return this.zzanO;
    }
}
