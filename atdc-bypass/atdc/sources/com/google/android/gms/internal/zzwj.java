package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class zzwj implements OnClickListener {
    private /* synthetic */ zzwh zzNx;

    zzwj(zzwh zzwh) {
        this.zzNx = zzwh;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzNx.zzan("Operation denied by user.");
    }
}
