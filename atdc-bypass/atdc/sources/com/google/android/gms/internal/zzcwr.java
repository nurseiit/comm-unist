package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.tagmanager.zzci;

final class zzcwr extends zzci {
    final /* synthetic */ zzcwn zzbJp;

    zzcwr(zzcwn zzcwn) {
        this.zzbJp = zzcwn;
    }

    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        if (!str.endsWith("+gtm")) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 4);
            stringBuilder.append(str);
            stringBuilder.append("+gtm");
            this.zzbJp.zzbHL.execute(new zzcws(this, str2, bundle, stringBuilder.toString(), j, str));
        }
    }
}
