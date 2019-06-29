package com.google.android.gms.internal;

final class zzanv implements zzanj<zzanw> {
    private final zzamj zzafJ;
    private final zzanw zzahX = new zzanw();

    public zzanv(zzamj zzamj) {
        this.zzafJ = zzamj;
    }

    public final void zzd(String str, int i) {
        if ("ga_dispatchPeriod".equals(str)) {
            this.zzahX.zzahZ = i;
        } else {
            this.zzafJ.zzkr().zzd("Int xml configuration name not recognized", str);
        }
    }

    public final void zze(String str, boolean z) {
        if ("ga_dryRun".equals(str)) {
            this.zzahX.zzaia = z;
        } else {
            this.zzafJ.zzkr().zzd("Bool xml configuration name not recognized", str);
        }
    }

    public final void zzl(String str, String str2) {
    }

    public final /* synthetic */ zzanh zzlm() {
        return this.zzahX;
    }

    public final void zzm(String str, String str2) {
        if ("ga_appName".equals(str)) {
            this.zzahX.zzaeH = str2;
        } else if ("ga_appVersion".equals(str)) {
            this.zzahX.zzaeI = str2;
        } else if ("ga_logLevel".equals(str)) {
            this.zzahX.zzahY = str2;
        } else {
            this.zzafJ.zzkr().zzd("String xml configuration name not recognized", str);
        }
    }
}
