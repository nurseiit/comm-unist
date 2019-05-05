package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.JsPromptResult;

final class zzala implements OnCancelListener {
    private /* synthetic */ JsPromptResult zzacI;

    zzala(JsPromptResult jsPromptResult) {
        this.zzacI = jsPromptResult;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        this.zzacI.cancel();
    }
}
