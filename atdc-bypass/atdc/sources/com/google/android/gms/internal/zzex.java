package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamic.zzp;
import com.google.android.gms.dynamic.zzq;

@zzzn
public final class zzex extends zzp<zzfb> {
    private static final zzex zzsm = new zzex();

    private zzex() {
        super("com.google.android.gms.ads.adshield.AdShieldCreatorImpl");
    }

    public static zzey zzb(String str, Context context, boolean z) {
        if (zze.zzoW().isGooglePlayServicesAvailable(context) == 0) {
            zzey zzc = zzsm.zzc(str, context, false);
            if (zzc != null) {
                return zzc;
            }
        }
        return new zzew(str, context, false);
    }

    private final zzey zzc(String str, Context context, boolean z) {
        IBinder zza;
        IObjectWrapper zzw = zzn.zzw(context);
        if (z) {
            try {
                zza = ((zzfb) zzaS(context)).zza(str, zzw);
            } catch (RemoteException | zzq unused) {
                return null;
            }
        }
        zza = ((zzfb) zzaS(context)).zzb(str, zzw);
        if (zza == null) {
            return null;
        }
        IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
        return queryLocalInterface instanceof zzey ? (zzey) queryLocalInterface : new zzfa(zza);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.adshield.internal.IAdShieldCreator");
        return queryLocalInterface instanceof zzfb ? (zzfb) queryLocalInterface : new zzfc(iBinder);
    }
}
