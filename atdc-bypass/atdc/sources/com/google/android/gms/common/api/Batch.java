package com.google.android.gms.common.api;

import com.google.android.gms.internal.zzbbe;
import java.util.ArrayList;
import java.util.List;

public final class Batch extends zzbbe<BatchResult> {
    private final Object mLock;
    private int zzaAC;
    private boolean zzaAD;
    private boolean zzaAE;
    private final PendingResult<?>[] zzaAF;

    public static final class Builder {
        private List<PendingResult<?>> zzaAH = new ArrayList();
        private GoogleApiClient zzapu;

        public Builder(GoogleApiClient googleApiClient) {
            this.zzapu = googleApiClient;
        }

        public final <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken batchResultToken = new BatchResultToken(this.zzaAH.size());
            this.zzaAH.add(pendingResult);
            return batchResultToken;
        }

        public final Batch build() {
            return new Batch(this.zzaAH, this.zzapu, null);
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.mLock = new Object();
        this.zzaAC = list.size();
        this.zzaAF = new PendingResult[this.zzaAC];
        if (list.isEmpty()) {
            setResult(new BatchResult(Status.zzaBm, this.zzaAF));
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            PendingResult pendingResult = (PendingResult) list.get(i);
            this.zzaAF[i] = pendingResult;
            pendingResult.zza(new zzb(this));
        }
    }

    /* synthetic */ Batch(List list, GoogleApiClient googleApiClient, zzb zzb) {
        this(list, googleApiClient);
    }

    public final void cancel() {
        super.cancel();
        for (PendingResult cancel : this.zzaAF) {
            cancel.cancel();
        }
    }

    /* renamed from: createFailedResult */
    public final BatchResult zzb(Status status) {
        return new BatchResult(status, this.zzaAF);
    }
}
