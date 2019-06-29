package com.google.android.gms.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import java.util.Iterator;

public final class zzceu {
    final String mAppId;
    final String mName;
    private String mOrigin;
    final long zzayS;
    final long zzbpE;
    final zzcew zzbpF;

    zzceu(zzcgl zzcgl, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzbo.zzcF(str2);
        zzbo.zzcF(str3);
        this.mAppId = str2;
        this.mName = str3;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.mOrigin = str;
        this.zzayS = j;
        this.zzbpE = j2;
        if (this.zzbpE != 0 && this.zzbpE > this.zzayS) {
            zzcgl.zzwF().zzyz().zzj("Event created with reverse previous/current timestamps. appId", zzcfl.zzdZ(str2));
        }
        this.zzbpF = zza(zzcgl, bundle);
    }

    private zzceu(zzcgl zzcgl, String str, String str2, String str3, long j, long j2, zzcew zzcew) {
        zzbo.zzcF(str2);
        zzbo.zzcF(str3);
        zzbo.zzu(zzcew);
        this.mAppId = str2;
        this.mName = str3;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.mOrigin = str;
        this.zzayS = j;
        this.zzbpE = j2;
        if (this.zzbpE != 0 && this.zzbpE > this.zzayS) {
            zzcgl.zzwF().zzyz().zzj("Event created with reverse previous/current timestamps. appId", zzcfl.zzdZ(str2));
        }
        this.zzbpF = zzcew;
    }

    private static zzcew zza(zzcgl zzcgl, Bundle bundle) {
        if (bundle == null || bundle.isEmpty()) {
            return new zzcew(new Bundle());
        }
        Bundle bundle2 = new Bundle(bundle);
        Iterator it = bundle2.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                zzcgl.zzwF().zzyx().log("Param name can't be null");
            } else {
                Object zzk = zzcgl.zzwB().zzk(str, bundle2.get(str));
                if (zzk == null) {
                    zzcgl.zzwF().zzyz().zzj("Param value can't be null", zzcgl.zzwA().zzdX(str));
                } else {
                    zzcgl.zzwB().zza(bundle2, str, zzk);
                }
            }
            it.remove();
        }
        return new zzcew(bundle2);
    }

    public final String toString() {
        String str = this.mAppId;
        String str2 = this.mName;
        String valueOf = String.valueOf(this.zzbpF);
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str).length() + 33) + String.valueOf(str2).length()) + String.valueOf(valueOf).length());
        stringBuilder.append("Event{appId='");
        stringBuilder.append(str);
        stringBuilder.append("', name='");
        stringBuilder.append(str2);
        stringBuilder.append("', params=");
        stringBuilder.append(valueOf);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: final */
    public final zzceu zza(zzcgl zzcgl, long j) {
        return new zzceu(zzcgl, this.mOrigin, this.mAppId, this.mName, this.zzayS, j, this.zzbpF);
    }
}
