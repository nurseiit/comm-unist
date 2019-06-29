package com.google.android.gms.games.video;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;

public final class CaptureState {
    private final boolean zzasE;
    private final boolean zzbfa;
    private final int zzbfb;
    private final int zzbfc;
    private final boolean zzuV;

    private CaptureState(boolean z, int i, int i2, boolean z2, boolean z3) {
        zzbo.zzaf(VideoConfiguration.isValidCaptureMode(i, true));
        zzbo.zzaf(VideoConfiguration.isValidQualityLevel(i2, true));
        this.zzbfa = z;
        this.zzbfb = i;
        this.zzbfc = i2;
        this.zzasE = z2;
        this.zzuV = z3;
    }

    public static CaptureState zzs(Bundle bundle) {
        if (bundle == null || bundle.get("IsCapturing") == null) {
            return null;
        }
        return new CaptureState(bundle.getBoolean("IsCapturing", false), bundle.getInt("CaptureMode", -1), bundle.getInt("CaptureQuality", -1), bundle.getBoolean("IsOverlayVisible", false), bundle.getBoolean("IsPaused", false));
    }

    public final int getCaptureMode() {
        return this.zzbfb;
    }

    public final int getCaptureQuality() {
        return this.zzbfc;
    }

    public final boolean isCapturing() {
        return this.zzbfa;
    }

    public final boolean isOverlayVisible() {
        return this.zzasE;
    }

    public final boolean isPaused() {
        return this.zzuV;
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("IsCapturing", Boolean.valueOf(this.zzbfa)).zzg("CaptureMode", Integer.valueOf(this.zzbfb)).zzg("CaptureQuality", Integer.valueOf(this.zzbfc)).zzg("IsOverlayVisible", Boolean.valueOf(this.zzasE)).zzg("IsPaused", Boolean.valueOf(this.zzuV)).toString();
    }
}
