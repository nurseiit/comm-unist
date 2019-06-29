package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;

final class zzbai {
    final ContentResolver zzazQ;

    zzbai(Context context) {
        if (context != null) {
            if (zzbah.zzazO == null) {
                zzbah.zzazO = Boolean.valueOf(zzbha.zzaP(context).checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
            }
            if (zzbah.zzazO.booleanValue()) {
                this.zzazQ = context.getContentResolver();
                hi.zzb(this.zzazQ, "gms:playlog:service:sampling_");
                return;
            }
        }
        this.zzazQ = null;
    }
}
