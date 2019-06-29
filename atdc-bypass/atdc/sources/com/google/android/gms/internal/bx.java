package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.common.internal.zzbo;
import java.util.Map.Entry;

public final class bx extends zzcxq {
    private final zzcux zzbKi;

    public bx(zzcux zzcux) {
        this.zzbKi = zzcux;
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length > 0);
        dp dpVar = dpVarArr[0];
        zzbo.zzaf(!(dpVar instanceof dv));
        dv dvVar = dpVarArr.length > 1 ? dpVarArr[1] : dv.zzbLu;
        boolean z2 = dvVar == dv.zzbLu || (dvVar instanceof dw);
        zzbo.zzaf(z2);
        dp dpVar2 = dpVarArr.length > 2 ? dpVarArr[2] : dv.zzbLu;
        if (dpVar2 != dv.zzbLu && (dpVar2 instanceof dv)) {
            z = false;
        }
        zzbo.zzaf(z);
        Builder buildUpon = Uri.parse(zzcxp.zzd(dpVar)).buildUpon();
        if (dvVar != dv.zzbLu) {
            for (dp dpVar3 : ((dw) dvVar).zzDs()) {
                zzbo.zzaf(dpVar3 instanceof dz);
                for (Entry entry : ((dz) dpVar3).zzDt().entrySet()) {
                    buildUpon.appendQueryParameter(((String) entry.getKey()).toString(), zzcxp.zzd(ed.zza(zzcwa, (dp) entry.getValue())));
                }
            }
        }
        String uri = buildUpon.build().toString();
        String str;
        if (dpVar2 == dv.zzbLu) {
            this.zzbKi.zzfh(uri);
            str = "SendPixel: url = ";
            uri = String.valueOf(uri);
            uri = uri.length() != 0 ? str.concat(uri) : new String(str);
        } else {
            str = zzcxp.zzd(dpVar2);
            this.zzbKi.zzW(uri, str);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(uri).length() + 30) + String.valueOf(str).length());
            stringBuilder.append("SendPixel: url = ");
            stringBuilder.append(uri);
            stringBuilder.append(", uniqueId = ");
            stringBuilder.append(str);
            uri = stringBuilder.toString();
        }
        zzcvk.v(uri);
        return dv.zzbLu;
    }
}
