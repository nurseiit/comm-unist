package com.google.android.gms.internal;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

final class zzawm implements OnSeekBarChangeListener {
    private /* synthetic */ OnSeekBarChangeListener zzavS;
    private /* synthetic */ zzawl zzavT;

    zzawm(zzawl zzawl, OnSeekBarChangeListener onSeekBarChangeListener) {
        this.zzavT = zzawl;
        this.zzavS = onSeekBarChangeListener;
    }

    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (this.zzavS != null) {
            this.zzavS.onProgressChanged(seekBar, i, z);
        }
    }

    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.zzavT.zzY(false);
        if (this.zzavS != null) {
            this.zzavS.onStartTrackingTouch(seekBar);
        }
    }

    public final void onStopTrackingTouch(SeekBar seekBar) {
        this.zzavT.zzY(true);
        if (this.zzavS != null) {
            this.zzavS.onStopTrackingTouch(seekBar);
        }
        RemoteMediaClient zza = this.zzavT.getRemoteMediaClient();
        if (zza != null && zza.hasMediaSession()) {
            zza.seek((long) seekBar.getProgress());
        }
    }
}
