package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.google.android.gms.ads.internal.zzbs;

final class zzahs implements OnClickListener {
    private /* synthetic */ zzahq zzZI;
    private /* synthetic */ String zzZJ;

    zzahs(zzahq zzahq, String str) {
        this.zzZI = zzahq;
        this.zzZJ = str;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        zzbs.zzbz();
        zzagz.zzb(this.zzZI.mContext, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", this.zzZJ), "Share via"));
    }
}
