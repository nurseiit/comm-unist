package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsResult;

final class zzakz implements OnClickListener {
    private /* synthetic */ JsResult zzacH;

    zzakz(JsResult jsResult) {
        this.zzacH = jsResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzacH.confirm();
    }
}
