package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsResult;

final class zzaky implements OnClickListener {
    private /* synthetic */ JsResult zzacH;

    zzaky(JsResult jsResult) {
        this.zzacH = jsResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzacH.cancel();
    }
}
