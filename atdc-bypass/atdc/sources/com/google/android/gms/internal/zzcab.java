package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public final class zzcab {
    private zzcac zzaXG = null;
    private boolean zzuH = false;

    public final void initialize(Context context) {
        synchronized (this) {
            if (this.zzuH) {
                return;
            }
            try {
                this.zzaXG = zzcad.asInterface(DynamiteModule.zza(context, DynamiteModule.zzaSP, ModuleDescriptor.MODULE_ID).zzcV("com.google.android.gms.flags.impl.FlagProviderImpl"));
                this.zzaXG.init(zzn.zzw(context));
                this.zzuH = true;
            } catch (RemoteException | zzc e) {
                Log.w("FlagValueProvider", "Failed to initialize flags module.", e);
            }
        }
    }

    public final <T> T zzb(zzbzu<T> zzbzu) {
        synchronized (this) {
            if (this.zzuH) {
                return zzbzu.zza(this.zzaXG);
            }
            Object zzdI = zzbzu.zzdI();
            return zzdI;
        }
    }
}
