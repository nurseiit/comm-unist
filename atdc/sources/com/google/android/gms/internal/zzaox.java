package com.google.android.gms.internal;

import android.accounts.Account;
import java.util.ArrayList;
import java.util.List;

public final class zzaox {
    private List<zzapb> zzaiY;
    private String zzaiZ;
    private boolean zzaja;
    private Account zzajb;

    public final zzaox zzJ(boolean z) {
        this.zzaja = true;
        return this;
    }

    public final zzaox zza(zzapb zzapb) {
        if (this.zzaiY == null && zzapb != null) {
            this.zzaiY = new ArrayList();
        }
        if (zzapb != null) {
            this.zzaiY.add(zzapb);
        }
        return this;
    }

    public final zzaox zzb(Account account) {
        this.zzajb = account;
        return this;
    }

    public final zzaox zzbG(String str) {
        this.zzaiZ = str;
        return this;
    }

    public final zzaow zzmj() {
        return new zzaow(this.zzaiZ, this.zzaja, this.zzajb, this.zzaiY != null ? (zzapb[]) this.zzaiY.toArray(new zzapb[this.zzaiY.size()]) : null);
    }
}
