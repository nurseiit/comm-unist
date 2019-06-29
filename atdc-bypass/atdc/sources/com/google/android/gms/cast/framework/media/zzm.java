package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzm extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ MediaQueueItem[] zzard;
    private /* synthetic */ int zzare;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzm(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzard = mediaQueueItemArr;
        this.zzare = i;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r11) {
        /*
        r10 = this;
        r11 = r10.zzauy;
        r11 = r11.mLock;
        monitor-enter(r11);
        r0 = r10.zzauy;	 Catch:{ zzayr | IOException -> 0x001f, zzayr | IOException -> 0x001f }
        r1 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x001f, zzayr | IOException -> 0x001f }
        r2 = r10.zzarw;	 Catch:{ zzayr | IOException -> 0x001f, zzayr | IOException -> 0x001f }
        r3 = r10.zzard;	 Catch:{ zzayr | IOException -> 0x001f, zzayr | IOException -> 0x001f }
        r4 = r10.zzare;	 Catch:{ zzayr | IOException -> 0x001f, zzayr | IOException -> 0x001f }
        r5 = 0;
        r6 = -1;
        r7 = -1;
        r9 = r10.zzarc;	 Catch:{ zzayr | IOException -> 0x001f, zzayr | IOException -> 0x001f }
        r1.zza(r2, r3, r4, r5, r6, r7, r9);	 Catch:{ zzayr | IOException -> 0x001f, zzayr | IOException -> 0x001f }
        goto L_0x002f;
    L_0x001d:
        r0 = move-exception;
        goto L_0x0031;
    L_0x001f:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x001d }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x001d }
        r0 = r10.zzb(r0);	 Catch:{ all -> 0x001d }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x001d }
        r10.setResult(r0);	 Catch:{ all -> 0x001d }
    L_0x002f:
        monitor-exit(r11);	 Catch:{ all -> 0x001d }
        return;
    L_0x0031:
        monitor-exit(r11);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzm.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
