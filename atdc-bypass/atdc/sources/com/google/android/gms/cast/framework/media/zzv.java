package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzv extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzarm;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzv(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, int i, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarm = i;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0038 */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:8|9|10|11) */
    public final void zza(com.google.android.gms.internal.zzaxx r6) {
        /*
        r5 = this;
        r6 = r5.zzauy;
        r6 = r6.mLock;
        monitor-enter(r6);
        r0 = r5.zzauy;	 Catch:{ all -> 0x004a }
        r1 = r5.zzarm;	 Catch:{ all -> 0x004a }
        r0 = r0.zzX(r1);	 Catch:{ all -> 0x004a }
        r1 = -1;
        r2 = 0;
        if (r0 != r1) goto L_0x0023;
    L_0x0013:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x004a }
        r0.<init>(r2);	 Catch:{ all -> 0x004a }
        r0 = r5.zzb(r0);	 Catch:{ all -> 0x004a }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x004a }
        r5.setResult(r0);	 Catch:{ all -> 0x004a }
        monitor-exit(r6);	 Catch:{ all -> 0x004a }
        return;
    L_0x0023:
        r0 = r5.zzauy;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r0 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r1 = r5.zzarw;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r3 = 1;
        r3 = new int[r3];	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r4 = r5.zzarm;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r3[r2] = r4;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r2 = r5.zzarc;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r0.zza(r1, r3, r2);	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        goto L_0x0048;
    L_0x0038:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x004a }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x004a }
        r0 = r5.zzb(r0);	 Catch:{ all -> 0x004a }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x004a }
        r5.setResult(r0);	 Catch:{ all -> 0x004a }
    L_0x0048:
        monitor-exit(r6);	 Catch:{ all -> 0x004a }
        return;
    L_0x004a:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x004a }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzv.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
