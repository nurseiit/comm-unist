package com.google.android.gms.internal;

final class oq implements Runnable {
    private /* synthetic */ boolean zzcbe;
    final /* synthetic */ op zzcbf;

    oq(op opVar, boolean z) {
        this.zzcbf = opVar;
        this.zzcbe = z;
    }

    public final void run() {
        this.zzcbf.zzbZE.zzb("Trying to fetch auth token", null, new Object[0]);
        ok.zzc(this.zzcbf.zzcaN == oz.Disconnected, "Not in disconnected state: %s", this.zzcbf.zzcaN);
        this.zzcbf.zzcaN = oz.GettingToken;
        this.zzcbf.zzcaZ = this.zzcbf.zzcaZ + 1;
        this.zzcbf.zzcaC.zza(this.zzcbe, new or(this, this.zzcbf.zzcaZ));
    }
}
