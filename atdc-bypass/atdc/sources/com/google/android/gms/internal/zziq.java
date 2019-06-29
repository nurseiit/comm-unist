package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamic.zzp;
import com.google.android.gms.dynamic.zzq;

@zzzn
public final class zziq extends zzp<zzkc> {
    public zziq() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public final zzjz zza(Context context, zziv zziv, String str, zzuq zzuq, int i) {
        try {
            IBinder zza = ((zzkc) zzaS(context)).zza(zzn.zzw(context), zziv, str, zzuq, zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE, i);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof zzjz ? (zzjz) queryLocalInterface : new zzkb(zza);
        } catch (RemoteException | zzq e) {
            zzajc.zza("Could not create remote AdManager.", e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof zzkc ? (zzkc) queryLocalInterface : new zzkd(iBinder);
    }
}
