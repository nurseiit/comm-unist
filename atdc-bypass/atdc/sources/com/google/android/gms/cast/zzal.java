package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzal extends zzb {
    private /* synthetic */ int val$repeatMode;
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ MediaQueueItem[] zzaqZ;
    private /* synthetic */ int zzara;
    private /* synthetic */ long zzarb;
    private /* synthetic */ JSONObject zzarc;

    zzal(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        this.zzaqZ = mediaQueueItemArr;
        this.zzara = i;
        this.val$repeatMode = i2;
        this.zzarb = j;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0034 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:11|12|13|14) */
    /* JADX WARNING: Missing block: B:12:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = r10.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x004d, code skipped:
            r10.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r11) {
        /*
        r10 = this;
        r11 = r10.zzaqV;
        r11 = r11.mLock;
        monitor-enter(r11);
        r0 = r10.zzaqV;	 Catch:{ all -> 0x0057 }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x0057 }
        r1 = r10.zzaqW;	 Catch:{ all -> 0x0057 }
        r0.zzb(r1);	 Catch:{ all -> 0x0057 }
        r0 = 0;
        r1 = r10.zzaqV;	 Catch:{ IOException -> 0x0034 }
        r2 = r1.zzaqP;	 Catch:{ IOException -> 0x0034 }
        r3 = r10.zzarw;	 Catch:{ IOException -> 0x0034 }
        r4 = r10.zzaqZ;	 Catch:{ IOException -> 0x0034 }
        r5 = r10.zzara;	 Catch:{ IOException -> 0x0034 }
        r6 = r10.val$repeatMode;	 Catch:{ IOException -> 0x0034 }
        r7 = r10.zzarb;	 Catch:{ IOException -> 0x0034 }
        r9 = r10.zzarc;	 Catch:{ IOException -> 0x0034 }
        r2.zza(r3, r4, r5, r6, r7, r9);	 Catch:{ IOException -> 0x0034 }
        r1 = r10.zzaqV;	 Catch:{ all -> 0x0057 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0057 }
    L_0x002e:
        r1.zzb(r0);	 Catch:{ all -> 0x0057 }
        goto L_0x004b;
    L_0x0032:
        r1 = move-exception;
        goto L_0x004d;
    L_0x0034:
        r1 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0032 }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r1.<init>(r2);	 Catch:{ all -> 0x0032 }
        r1 = r10.zzb(r1);	 Catch:{ all -> 0x0032 }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x0032 }
        r10.setResult(r1);	 Catch:{ all -> 0x0032 }
        r1 = r10.zzaqV;	 Catch:{ all -> 0x0057 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0057 }
        goto L_0x002e;
    L_0x004b:
        monitor-exit(r11);	 Catch:{ all -> 0x0057 }
        return;
    L_0x004d:
        r2 = r10.zzaqV;	 Catch:{ all -> 0x0057 }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x0057 }
        r2.zzb(r0);	 Catch:{ all -> 0x0057 }
        throw r1;	 Catch:{ all -> 0x0057 }
    L_0x0057:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x0057 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzal.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
