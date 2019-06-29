package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.JsResult;

final class zzakx implements OnCancelListener {
    private /* synthetic */ JsResult zzacH;

    zzakx(JsResult jsResult) {
        this.zzacH = jsResult;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        this.zzacH.cancel();
    }
}
