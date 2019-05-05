package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafetyNetApi.SafeBrowsingResult;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

final class zzaep implements ResultCallback<SafeBrowsingResult> {
    private /* synthetic */ zzajg zzXk;
    private /* synthetic */ Map zzXo;
    private /* synthetic */ AtomicInteger zzXp;
    private /* synthetic */ GoogleApiClient zzXq;
    private /* synthetic */ String zzsD;

    zzaep(zzael zzael, Map map, String str, AtomicInteger atomicInteger, GoogleApiClient googleApiClient, zzajg zzajg) {
        this.zzXo = map;
        this.zzsD = str;
        this.zzXp = atomicInteger;
        this.zzXq = googleApiClient;
        this.zzXk = zzajg;
    }

    public final /* synthetic */ void onResult(@NonNull Result result) {
        SafeBrowsingResult safeBrowsingResult = (SafeBrowsingResult) result;
        Status status = safeBrowsingResult.getStatus();
        if (status == null || !status.isSuccess() || safeBrowsingResult.getMetadata() == null) {
            String valueOf = String.valueOf(status);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 36);
            stringBuilder.append("SafeBrowsing lookup failed. Status: ");
            stringBuilder.append(valueOf);
            zzaes.zzaC(stringBuilder.toString());
        } else {
            this.zzXo.put(this.zzsD, safeBrowsingResult.getMetadata());
        }
        if (this.zzXp.decrementAndGet() == 0) {
            this.zzXq.disconnect();
            this.zzXk.zzg(this.zzXo);
        }
    }
}
