package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
import com.google.android.gms.internal.zzzn;

@zzzn
@TargetApi(14)
public abstract class zzy extends TextureView implements zzau {
    protected final zzak zzPp = new zzak();
    protected final zzat zzPq;

    public zzy(Context context) {
        super(context);
        this.zzPq = new zzat(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f, float f2);

    public abstract void zza(zzx zzx);

    public abstract String zzfD();

    public abstract void zzfH();
}
