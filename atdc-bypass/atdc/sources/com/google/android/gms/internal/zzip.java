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
public final class zzip extends zzp<zzjx> {
    public zzip() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public final zzju zza(Context context, String str, zzuq zzuq) {
        try {
            IBinder zza = ((zzjx) zzaS(context)).zza(zzn.zzw(context), str, zzuq, zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof zzju ? (zzju) queryLocalInterface : new zzjw(zza);
        } catch (RemoteException | zzq e) {
            zzajc.zzc("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof zzjx ? (zzjx) queryLocalInterface : new zzjy(iBinder);
    }
}
