package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;

final class zzcte extends zzcta {
    private /* synthetic */ zzctd zzbCE;

    zzcte(zzctd zzctd) {
        this.zzbCE = zzctd;
    }

    public final void zza(Status status, GoogleNowAuthState googleNowAuthState) {
        if (this.zzbCE.zzbCB) {
            Log.d("SearchAuth", "GetGoogleNowAuthImpl success");
        }
        this.zzbCE.setResult(new zzctf(status, googleNowAuthState));
    }
}
