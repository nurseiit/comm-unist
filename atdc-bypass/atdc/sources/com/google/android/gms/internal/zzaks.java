package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.util.zzf;
import java.util.HashMap;
import java.util.Map;

@zzzn
public final class zzaks extends zzkt {
    private final Object mLock = new Object();
    private final zzaka zzJH;
    private float zzacA;
    private final boolean zzact;
    private final float zzacu;
    private int zzacv;
    private zzkv zzacw;
    private boolean zzacx;
    private boolean zzacy = true;
    private float zzacz;
    private boolean zzsf = true;
    private boolean zzsg;

    public zzaks(zzaka zzaka, float f, boolean z) {
        this.zzJH = zzaka;
        this.zzacu = f;
        this.zzact = z;
    }

    private final void zzc(String str, @Nullable Map<String, String> map) {
        Map hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzakt(this, hashMap));
    }

    public final float getAspectRatio() {
        float f;
        synchronized (this.mLock) {
            f = this.zzacA;
        }
        return f;
    }

    public final int getPlaybackState() {
        int i;
        synchronized (this.mLock) {
            i = this.zzacv;
        }
        return i;
    }

    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzact && this.zzsg;
        }
        return z;
    }

    public final boolean isMuted() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzacy;
        }
        return z;
    }

    public final void mute(boolean z) {
        zzc(z ? "mute" : "unmute", null);
    }

    public final void pause() {
        zzc("pause", null);
    }

    public final void play() {
        zzc("play", null);
    }

    public final void zza(float f, int i, boolean z, float f2) {
        boolean z2;
        int i2;
        synchronized (this.mLock) {
            this.zzacz = f;
            z2 = this.zzacy;
            this.zzacy = z;
            i2 = this.zzacv;
            this.zzacv = i;
            this.zzacA = f2;
        }
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzaku(this, i2, i, z2, z));
    }

    public final void zza(zzkv zzkv) {
        synchronized (this.mLock) {
            this.zzacw = zzkv;
        }
    }

    public final void zzb(zzlx zzlx) {
        synchronized (this.mLock) {
            this.zzsf = zzlx.zzBJ;
            this.zzsg = zzlx.zzBK;
        }
        zzc("initialState", zzf.zza("muteStart", zzlx.zzBJ ? "1" : "0", "customControlsRequested", zzlx.zzBK ? "1" : "0"));
    }

    public final float zzdv() {
        return this.zzacu;
    }

    public final float zzdw() {
        float f;
        synchronized (this.mLock) {
            f = this.zzacz;
        }
        return f;
    }
}
