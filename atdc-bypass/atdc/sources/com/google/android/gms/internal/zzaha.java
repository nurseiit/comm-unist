package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import java.util.List;

final class zzaha implements zznm {
    private /* synthetic */ List zzZw;
    private /* synthetic */ zznl zzZx;
    private /* synthetic */ Context zztF;

    zzaha(zzagz zzagz, List list, zznl zznl, Context context) {
        this.zzZw = list;
        this.zzZx = zznl;
        this.zztF = context;
    }

    public final void zzea() {
        for (String str : this.zzZw) {
            String str2 = "Pinging url: ";
            String valueOf = String.valueOf(str);
            zzajc.zzaS(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            this.zzZx.mayLaunchUrl(Uri.parse(str), null, null);
        }
        this.zzZx.zzc((Activity) this.zztF);
    }

    public final void zzeb() {
    }
}
