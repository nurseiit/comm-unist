package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.SearchAuth;
import com.google.android.gms.search.SearchAuthApi.GoogleNowAuthResult;

final class zzctd extends zzbay<GoogleNowAuthResult, zzcsy> {
    private final String zzbCA;
    private final boolean zzbCB = Log.isLoggable("SearchAuth", 3);
    private final String zzbCD;

    protected zzctd(GoogleApiClient googleApiClient, String str) {
        super(SearchAuth.API, googleApiClient);
        this.zzbCD = str;
        this.zzbCA = googleApiClient.getContext().getPackageName();
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((GoogleNowAuthResult) obj);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        if (this.zzbCB) {
            String str = "SearchAuth";
            String str2 = "GetGoogleNowAuthImpl received failure: ";
            String valueOf = String.valueOf(status.getStatusMessage());
            Log.d(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        return new zzctf(status, null);
    }
}
