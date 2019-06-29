package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.ProviderQueryResult;
import java.util.List;

public final class lt implements ProviderQueryResult {
    private List<String> zzbXM;

    public lt(@NonNull kt ktVar) {
        zzbo.zzu(ktVar);
        this.zzbXM = ktVar.getAllProviders();
    }

    @Nullable
    public final List<String> getProviders() {
        return this.zzbXM;
    }
}
