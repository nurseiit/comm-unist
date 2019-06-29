package com.google.android.gms.cast.framework.media;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class zzak implements OnClickListener {
    private /* synthetic */ TracksChooserDialogFragment zzauJ;
    private /* synthetic */ zzal zzauK;
    private /* synthetic */ zzal zzauL;

    zzak(TracksChooserDialogFragment tracksChooserDialogFragment, zzal zzal, zzal zzal2) {
        this.zzauJ = tracksChooserDialogFragment;
        this.zzauK = zzal;
        this.zzauL = zzal2;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzauJ.zza(this.zzauK, this.zzauL);
    }
}
