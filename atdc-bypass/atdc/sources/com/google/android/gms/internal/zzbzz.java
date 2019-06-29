package com.google.android.gms.internal;

import android.os.RemoteException;

public final class zzbzz extends zzbzu<String> {
    public zzbzz(int i, String str, String str2) {
        super(0, str, str2, null);
    }

    private final String zze(zzcac zzcac) {
        try {
            return zzcac.getStringFlagValue(getKey(), (String) zzdI(), getSource());
        } catch (RemoteException unused) {
            return (String) zzdI();
        }
    }

    public final /* synthetic */ Object zza(zzcac zzcac) {
        return zze(zzcac);
    }
}
