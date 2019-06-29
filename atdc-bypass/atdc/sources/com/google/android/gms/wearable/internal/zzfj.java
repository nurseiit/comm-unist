package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.wearable.Channel.GetOutputStreamResult;
import java.io.OutputStream;

final class zzfj extends zzfc<GetOutputStreamResult> {
    private final zzbd zzbTf;

    public zzfj(zzbaz<GetOutputStreamResult> zzbaz, zzbd zzbd) {
        super(zzbaz);
        this.zzbTf = (zzbd) zzbo.zzu(zzbd);
    }

    public final void zza(zzcm zzcm) {
        OutputStream zzax;
        if (zzcm.zzbSI != null) {
            zzax = new zzax(new AutoCloseOutputStream(zzcm.zzbSI));
            this.zzbTf.zza(new zzay(zzax));
        } else {
            zzax = null;
        }
        zzR(new zzat(new Status(zzcm.statusCode), zzax));
    }
}
