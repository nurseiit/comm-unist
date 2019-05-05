package com.google.android.gms.internal;

final class zzcwz implements Runnable {
    private /* synthetic */ boolean zzbJC;
    private /* synthetic */ zzb zzbJD;
    private /* synthetic */ String zzbJw;

    zzcwz(zzb zzb, boolean z, String str) {
        this.zzbJD = zzb;
        this.zzbJC = z;
        this.zzbJw = str;
    }

    public final void run() {
        if (zzcwn.this.zzbJl == 2) {
            String str;
            if (this.zzbJC) {
                zzcwn.this.zzbJl = 3;
                str = this.zzbJw;
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 18);
                stringBuilder.append("Container ");
                stringBuilder.append(str);
                stringBuilder.append(" loaded.");
                zzcvk.v(stringBuilder.toString());
            } else {
                zzcwn.this.zzbJl = 4;
                str = "Error loading container:";
                String valueOf = String.valueOf(this.zzbJw);
                zzcvk.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
            while (!zzcwn.this.zzbJm.isEmpty()) {
                zzcwn.this.zzbHL.execute((Runnable) zzcwn.this.zzbJm.remove());
            }
            return;
        }
        zzcvk.zzaT("Container load callback completed after timeout");
    }
}
