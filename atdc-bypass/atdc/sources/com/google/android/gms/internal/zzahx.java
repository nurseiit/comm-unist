package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.content.Context;

final class zzahx implements Runnable {
    private /* synthetic */ String zzZO;
    private /* synthetic */ boolean zzZP;
    private /* synthetic */ boolean zzZQ;
    final /* synthetic */ Context zztF;

    zzahx(zzahw zzahw, Context context, String str, boolean z, boolean z2) {
        this.zztF = context;
        this.zzZO = str;
        this.zzZP = z;
        this.zzZQ = z2;
    }

    public final void run() {
        Builder builder = new Builder(this.zztF);
        builder.setMessage(this.zzZO);
        builder.setTitle(this.zzZP ? "Error" : "Info");
        if (this.zzZQ) {
            builder.setNeutralButton("Dismiss", null);
        } else {
            builder.setPositiveButton("Learn More", new zzahy(this));
            builder.setNegativeButton("Dismiss", null);
        }
        builder.create().show();
    }
}
