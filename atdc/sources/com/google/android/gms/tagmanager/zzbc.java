package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzbc extends zzbr {
    private static final String ID = zzbf.DEVICE_ID.toString();
    private final Context mContext;

    public zzbc(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        String string = Secure.getString(this.mContext.getContentResolver(), "android_id");
        return string == null ? zzgk.zzCh() : zzgk.zzI(string);
    }
}
