package com.google.android.gms.internal;

import java.util.Map;

final class ou implements oy {
    private /* synthetic */ String zzbST;
    private /* synthetic */ op zzcbf;
    private /* synthetic */ pf zzcbi;
    private /* synthetic */ long zzcbk;
    private /* synthetic */ pd zzcbl;

    ou(op opVar, String str, long j, pd pdVar, pf pfVar) {
        this.zzcbf = opVar;
        this.zzbST = str;
        this.zzcbk = j;
        this.zzcbl = pdVar;
        this.zzcbi = pfVar;
    }

    public final void zzC(Map<String, Object> map) {
        if (this.zzcbf.zzbZE.zzIH()) {
            wl zza = this.zzcbf.zzbZE;
            String str = this.zzbST;
            String valueOf = String.valueOf(map);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 11) + String.valueOf(valueOf).length());
            stringBuilder.append(str);
            stringBuilder.append(" response: ");
            stringBuilder.append(valueOf);
            zza.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (((pd) this.zzcbf.zzcaS.get(Long.valueOf(this.zzcbk))) == this.zzcbl) {
            this.zzcbf.zzcaS.remove(Long.valueOf(this.zzcbk));
            if (this.zzcbi != null) {
                String str2 = (String) map.get("s");
                if (str2.equals("ok")) {
                    this.zzcbi.zzaa(null, null);
                } else {
                    this.zzcbi.zzaa(str2, (String) map.get("d"));
                }
            }
        } else if (this.zzcbf.zzbZE.zzIH()) {
            wl zza2 = this.zzcbf.zzbZE;
            long j = this.zzcbk;
            StringBuilder stringBuilder2 = new StringBuilder(81);
            stringBuilder2.append("Ignoring on complete for put ");
            stringBuilder2.append(j);
            stringBuilder2.append(" because it was removed already.");
            zza2.zzb(stringBuilder2.toString(), null, new Object[0]);
        }
        this.zzcbf.zzGi();
    }
}
