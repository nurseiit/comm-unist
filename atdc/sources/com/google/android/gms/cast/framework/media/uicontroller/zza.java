package com.google.android.gms.cast.framework.media.uicontroller;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.google.android.gms.internal.zzawv;

final class zza implements OnSeekBarChangeListener {
    private /* synthetic */ UIMediaController zzavl;

    zza(UIMediaController uIMediaController) {
        this.zzavl = uIMediaController;
    }

    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            for (zzawv zzy : this.zzavl.zzavj) {
                zzy.zzy((long) i);
            }
        }
    }

    public final void onStartTrackingTouch(SeekBar seekBar) {
        for (zzawv zzY : this.zzavl.zzavj) {
            zzY.zzY(false);
        }
    }

    public final void onStopTrackingTouch(SeekBar seekBar) {
        for (zzawv zzY : this.zzavl.zzavj) {
            zzY.zzY(true);
        }
    }
}
