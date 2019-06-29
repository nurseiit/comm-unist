package com.google.android.gms.cast.framework.media;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class zzaj implements OnClickListener {
    private /* synthetic */ TracksChooserDialogFragment zzauJ;

    zzaj(TracksChooserDialogFragment tracksChooserDialogFragment) {
        this.zzauJ = tracksChooserDialogFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (this.zzauJ.mDialog != null) {
            this.zzauJ.mDialog.cancel();
            this.zzauJ.mDialog = null;
        }
    }
}
