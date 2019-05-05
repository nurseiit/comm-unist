package com.google.android.gms.cast;

final class zzt implements Runnable {
    private /* synthetic */ CastRemoteDisplayLocalService zzapJ;
    private /* synthetic */ boolean zzapP;

    zzt(CastRemoteDisplayLocalService castRemoteDisplayLocalService, boolean z) {
        this.zzapJ = castRemoteDisplayLocalService;
        this.zzapP = z;
    }

    public final void run() {
        this.zzapJ.zzQ(this.zzapP);
    }
}
