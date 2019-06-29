package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzbs;

final class zzahy implements OnClickListener {
    private /* synthetic */ zzahx zzZR;

    zzahy(zzahx zzahx) {
        this.zzZR = zzahx;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        zzbs.zzbz();
        zzagz.zza(this.zzZR.zztF, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
