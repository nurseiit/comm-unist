package com.google.android.gms.internal;

import com.google.android.gms.drive.DriveFile.DownloadProgressListener;

final class zzbmu implements DownloadProgressListener {
    private final zzbdw<DownloadProgressListener> zzaOo;

    public zzbmu(zzbdw<DownloadProgressListener> zzbdw) {
        this.zzaOo = zzbdw;
    }

    public final void onProgress(long j, long j2) {
        this.zzaOo.zza(new zzbmv(this, j, j2));
    }
}
