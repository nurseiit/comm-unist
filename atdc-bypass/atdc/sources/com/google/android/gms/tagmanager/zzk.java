package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzk extends zzbr {
    private static final String ID = zzbf.APP_VERSION.toString();
    private final Context mContext;

    public zzk(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        try {
            return zzgk.zzI(Integer.valueOf(this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode));
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(this.mContext.getPackageName());
            String valueOf2 = String.valueOf(e.getMessage());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 25) + String.valueOf(valueOf2).length());
            stringBuilder.append("Package name ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" not found. ");
            stringBuilder.append(valueOf2);
            zzdj.e(stringBuilder.toString());
            return zzgk.zzCh();
        }
    }
}
