package com.google.android.gms.cast;

final class zzr implements Runnable {
    private /* synthetic */ CastRemoteDisplayLocalService zzapJ;

    zzr(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzapJ = castRemoteDisplayLocalService;
    }

    public final void run() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.zzapJ;
        boolean zzb = this.zzapJ.zzapF;
        StringBuilder stringBuilder = new StringBuilder(59);
        stringBuilder.append("onCreate after delay. The local service been started: ");
        stringBuilder.append(zzb);
        castRemoteDisplayLocalService.zzbp(stringBuilder.toString());
        if (!this.zzapJ.zzapF) {
            this.zzapJ.zzbs("The local service has not been been started, stopping it");
            this.zzapJ.stopSelf();
        }
    }
}
