package com.google.android.gms.internal;

import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.safetynet.SafeBrowsingData;

final class zzcsm extends zzcru {
    private /* synthetic */ zzf zzbCb;

    zzcsm(zzf zzf) {
        this.zzbCb = zzf;
    }

    public final void zza(Status status, SafeBrowsingData safeBrowsingData) {
        DataHolder blacklistsDataHolder = safeBrowsingData.getBlacklistsDataHolder();
        if (blacklistsDataHolder != null) {
            try {
                int count = blacklistsDataHolder.getCount();
                if (count != 0) {
                    if (zzcsa.zzbBM != null) {
                        zzcsa.zzbBM.clear();
                    }
                    zzcsa.zzbBM = new SparseArray();
                    for (int i = 0; i < count; i++) {
                        zzcsr zzcsr = new zzcsr(blacklistsDataHolder, i);
                        zzcsa.zzbBM.put(zzcsr.getThreatType(), zzcsr);
                    }
                    zzcsa.zzbBN = SystemClock.elapsedRealtime();
                }
                if (!blacklistsDataHolder.isClosed()) {
                    blacklistsDataHolder.close();
                }
            } catch (Throwable th) {
                if (!blacklistsDataHolder.isClosed()) {
                    blacklistsDataHolder.close();
                }
            }
        }
        this.zzbCb.setResult(new zzi(status, safeBrowsingData));
    }
}
