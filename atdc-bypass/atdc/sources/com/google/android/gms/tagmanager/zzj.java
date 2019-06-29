package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzj extends zzbr {
    private static final String ID = zzbf.APP_NAME.toString();
    private final Context mContext;

    public zzj(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            return zzgk.zzI(packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mContext.getPackageName(), 0)).toString());
        } catch (NameNotFoundException e) {
            zzdj.zzb("App name is not found.", e);
            return zzgk.zzCh();
        }
    }
}
