package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzll extends zzjs {
    final /* synthetic */ zzlj zzBr;

    private zzll(zzlj zzlj) {
        this.zzBr = zzlj;
    }

    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    public final boolean isLoading() throws RemoteException {
        return false;
    }

    public final String zzaI() throws RemoteException {
        return null;
    }

    public final void zzc(zzir zzir) throws RemoteException {
        zzajc.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzaiy.zzaaH.post(new zzlm(this));
    }
}
