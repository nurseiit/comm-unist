package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.zze;
import com.google.android.gms.security.ProviderInstaller.ProviderInstallListener;

final class zza extends AsyncTask<Void, Void, Integer> {
    private /* synthetic */ ProviderInstallListener zzbCI;
    private /* synthetic */ Context zztF;

    zza(Context context, ProviderInstallListener providerInstallListener) {
        this.zztF = context;
        this.zzbCI = providerInstallListener;
    }

    private final Integer zzb(Void... voidArr) {
        int i;
        try {
            ProviderInstaller.installIfNeeded(this.zztF);
            i = 0;
        } catch (GooglePlayServicesRepairableException e) {
            i = e.getConnectionStatusCode();
        } catch (GooglePlayServicesNotAvailableException e2) {
            i = e2.errorCode;
        }
        return Integer.valueOf(i);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return zzb((Void[]) objArr);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void onPostExecute(Object obj) {
        Integer num = (Integer) obj;
        if (num.intValue() == 0) {
            this.zzbCI.onProviderInstalled();
            return;
        }
        ProviderInstaller.zzbCG;
        this.zzbCI.onProviderInstallFailed(num.intValue(), zze.zza(this.zztF, num.intValue(), "pi"));
    }
}
