package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzbs;
import java.util.Random;

final class zztj extends zzjp {
    private final zzjo zzKm;

    zztj(zzjo zzjo) {
        this.zzKm = zzjo;
    }

    public final void onAdClicked() throws RemoteException {
        this.zzKm.onAdClicked();
    }

    public final void onAdClosed() throws RemoteException {
        if (zzts.zzeX()) {
            int intValue = ((Integer) zzbs.zzbL().zzd(zzmo.zzEg)).intValue();
            int intValue2 = ((Integer) zzbs.zzbL().zzd(zzmo.zzEh)).intValue();
            if (intValue <= 0 || intValue2 < 0) {
                zzbs.zzbN().zzeG();
            } else {
                zzagz.zzZr.postDelayed(zztk.zzKn, (long) (intValue + new Random().nextInt(intValue2 + 1)));
            }
        }
        this.zzKm.onAdClosed();
    }

    public final void onAdFailedToLoad(int i) throws RemoteException {
        this.zzKm.onAdFailedToLoad(i);
    }

    public final void onAdImpression() throws RemoteException {
        this.zzKm.onAdImpression();
    }

    public final void onAdLeftApplication() throws RemoteException {
        this.zzKm.onAdLeftApplication();
    }

    public final void onAdLoaded() throws RemoteException {
        this.zzKm.onAdLoaded();
    }

    public final void onAdOpened() throws RemoteException {
        this.zzKm.onAdOpened();
    }
}
