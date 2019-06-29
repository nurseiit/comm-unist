package com.google.android.gms.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzzg implements zzyv<zzns> {
    private final boolean zzSe;
    private final boolean zzSf;

    public zzzg(boolean z, boolean z2) {
        this.zzSe = z;
        this.zzSf = z2;
    }

    public final /* synthetic */ zzoa zza(zzyn zzyn, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        zzyn zzyn2 = zzyn;
        JSONObject jSONObject2 = jSONObject;
        List<zzajm> zza = zzyn2.zza(jSONObject2, "images", false, this.zzSe, this.zzSf);
        zzajm zza2 = zzyn2.zza(jSONObject2, "secondary_image", false, this.zzSe);
        zzajm zzd = zzyn.zzd(jSONObject);
        zzajm zzc = zzyn2.zzc(jSONObject2, "video");
        ArrayList arrayList = new ArrayList();
        for (zzajm zzajm : zza) {
            arrayList.add((zznp) zzajm.get());
        }
        zzaka zzb = zzyn.zzb(zzc);
        return new zzns(jSONObject2.getString("headline"), arrayList, jSONObject2.getString("body"), (zzos) zza2.get(), jSONObject2.getString("call_to_action"), jSONObject2.getString("advertiser"), (zznn) zzd.get(), new Bundle(), zzb != null ? zzb.zziH() : null, zzb != null ? zzb.getView() : null);
    }
}
