package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;

final class zzcqh extends zzcqb {
    private /* synthetic */ Uri zzbzR;
    private /* synthetic */ zzcqa zzbzS;
    private /* synthetic */ Context zztF;

    zzcqh(Context context, Uri uri, zzcqa zzcqa) {
        this.zztF = context;
        this.zzbzR = uri;
        this.zzbzS = zzcqa;
    }

    public final void zza(int i, Bundle bundle, int i2, Intent intent) throws RemoteException {
        zzcqe.zzb(this.zztF, this.zzbzR);
        this.zzbzS.zza(i, bundle, i2, intent);
    }
}
