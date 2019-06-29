package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzcvk;
import com.google.android.gms.internal.zzcvq;
import com.google.android.gms.internal.zzcwn;

@DynamiteApi
public class TagManagerApiImpl extends zzcr {
    private zzcwn zzbGZ;

    public void initialize(IObjectWrapper iObjectWrapper, zzcn zzcn, zzce zzce) throws RemoteException {
        this.zzbGZ = zzcwn.zza((Context) zzn.zzE(iObjectWrapper), zzcn, zzce);
        this.zzbGZ.zze(null);
    }

    @Deprecated
    public void preview(Intent intent, IObjectWrapper iObjectWrapper) {
        zzcvk.zzaT("Deprecated. Please use previewIntent instead.");
    }

    public void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzcn zzcn, zzce zzce) {
        Context context = (Context) zzn.zzE(iObjectWrapper);
        Context context2 = (Context) zzn.zzE(iObjectWrapper2);
        this.zzbGZ = zzcwn.zza(context, zzcn, zzce);
        new zzcvq(intent, context, context2, this.zzbGZ).zzCv();
    }
}
