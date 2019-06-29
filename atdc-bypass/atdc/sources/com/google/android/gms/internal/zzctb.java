package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.SearchAuth;

final class zzctb extends zzbay<Status, zzcsy> {
    private final String zzbCA;
    private final boolean zzbCB = Log.isLoggable("SearchAuth", 3);
    private final String zzbCx;

    protected zzctb(GoogleApiClient googleApiClient, String str) {
        super(SearchAuth.API, googleApiClient);
        this.zzbCx = str;
        this.zzbCA = googleApiClient.getContext().getPackageName();
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Status) obj);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        if (this.zzbCB) {
            String str = "SearchAuth";
            String str2 = "ClearTokenImpl received failure: ";
            String valueOf = String.valueOf(status.getStatusMessage());
            Log.d(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        return status;
    }
}
