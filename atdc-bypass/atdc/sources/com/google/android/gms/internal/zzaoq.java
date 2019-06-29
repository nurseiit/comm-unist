package com.google.android.gms.internal;

final class zzaoq extends zzamg implements zzanj<zzaor> {
    private final zzaor zzaiH = new zzaor();

    public zzaoq(zzamj zzamj) {
        super(zzamj);
    }

    public final void zzd(String str, int i) {
        if ("ga_sessionTimeout".equals(str)) {
            this.zzaiH.zzaiJ = i;
        } else {
            zzd("int configuration name not recognized", str);
        }
    }

    public final void zze(String str, boolean z) {
        if ("ga_autoActivityTracking".equals(str)) {
            this.zzaiH.zzaiK = z;
        } else if ("ga_anonymizeIp".equals(str)) {
            this.zzaiH.zzaiL = z;
        } else if ("ga_reportUncaughtExceptions".equals(str)) {
            this.zzaiH.zzaiM = z;
        } else {
            zzd("bool configuration name not recognized", str);
        }
    }

    public final void zzl(String str, String str2) {
        this.zzaiH.zzaiN.put(str, str2);
    }

    public final /* synthetic */ zzanh zzlm() {
        return this.zzaiH;
    }

    public final void zzm(String str, String str2) {
        if ("ga_trackingId".equals(str)) {
            this.zzaiH.zzado = str2;
        } else if ("ga_sampleFrequency".equals(str)) {
            try {
                this.zzaiH.zzaiI = Double.parseDouble(str2);
            } catch (NumberFormatException e) {
                zzc("Error parsing ga_sampleFrequency value", str2, e);
            }
        } else {
            zzd("string configuration name not recognized", str);
        }
    }
}
