package com.google.android.gms.internal;

import android.os.Bundle;

@zzzn
public final class zztp {
    private static zztp zzKC = new zztp();
    private int zzKD;
    private int zzKE;
    private int zzKF;
    private int zzKG;
    private int zzKH;

    public static zztp zzeN() {
        return zzKC;
    }

    public final Bundle asBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("ipl", this.zzKD);
        bundle.putInt("ipds", this.zzKE);
        bundle.putInt("ipde", this.zzKF);
        bundle.putInt("iph", this.zzKG);
        bundle.putInt("ipm", this.zzKH);
        return bundle;
    }

    /* Access modifiers changed, original: final */
    public final void zzeO() {
        this.zzKE++;
    }

    /* Access modifiers changed, original: final */
    public final void zzeP() {
        this.zzKF++;
    }

    /* Access modifiers changed, original: final */
    public final void zzeQ() {
        this.zzKG++;
    }

    /* Access modifiers changed, original: final */
    public final void zzeR() {
        this.zzKH++;
    }

    public final int zzeS() {
        return this.zzKE;
    }

    public final int zzeT() {
        return this.zzKF;
    }

    public final int zzeU() {
        return this.zzKG;
    }

    public final int zzeV() {
        return this.zzKH;
    }

    /* Access modifiers changed, original: final */
    public final void zzn(int i) {
        this.zzKD += i;
    }
}
