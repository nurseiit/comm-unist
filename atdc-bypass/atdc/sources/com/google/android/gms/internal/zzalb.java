package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;

final class zzalb implements OnClickListener {
    private /* synthetic */ JsPromptResult zzacI;

    zzalb(JsPromptResult jsPromptResult) {
        this.zzacI = jsPromptResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzacI.cancel();
    }
}
