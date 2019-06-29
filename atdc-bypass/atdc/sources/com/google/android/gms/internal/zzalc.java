package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;
import android.widget.EditText;

final class zzalc implements OnClickListener {
    private /* synthetic */ JsPromptResult zzacI;
    private /* synthetic */ EditText zzacJ;

    zzalc(JsPromptResult jsPromptResult, EditText editText) {
        this.zzacI = jsPromptResult;
        this.zzacJ = editText;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzacI.confirm(this.zzacJ.getText().toString());
    }
}
