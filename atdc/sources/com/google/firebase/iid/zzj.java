package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.lotecs.attendcheck.common.GCMManager;
import java.io.IOException;
import java.security.KeyPair;
import java.util.Map;

public final class zzj {
    private static Map<String, zzj> zzbgQ = new ArrayMap();
    static String zzbgW;
    private static zzr zzckF;
    private static zzl zzckG;
    private Context mContext;
    private KeyPair zzbgT;
    private String zzbgU = "";

    private zzj(Context context, String str, Bundle bundle) {
        this.mContext = context.getApplicationContext();
        this.zzbgU = str;
    }

    public static zzr zzJT() {
        return zzckF;
    }

    public static zzl zzJU() {
        return zzckG;
    }

    public static synchronized zzj zzb(Context context, Bundle bundle) {
        zzj zzj;
        synchronized (zzj.class) {
            Object obj;
            if (bundle == null) {
                try {
                    obj = "";
                } catch (Throwable th) {
                }
            } else {
                obj = bundle.getString("subtype");
            }
            if (obj == null) {
                obj = "";
            }
            context = context.getApplicationContext();
            if (zzckF == null) {
                zzckF = new zzr(context);
                zzckG = new zzl(context);
            }
            zzbgW = Integer.toString(FirebaseInstanceId.zzbF(context));
            zzj = (zzj) zzbgQ.get(obj);
            if (zzj == null) {
                zzj = new zzj(context, obj, bundle);
                zzbgQ.put(obj, zzj);
            }
        }
        return zzj;
    }

    public final long getCreationTime() {
        return zzckF.zzhk(this.zzbgU);
    }

    public final String getToken(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        Object obj = 1;
        if (bundle.getString("ttl") != null || "jwt".equals(bundle.getString("type"))) {
            obj = null;
        } else {
            zzs zzp = zzckF.zzp(this.zzbgU, str, str2);
            if (!(zzp == null || zzp.zzhp(zzbgW))) {
                return zzp.zzbPJ;
            }
        }
        String zzc = zzc(str, str2, bundle);
        if (!(zzc == null || obj == null)) {
            zzckF.zza(this.zzbgU, str, str2, zzc, zzbgW);
        }
        return zzc;
    }

    public final void zzb(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zzckF.zzg(this.zzbgU, str, str2);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("delete", "1");
        zzc(str, str2, bundle);
    }

    public final String zzc(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        if (!"".equals(this.zzbgU)) {
            str = this.zzbgU;
        }
        bundle.putString("subtype", str);
        bundle.putString("X-subtype", str);
        Intent zza = zzckG.zza(bundle, zzvK());
        if (zza == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        str2 = zza.getStringExtra(GCMManager.PROPERTY_REG_ID);
        if (str2 == null) {
            str2 = zza.getStringExtra("unregistered");
        }
        if (str2 != null) {
            return str2;
        }
        str2 = zza.getStringExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        if (str2 != null) {
            throw new IOException(str2);
        }
        str = String.valueOf(zza.getExtras());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 29);
        stringBuilder.append("Unexpected response from GCM ");
        stringBuilder.append(str);
        Log.w("InstanceID/Rpc", stringBuilder.toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* Access modifiers changed, original: final */
    public final KeyPair zzvK() {
        if (this.zzbgT == null) {
            this.zzbgT = zzckF.zzhn(this.zzbgU);
        }
        if (this.zzbgT == null) {
            this.zzbgT = zzckF.zzhl(this.zzbgU);
        }
        return this.zzbgT;
    }

    public final void zzvL() {
        zzckF.zzhm(this.zzbgU);
        this.zzbgT = null;
    }
}
