package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.tagmanager.zzce;
import com.google.android.gms.tagmanager.zzcn;

public final class zzcvz {
    private final Context mContext;
    private final String zzbDw;
    private final zzcn zzbHN;
    private final zzce zzbHW;

    public zzcvz(Context context, zzcn zzcn, zzce zzce, String str) {
        this.mContext = context.getApplicationContext();
        this.zzbHN = zzcn;
        this.zzbHW = zzce;
        this.zzbDw = str;
    }

    public final zzcvu zza(db dbVar, dj djVar) {
        return new zzcvu(this.mContext, this.zzbDw, dbVar, djVar, this.zzbHN, this.zzbHW);
    }
}
