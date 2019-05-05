package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zznp extends zzot {
    private final Uri mUri;
    private final double zzHA;
    private final Drawable zzHz;

    public zznp(Drawable drawable, Uri uri, double d) {
        this.zzHz = drawable;
        this.mUri = uri;
        this.zzHA = d;
    }

    public final double getScale() {
        return this.zzHA;
    }

    public final Uri getUri() throws RemoteException {
        return this.mUri;
    }

    public final IObjectWrapper zzeg() throws RemoteException {
        return zzn.zzw(this.zzHz);
    }
}
