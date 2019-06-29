package com.google.android.gms.internal;

import android.net.Uri;

final class zzcwy implements Runnable {
    private /* synthetic */ Uri zzbJB;
    private /* synthetic */ zzcwn zzbJp;

    zzcwy(zzcwn zzcwn, Uri uri) {
        this.zzbJp = zzcwn;
        this.zzbJB = uri;
    }

    public final void run() {
        String valueOf = String.valueOf(this.zzbJB);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 25);
        stringBuilder.append("Preview requested to uri ");
        stringBuilder.append(valueOf);
        zzcvk.v(stringBuilder.toString());
        synchronized (this.zzbJp.zzbJj) {
            if (this.zzbJp.zzbJl == 2) {
                zzcvk.v("Still initializing. Defer preview container loading.");
                this.zzbJp.zzbJm.add(this);
                return;
            }
            String str = (String) this.zzbJp.zzf(null).first;
            StringBuilder stringBuilder2;
            if (str == null) {
                zzcvk.zzaT("Preview failed (no container found)");
            } else if (!this.zzbJp.zzbJh.zzc(str, this.zzbJB)) {
                str = String.valueOf(this.zzbJB);
                stringBuilder2 = new StringBuilder(String.valueOf(str).length() + 73);
                stringBuilder2.append("Cannot preview the app with the uri: ");
                stringBuilder2.append(str);
                stringBuilder2.append(". Launching current version instead.");
                zzcvk.zzaT(stringBuilder2.toString());
            } else if (this.zzbJp.zzuH) {
                str = String.valueOf(this.zzbJB);
                stringBuilder2 = new StringBuilder(String.valueOf(str).length() + 36);
                stringBuilder2.append("Starting to load preview container: ");
                stringBuilder2.append(str);
                zzcvk.zzaS(stringBuilder2.toString());
                if (this.zzbJp.zzbJg.zzCF()) {
                    this.zzbJp.zzuH = false;
                    this.zzbJp.zzbJl = 1;
                    this.zzbJp.initialize();
                    return;
                }
                zzcvk.zzaT("Failed to reset TagManager service for preview");
            } else {
                str = String.valueOf(this.zzbJB);
                stringBuilder2 = new StringBuilder(String.valueOf(str).length() + 84);
                stringBuilder2.append("Deferring container loading for preview uri: ");
                stringBuilder2.append(str);
                stringBuilder2.append("(Tag Manager has not been initialized).");
                zzcvk.v(stringBuilder2.toString());
            }
        }
    }
}
