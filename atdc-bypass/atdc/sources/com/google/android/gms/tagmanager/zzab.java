package com.google.android.gms.tagmanager;

final class zzab implements zzac {
    private /* synthetic */ zzy zzbDX;
    private Long zzbDY;
    private /* synthetic */ boolean zzbDZ;

    zzab(zzy zzy, boolean z) {
        this.zzbDX = zzy;
        this.zzbDZ = z;
    }

    public final boolean zzb(Container container) {
        if (!this.zzbDZ) {
            return !container.isDefault();
        } else {
            long lastRefreshTime = container.getLastRefreshTime();
            if (this.zzbDY == null) {
                this.zzbDY = Long.valueOf(this.zzbDX.zzbDO.zzAS());
            }
            return lastRefreshTime + this.zzbDY.longValue() >= this.zzbDX.zzvw.currentTimeMillis();
        }
    }
}
