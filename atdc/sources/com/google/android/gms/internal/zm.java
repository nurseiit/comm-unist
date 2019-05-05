package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public final class zm extends zzz<zv> {
    public zm(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 131, zzq, connectionCallbacks, onConnectionFailedListener);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    @Nullable
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
        return queryLocalInterface instanceof zv ? (zv) queryLocalInterface : new zw(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String zzdb() {
        return "com.google.firebase.dynamiclinks.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String zzdc() {
        return "com.google.firebase.dynamiclinks.internal.IDynamicLinksService";
    }
}
