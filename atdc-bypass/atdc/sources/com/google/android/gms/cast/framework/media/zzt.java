package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzt extends zzb {
    private /* synthetic */ long zzarb;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ MediaInfo zzarj;
    private /* synthetic */ boolean zzark;
    private /* synthetic */ long[] zzarl;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzt(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j, long[] jArr, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarj = mediaInfo;
        this.zzark = z;
        this.zzarb = j;
        this.zzarl = jArr;
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
        r0 = r9.zzauy;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r1 = r0.zzaqP;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r2 = r9.zzarw;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r3 = r9.zzarj;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r4 = r9.zzark;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r5 = r9.zzarb;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r7 = r9.zzarl;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r8 = r9.zzarc;	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
        r1.zza(r2, r3, r4, r5, r7, r8);	 Catch:{ IOException | IllegalStateException -> 0x001f, IOException | IllegalStateException -> 0x001f }
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzt.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
