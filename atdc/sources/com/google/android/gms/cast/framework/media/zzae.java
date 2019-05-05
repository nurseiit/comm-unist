package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;

final class zzae extends zzb {
    private /* synthetic */ RemoteMediaClient zzauy;

    zzae(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient) {
        this.zzauy = remoteMediaClient;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0015 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r3) {
        /*
        r2 = this;
        r3 = r2.zzauy;
        r3 = r3.mLock;
        monitor-enter(r3);
        r0 = r2.zzauy;	 Catch:{ IOException -> 0x0015 }
        r0 = r0.zzaqP;	 Catch:{ IOException -> 0x0015 }
        r1 = r2.zzarw;	 Catch:{ IOException -> 0x0015 }
        r0.zza(r1);	 Catch:{ IOException -> 0x0015 }
        goto L_0x0025;
    L_0x0013:
        r0 = move-exception;
        goto L_0x0027;
    L_0x0015:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0013 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0013 }
        r0 = r2.zzb(r0);	 Catch:{ all -> 0x0013 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0013 }
        r2.setResult(r0);	 Catch:{ all -> 0x0013 }
    L_0x0025:
        monitor-exit(r3);	 Catch:{ all -> 0x0013 }
        return;
    L_0x0027:
        monitor-exit(r3);	 Catch:{ all -> 0x0013 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzae.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
