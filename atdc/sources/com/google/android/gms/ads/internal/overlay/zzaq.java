package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzzn;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzaq {
    private String zzQt;
    private boolean zzQu;
    private int zzQv;
    private int zzQw;

    public zzaq(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.zzQu = zza(jSONObject, "acquire_decoder_before_play", zzmo.zzCB);
        this.zzQt = zzc(jSONObject, "exo_player_version", zzmo.zzCk);
        this.zzQw = zzb(jSONObject, "exo_cache_buffer_size", zzmo.zzCp);
        this.zzQv = zzb(jSONObject, "exo_allocator_segment_size", zzmo.zzCo);
    }

    private static boolean zza(JSONObject jSONObject, String str, zzme<Boolean> zzme) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
            }
        }
        return ((Boolean) zzbs.zzbL().zzd(zzme)).booleanValue();
    }

    private static int zzb(JSONObject jSONObject, String str, zzme<Integer> zzme) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) zzbs.zzbL().zzd(zzme)).intValue();
    }

    private static String zzc(JSONObject jSONObject, String str, zzme<String> zzme) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException unused) {
            }
        }
        return (String) zzbs.zzbL().zzd(zzme);
    }
}
