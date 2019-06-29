package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;

final class zzbe extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;

    zzbe(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x002a */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:12:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = r3.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x0043, code skipped:
            r3.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r4) {
        /*
        r3 = this;
        r4 = r3.zzaqV;
        r4 = r4.mLock;
        monitor-enter(r4);
        r0 = r3.zzaqV;	 Catch:{ all -> 0x004d }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x004d }
        r1 = r3.zzaqW;	 Catch:{ all -> 0x004d }
        r0.zzb(r1);	 Catch:{ all -> 0x004d }
        r0 = 0;
        r1 = r3.zzaqV;	 Catch:{ IOException -> 0x002a }
        r1 = r1.zzaqP;	 Catch:{ IOException -> 0x002a }
        r2 = r3.zzarw;	 Catch:{ IOException -> 0x002a }
        r1.zza(r2);	 Catch:{ IOException -> 0x002a }
        r1 = r3.zzaqV;	 Catch:{ all -> 0x004d }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x004d }
    L_0x0024:
        r1.zzb(r0);	 Catch:{ all -> 0x004d }
        goto L_0x0041;
    L_0x0028:
        r1 = move-exception;
        goto L_0x0043;
    L_0x002a:
        r1 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0028 }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r1.<init>(r2);	 Catch:{ all -> 0x0028 }
        r1 = r3.zzb(r1);	 Catch:{ all -> 0x0028 }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x0028 }
        r3.setResult(r1);	 Catch:{ all -> 0x0028 }
        r1 = r3.zzaqV;	 Catch:{ all -> 0x004d }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x004d }
        goto L_0x0024;
    L_0x0041:
        monitor-exit(r4);	 Catch:{ all -> 0x004d }
        return;
    L_0x0043:
        r2 = r3.zzaqV;	 Catch:{ all -> 0x004d }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x004d }
        r2.zzb(r0);	 Catch:{ all -> 0x004d }
        throw r1;	 Catch:{ all -> 0x004d }
    L_0x004d:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x004d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbe.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
