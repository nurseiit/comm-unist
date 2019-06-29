package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import com.google.android.gms.internal.zzzn;

@zzzn
@TargetApi(14)
public final class zzat implements OnAudioFocusChangeListener {
    private final AudioManager mAudioManager;
    private boolean zzPw;
    private final zzau zzQL;
    private boolean zzQM;
    private boolean zzQN;
    private float zzQO = 1.0f;

    public zzat(Context context, zzau zzau) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        this.zzQL = zzau;
    }

    private final void zzgn() {
        boolean z = false;
        Object obj = (!this.zzPw || this.zzQN || this.zzQO <= 0.0f) ? null : 1;
        if (obj == null || this.zzQM) {
            if (obj == null && this.zzQM) {
                if (this.mAudioManager != null && this.zzQM) {
                    if (this.mAudioManager.abandonAudioFocus(this) == 0) {
                        z = true;
                    }
                    this.zzQM = z;
                }
                this.zzQL.zzfH();
            }
            return;
        }
        if (!(this.mAudioManager == null || this.zzQM)) {
            if (this.mAudioManager.requestAudioFocus(this, 3, 2) == 1) {
                z = true;
            }
            this.zzQM = z;
        }
        this.zzQL.zzfH();
    }

    public final void onAudioFocusChange(int i) {
        this.zzQM = i > 0;
        this.zzQL.zzfH();
    }

    public final void setMuted(boolean z) {
        this.zzQN = z;
        zzgn();
    }

    public final void zzb(float f) {
        this.zzQO = f;
        zzgn();
    }

    public final void zzgj() {
        this.zzPw = true;
        zzgn();
    }

    public final void zzgk() {
        this.zzPw = false;
        zzgn();
    }

    public final float zzgm() {
        return this.zzQM ? this.zzQN ? 0.0f : this.zzQO : 0.0f;
    }
}
