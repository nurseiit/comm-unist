package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzax extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzarm;
    private /* synthetic */ int zzarn;

    zzax(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, int i2, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzarm = i;
        this.zzarn = i2;
        this.zzaqW = googleApiClient2;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:34:0x00a7 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:34|35|36|37) */
    /* JADX WARNING: Missing block: B:35:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:37:?, code skipped:
            r0 = r7.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:40:0x00c0, code skipped:
            r7.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r8) {
        /*
        r7 = this;
        r8 = r7.zzaqV;
        r8 = r8.mLock;
        monitor-enter(r8);
        r0 = r7.zzaqV;	 Catch:{ all -> 0x00ca }
        r1 = r7.zzarm;	 Catch:{ all -> 0x00ca }
        r0 = r0.zzX(r1);	 Catch:{ all -> 0x00ca }
        r1 = -1;
        r2 = 0;
        if (r0 != r1) goto L_0x0023;
    L_0x0013:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00ca }
        r0.<init>(r2);	 Catch:{ all -> 0x00ca }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00ca }
        r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0;	 Catch:{ all -> 0x00ca }
        r7.setResult(r0);	 Catch:{ all -> 0x00ca }
        monitor-exit(r8);	 Catch:{ all -> 0x00ca }
        return;
    L_0x0023:
        r1 = r7.zzarn;	 Catch:{ all -> 0x00ca }
        r3 = 1;
        if (r1 >= 0) goto L_0x004c;
    L_0x0028:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00ca }
        r1 = 2001; // 0x7d1 float:2.804E-42 double:9.886E-321;
        r4 = java.util.Locale.ROOT;	 Catch:{ all -> 0x00ca }
        r5 = "Invalid request: Invalid newIndex %d.";
        r3 = new java.lang.Object[r3];	 Catch:{ all -> 0x00ca }
        r6 = r7.zzarn;	 Catch:{ all -> 0x00ca }
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ all -> 0x00ca }
        r3[r2] = r6;	 Catch:{ all -> 0x00ca }
        r2 = java.lang.String.format(r4, r5, r3);	 Catch:{ all -> 0x00ca }
        r0.<init>(r1, r2);	 Catch:{ all -> 0x00ca }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00ca }
        r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0;	 Catch:{ all -> 0x00ca }
        r7.setResult(r0);	 Catch:{ all -> 0x00ca }
        monitor-exit(r8);	 Catch:{ all -> 0x00ca }
        return;
    L_0x004c:
        r1 = r7.zzarn;	 Catch:{ all -> 0x00ca }
        if (r0 != r1) goto L_0x0060;
    L_0x0050:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00ca }
        r0.<init>(r2);	 Catch:{ all -> 0x00ca }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00ca }
        r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0;	 Catch:{ all -> 0x00ca }
        r7.setResult(r0);	 Catch:{ all -> 0x00ca }
        monitor-exit(r8);	 Catch:{ all -> 0x00ca }
        return;
    L_0x0060:
        r1 = r7.zzarn;	 Catch:{ all -> 0x00ca }
        if (r1 <= r0) goto L_0x0068;
    L_0x0064:
        r0 = r7.zzarn;	 Catch:{ all -> 0x00ca }
        r0 = r0 + r3;
        goto L_0x006a;
    L_0x0068:
        r0 = r7.zzarn;	 Catch:{ all -> 0x00ca }
    L_0x006a:
        r1 = r7.zzaqV;	 Catch:{ all -> 0x00ca }
        r1 = r1.getMediaStatus();	 Catch:{ all -> 0x00ca }
        r0 = r1.getQueueItem(r0);	 Catch:{ all -> 0x00ca }
        if (r0 == 0) goto L_0x007b;
    L_0x0076:
        r0 = r0.getItemId();	 Catch:{ all -> 0x00ca }
        goto L_0x007c;
    L_0x007b:
        r0 = 0;
    L_0x007c:
        r1 = r7.zzaqV;	 Catch:{ all -> 0x00ca }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x00ca }
        r4 = r7.zzaqW;	 Catch:{ all -> 0x00ca }
        r1.zzb(r4);	 Catch:{ all -> 0x00ca }
        r1 = 0;
        r4 = r7.zzaqV;	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r4 = r4.zzaqP;	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r5 = r7.zzarw;	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r3 = new int[r3];	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r6 = r7.zzarm;	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r3[r2] = r6;	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r2 = r7.zzarc;	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r4.zza(r5, r3, r0, r2);	 Catch:{ zzayr | IOException -> 0x00a7, zzayr | IOException -> 0x00a7 }
        r0 = r7.zzaqV;	 Catch:{ all -> 0x00ca }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x00ca }
    L_0x00a1:
        r0.zzb(r1);	 Catch:{ all -> 0x00ca }
        goto L_0x00be;
    L_0x00a5:
        r0 = move-exception;
        goto L_0x00c0;
    L_0x00a7:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00a5 }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r2);	 Catch:{ all -> 0x00a5 }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00a5 }
        r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0;	 Catch:{ all -> 0x00a5 }
        r7.setResult(r0);	 Catch:{ all -> 0x00a5 }
        r0 = r7.zzaqV;	 Catch:{ all -> 0x00ca }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x00ca }
        goto L_0x00a1;
    L_0x00be:
        monitor-exit(r8);	 Catch:{ all -> 0x00ca }
        return;
    L_0x00c0:
        r2 = r7.zzaqV;	 Catch:{ all -> 0x00ca }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x00ca }
        r2.zzb(r1);	 Catch:{ all -> 0x00ca }
        throw r0;	 Catch:{ all -> 0x00ca }
    L_0x00ca:
        r0 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x00ca }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzax.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
