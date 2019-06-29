package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.google.android.gms.ads.internal.zzbs;

final class zzwi implements OnClickListener {
    private /* synthetic */ zzwh zzNx;

    zzwi(zzwh zzwh) {
        this.zzNx = zzwh;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        Intent createIntent = this.zzNx.createIntent();
        zzbs.zzbz();
        zzagz.zzb(this.zzNx.mContext, createIntent);
    }
}
