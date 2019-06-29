package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public final class zzazw extends GoogleApi<NoOptions> implements zzazt {
    private zzazw(@NonNull Context context) {
        super(context, zzazn.API, null, new zzbas());
    }

    public static zzazt zzaq(@NonNull Context context) {
        return new zzazw(context);
    }

    public final PendingResult<Status> zza(zzazu zzazu) {
        return zzc(new zzazz(zzazu, zzpi()));
    }
}
