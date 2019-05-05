package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzw extends zzb {
    private /* synthetic */ long zzarb;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzarm;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzw(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, int i, long j, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarm = i;
        this.zzarb = j;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0038 */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:8|9|10|11) */
    public final void zza(com.google.android.gms.internal.zzaxx r11) {
        /*
        r10 = this;
        r11 = r10.zzauy;
        r11 = r11.mLock;
        monitor-enter(r11);
        r0 = r10.zzauy;	 Catch:{ all -> 0x004a }
        r1 = r10.zzarm;	 Catch:{ all -> 0x004a }
        r0 = r0.zzX(r1);	 Catch:{ all -> 0x004a }
        r1 = -1;
        if (r0 != r1) goto L_0x0023;
    L_0x0012:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x004a }
        r1 = 0;
        r0.<init>(r1);	 Catch:{ all -> 0x004a }
        r0 = r10.zzb(r0);	 Catch:{ all -> 0x004a }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x004a }
        r10.setResult(r0);	 Catch:{ all -> 0x004a }
        monitor-exit(r11);	 Catch:{ all -> 0x004a }
        return;
    L_0x0023:
        r0 = r10.zzauy;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r1 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r2 = r10.zzarw;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r3 = r10.zzarm;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r4 = r10.zzarb;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r9 = r10.zzarc;	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        r1.zza(r2, r3, r4, r6, r7, r8, r9);	 Catch:{ zzayr | IOException -> 0x0038, zzayr | IOException -> 0x0038 }
        goto L_0x0048;
    L_0x0038:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x004a }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x004a }
        r0 = r10.zzb(r0);	 Catch:{ all -> 0x004a }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x004a }
        r10.setResult(r0);	 Catch:{ all -> 0x004a }
    L_0x0048:
        monitor-exit(r11);	 Catch:{ all -> 0x004a }
        return;
    L_0x004a:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x004a }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzw.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
