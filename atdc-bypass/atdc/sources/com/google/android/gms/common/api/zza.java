package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbat;
import java.util.ArrayList;

public final class zza extends Exception {
    private final ArrayMap<zzbat<?>, ConnectionResult> zzaAB;

    public zza(ArrayMap<zzbat<?>, ConnectionResult> arrayMap) {
        this.zzaAB = arrayMap;
    }

    public final String getMessage() {
        ArrayList arrayList = new ArrayList();
        Object obj = 1;
        for (zzbat zzbat : this.zzaAB.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) this.zzaAB.get(zzbat);
            if (connectionResult.isSuccess()) {
                obj = null;
            }
            String valueOf = String.valueOf(zzbat.zzpr());
            String valueOf2 = String.valueOf(connectionResult);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 2) + String.valueOf(valueOf2).length());
            stringBuilder.append(valueOf);
            stringBuilder.append(": ");
            stringBuilder.append(valueOf2);
            arrayList.add(stringBuilder.toString());
        }
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(obj != null ? "None of the queried APIs are available. " : "Some of the queried APIs are unavailable. ");
        stringBuilder2.append(TextUtils.join("; ", arrayList));
        return stringBuilder2.toString();
    }

    public final ConnectionResult zza(GoogleApi<? extends ApiOptions> googleApi) {
        zzbat zzph = googleApi.zzph();
        zzbo.zzb(this.zzaAB.get(zzph) != null, (Object) "The given API was not part of the availability request.");
        return (ConnectionResult) this.zzaAB.get(zzph);
    }

    public final ArrayMap<zzbat<?>, ConnectionResult> zzpf() {
        return this.zzaAB;
    }
}
