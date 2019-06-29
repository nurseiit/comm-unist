package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzn extends zzb {
    private /* synthetic */ long zzarb;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzare;
    private /* synthetic */ MediaQueueItem zzarf;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzn(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarf = mediaQueueItem;
        this.zzare = i;
        this.zzarb = j;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0025 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r11) {
        /*
        r10 = this;
        r11 = r10.zzauy;
        r11 = r11.mLock;
        monitor-enter(r11);
        r0 = r10.zzauy;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r1 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r2 = r10.zzarw;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r0 = 1;
        r3 = new com.google.android.gms.cast.MediaQueueItem[r0];	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r0 = 0;
        r4 = r10.zzarf;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r3[r0] = r4;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r4 = r10.zzare;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r5 = 0;
        r6 = 0;
        r7 = r10.zzarb;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r9 = r10.zzarc;	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        r1.zza(r2, r3, r4, r5, r6, r7, r9);	 Catch:{ zzayr | IOException -> 0x0025, zzayr | IOException -> 0x0025 }
        goto L_0x0035;
    L_0x0023:
        r0 = move-exception;
        goto L_0x0037;
    L_0x0025:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0023 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0023 }
        r0 = r10.zzb(r0);	 Catch:{ all -> 0x0023 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0023 }
        r10.setResult(r0);	 Catch:{ all -> 0x0023 }
    L_0x0035:
        monitor-exit(r11);	 Catch:{ all -> 0x0023 }
        return;
    L_0x0037:
        monitor-exit(r11);	 Catch:{ all -> 0x0023 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzn.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
