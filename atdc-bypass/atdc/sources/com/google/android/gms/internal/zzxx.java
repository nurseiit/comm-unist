package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzbb;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.util.zzq;

@zzzn
public final class zzxx {
    public static zzahp zza(Context context, zza zza, zzafg zzafg, zzcu zzcu, @Nullable zzaka zzaka, zzuq zzuq, zzxy zzxy, zznb zznb) {
        Object zzyc;
        zzaai zzaai = zzafg.zzXY;
        if (zzaai.zzTo) {
            zzyd zzyd = new zzyd(context, zzafg, zzuq, zzxy, zznb, zzaka);
        } else if (!zzaai.zzAv && !(zza instanceof zzbb)) {
            zzyc = (((Boolean) zzbs.zzbL().zzd(zzmo.zzDm)).booleanValue() && zzq.zzsc() && !zzq.zzse() && zzaka != null && zzaka.zzam().zzAt) ? new zzyc(context, zzafg, zzaka, zzxy) : new zzxz(context, zzafg, zzaka, zzxy);
        } else if (zzaai.zzAv && (zza instanceof zzbb)) {
            zzyf zzyf = new zzyf(context, (zzbb) zza, zzafg, zzcu, zzxy, zznb);
        } else {
            zzyc = new zzya(zzafg, zzxy);
        }
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(zzyc.getClass().getName());
        zzajc.zzaC(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        zzyc.zzgp();
        return zzyc;
    }
}
