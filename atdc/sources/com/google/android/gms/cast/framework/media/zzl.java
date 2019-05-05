package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzl extends zzb {
    private /* synthetic */ int val$repeatMode;
    private /* synthetic */ MediaQueueItem[] zzaqZ;
    private /* synthetic */ int zzara;
    private /* synthetic */ long zzarb;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzl(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzaqZ = mediaQueueItemArr;
        this.zzara = i;
        this.val$repeatMode = i2;
        this.zzarb = j;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r10) {
        /*
        r9 = this;
        r10 = r9.zzauy;
        r10 = r10.mLock;
        monitor-enter(r10);
        r0 = r9.zzauy;	 Catch:{ IOException -> 0x001f }
        r1 = r0.zzaqP;	 Catch:{ IOException -> 0x001f }
        r2 = r9.zzarw;	 Catch:{ IOException -> 0x001f }
        r3 = r9.zzaqZ;	 Catch:{ IOException -> 0x001f }
        r4 = r9.zzara;	 Catch:{ IOException -> 0x001f }
        r5 = r9.val$repeatMode;	 Catch:{ IOException -> 0x001f }
        r6 = r9.zzarb;	 Catch:{ IOException -> 0x001f }
        r8 = r9.zzarc;	 Catch:{ IOException -> 0x001f }
        r1.zza(r2, r3, r4, r5, r6, r8);	 Catch:{ IOException -> 0x001f }
        goto L_0x002f;
    L_0x001d:
        r0 = move-exception;
        goto L_0x0031;
    L_0x001f:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x001d }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x001d }
        r0 = r9.zzb(r0);	 Catch:{ all -> 0x001d }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x001d }
        r9.setResult(r0);	 Catch:{ all -> 0x001d }
    L_0x002f:
        monitor-exit(r10);	 Catch:{ all -> 0x001d }
        return;
    L_0x0031:
        monitor-exit(r10);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzl.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
