package com.google.android.gms.internal;

final class zzaig implements zzu {
    private /* synthetic */ zzain zzaag;
    private /* synthetic */ String zzsD;

    zzaig(zzaie zzaie, String str, zzain zzain) {
        this.zzsD = str;
        this.zzaag = zzain;
    }

    public final void zzd(zzaa zzaa) {
        String str = this.zzsD;
        String valueOf = String.valueOf(zzaa.toString());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 21) + String.valueOf(valueOf).length());
        stringBuilder.append("Failed to load URL: ");
        stringBuilder.append(str);
        stringBuilder.append("\n");
        stringBuilder.append(valueOf);
        zzajc.zzaT(stringBuilder.toString());
        this.zzaag.zzb(null);
    }
}
