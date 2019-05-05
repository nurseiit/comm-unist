package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class zzwp implements OnClickListener {
    private /* synthetic */ zzwn zzNQ;

    zzwp(zzwn zzwn) {
        this.zzNQ = zzwn;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzNQ.zzan("User canceled the download.");
    }
}
