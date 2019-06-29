package com.google.android.gms.internal;

import android.content.SharedPreferences.Editor;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;

@zzzn
public final class zzmk {
    private final Collection<zzme> zzBP = new ArrayList();
    private final Collection<zzme<String>> zzBQ = new ArrayList();
    private final Collection<zzme<String>> zzBR = new ArrayList();

    public final void zza(Editor editor, int i, JSONObject jSONObject) {
        for (zzme zzme : this.zzBP) {
            if (zzme.getSource() == 1) {
                zzme.zza(editor, zzme.zzb(jSONObject));
            }
        }
    }

    public final void zza(zzme zzme) {
        this.zzBP.add(zzme);
    }

    public final void zzb(zzme<String> zzme) {
        this.zzBQ.add(zzme);
    }

    public final void zzc(zzme<String> zzme) {
        this.zzBR.add(zzme);
    }

    public final List<String> zzdJ() {
        ArrayList arrayList = new ArrayList();
        for (zzme zzd : this.zzBQ) {
            String str = (String) zzbs.zzbL().zzd(zzd);
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final List<String> zzdK() {
        List zzdJ = zzdJ();
        for (zzme zzd : this.zzBR) {
            String str = (String) zzbs.zzbL().zzd(zzd);
            if (str != null) {
                zzdJ.add(str);
            }
        }
        return zzdJ;
    }
}
