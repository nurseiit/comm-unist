package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public final class cm implements Result {
    private final Status mStatus;
    private final int zzBM;
    private final cn zzbKG;
    private final dj zzbKH;

    public cm(Status status, int i) {
        this(status, i, null, null);
    }

    public cm(Status status, int i, cn cnVar, dj djVar) {
        this.mStatus = status;
        this.zzBM = i;
        this.zzbKG = cnVar;
        this.zzbKH = djVar;
    }

    public final int getSource() {
        return this.zzBM;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final cn zzCQ() {
        return this.zzbKG;
    }

    public final dj zzCR() {
        return this.zzbKH;
    }

    public final String zzCS() {
        if (this.zzBM == 0) {
            return "Network";
        }
        if (this.zzBM == 1) {
            return "Saved file on disk";
        }
        if (this.zzBM == 2) {
            return "Default resource";
        }
        throw new IllegalStateException("Resource source is unknown.");
    }
}
