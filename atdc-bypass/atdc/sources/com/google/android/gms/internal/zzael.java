package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.safetynet.SafetyNet;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicInteger;

@zzzn
public final class zzael {
    private static final List<Integer> zzXh = Arrays.asList(new Integer[]{Integer.valueOf(4), Integer.valueOf(5)});
    private Timer zzXi = new Timer();
    private GoogleApiClient zzXj;

    public final zzajm<Map<String, String>> zza(Context context, Set<String> set) {
        zzajg zzajg = new zzajg();
        this.zzXj = new Builder(context).addApi(SafetyNet.API).addConnectionCallbacks(new zzaen(this, set, zzajg)).addOnConnectionFailedListener(new zzaem(this, zzajg)).build();
        this.zzXj.connect();
        return zzajg;
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final void zza(GoogleApiClient googleApiClient, Set<String> set, zzajg<Map<String, String>> zzajg) {
        HashMap hashMap = new HashMap();
        AtomicInteger atomicInteger = new AtomicInteger(set.size());
        for (String str : set) {
            ((zzcsa) SafetyNet.SafetyNetApi).zza(this.zzXj, zzXh, str, (String) zzbs.zzbL().zzd(zzmo.zzGc)).setResultCallback(new zzaep(this, hashMap, str, atomicInteger, googleApiClient, zzajg));
        }
    }
}
