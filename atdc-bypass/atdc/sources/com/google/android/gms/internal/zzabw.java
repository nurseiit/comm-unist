package com.google.android.gms.internal;

import java.util.Map;

final class zzabw implements zzrd {
    private /* synthetic */ zzabu zzUR;

    zzabw(zzabu zzabu) {
        this.zzUR = zzabu;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        synchronized (this.zzUR.mLock) {
            if (this.zzUR.zzUM.isDone()) {
                return;
            }
            zzaca zzaca = new zzaca(-2, map);
            if (this.zzUR.zzQx.equals(zzaca.getRequestId())) {
                String url = zzaca.getUrl();
                if (url == null) {
                    zzajc.zzaT("URL missing in loadAdUrl GMSG.");
                    return;
                }
                if (url.contains("%40mediation_adapters%40")) {
                    String replaceAll = url.replaceAll("%40mediation_adapters%40", zzafo.zzb(zzaka.getContext(), (String) map.get("check_adapters"), this.zzUR.zzUL));
                    zzaca.setUrl(replaceAll);
                    String str = "Ad request URL modified to ";
                    replaceAll = String.valueOf(replaceAll);
                    zzafr.v(replaceAll.length() != 0 ? str.concat(replaceAll) : new String(str));
                }
                this.zzUR.zzUM.zzg(zzaca);
                return;
            }
        }
    }
}
