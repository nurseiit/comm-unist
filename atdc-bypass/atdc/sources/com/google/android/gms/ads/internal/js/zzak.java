package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzrd;
import com.google.android.gms.internal.zzzn;
import java.util.AbstractMap.SimpleEntry;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

@zzzn
public final class zzak implements zzaj {
    private final zzai zzLB;
    private final HashSet<SimpleEntry<String, zzrd>> zzLC = new HashSet();

    public zzak(zzai zzai) {
        this.zzLB = zzai;
    }

    public final void zza(String str, zzrd zzrd) {
        this.zzLB.zza(str, zzrd);
        this.zzLC.add(new SimpleEntry(str, zzrd));
    }

    public final void zza(String str, JSONObject jSONObject) {
        this.zzLB.zza(str, jSONObject);
    }

    public final void zzb(String str, zzrd zzrd) {
        this.zzLB.zzb(str, zzrd);
        this.zzLC.remove(new SimpleEntry(str, zzrd));
    }

    public final void zzb(String str, JSONObject jSONObject) {
        this.zzLB.zzb(str, jSONObject);
    }

    public final void zzfe() {
        Iterator it = this.zzLC.iterator();
        while (it.hasNext()) {
            SimpleEntry simpleEntry = (SimpleEntry) it.next();
            String str = "Unregistering eventhandler: ";
            String valueOf = String.valueOf(((zzrd) simpleEntry.getValue()).toString());
            zzafr.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.zzLB.zzb((String) simpleEntry.getKey(), (zzrd) simpleEntry.getValue());
        }
        this.zzLC.clear();
    }

    public final void zzi(String str, String str2) {
        this.zzLB.zzi(str, str2);
    }
}
