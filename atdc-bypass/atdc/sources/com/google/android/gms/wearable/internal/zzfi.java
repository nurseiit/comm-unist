package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.wearable.Channel.GetInputStreamResult;
import java.io.InputStream;

final class zzfi extends zzfc<GetInputStreamResult> {
    private final zzbd zzbTf;

    public zzfi(zzbaz<GetInputStreamResult> zzbaz, zzbd zzbd) {
        super(zzbaz);
        this.zzbTf = (zzbd) zzbo.zzu(zzbd);
    }

    public final void zza(zzck zzck) {
        InputStream zzav;
        if (zzck.zzbSI != null) {
            zzav = new zzav(new AutoCloseInputStream(zzck.zzbSI));
            this.zzbTf.zza(new zzaw(zzav));
        } else {
            zzav = null;
        }
        zzR(new zzas(new Status(zzck.statusCode), zzav));
    }
}
