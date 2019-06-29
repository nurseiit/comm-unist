package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamic.zzp;
import com.google.android.gms.dynamic.zzq;

@zzzn
public final class zzww extends zzp<zzxa> {
    public zzww() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof zzxa ? (zzxa) queryLocalInterface : new zzxb(iBinder);
    }

    public final zzwx zze(Activity activity) {
        try {
            IBinder zzp = ((zzxa) zzaS(activity)).zzp(zzn.zzw(activity));
            if (zzp == null) {
                return null;
            }
            IInterface queryLocalInterface = zzp.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof zzwx ? (zzwx) queryLocalInterface : new zzwz(zzp);
        } catch (RemoteException | zzq e) {
            zzajc.zzc("Could not create remote AdOverlay.", e);
            return null;
        }
    }
}
