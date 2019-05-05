package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzx extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzarm;
    private /* synthetic */ int zzarn;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzx(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, int i, int i2, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarm = i;
        this.zzarn = i2;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:28:0x0090 */
    /* JADX WARNING: Can't wrap try/catch for region: R(8:18|(1:20)(1:21)|22|(1:24)(1:25)|26|27|28|29) */
    public final void zza(com.google.android.gms.internal.zzaxx r8) {
        /*
        r7 = this;
        r8 = r7.zzauy;
        r8 = r8.mLock;
        monitor-enter(r8);
        r0 = r7.zzauy;	 Catch:{ all -> 0x00a2 }
        r1 = r7.zzarm;	 Catch:{ all -> 0x00a2 }
        r0 = r0.zzX(r1);	 Catch:{ all -> 0x00a2 }
        r1 = -1;
        r2 = 0;
        if (r0 != r1) goto L_0x0023;
    L_0x0013:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00a2 }
        r0.<init>(r2);	 Catch:{ all -> 0x00a2 }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00a2 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x00a2 }
        r7.setResult(r0);	 Catch:{ all -> 0x00a2 }
        monitor-exit(r8);	 Catch:{ all -> 0x00a2 }
        return;
    L_0x0023:
        r1 = r7.zzarn;	 Catch:{ all -> 0x00a2 }
        r3 = 1;
        if (r1 >= 0) goto L_0x004c;
    L_0x0028:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00a2 }
        r1 = 2001; // 0x7d1 float:2.804E-42 double:9.886E-321;
        r4 = java.util.Locale.ROOT;	 Catch:{ all -> 0x00a2 }
        r5 = "Invalid request: Invalid newIndex %d.";
        r3 = new java.lang.Object[r3];	 Catch:{ all -> 0x00a2 }
        r6 = r7.zzarn;	 Catch:{ all -> 0x00a2 }
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ all -> 0x00a2 }
        r3[r2] = r6;	 Catch:{ all -> 0x00a2 }
        r2 = java.lang.String.format(r4, r5, r3);	 Catch:{ all -> 0x00a2 }
        r0.<init>(r1, r2);	 Catch:{ all -> 0x00a2 }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00a2 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x00a2 }
        r7.setResult(r0);	 Catch:{ all -> 0x00a2 }
        monitor-exit(r8);	 Catch:{ all -> 0x00a2 }
        return;
    L_0x004c:
        r1 = r7.zzarn;	 Catch:{ all -> 0x00a2 }
        if (r0 != r1) goto L_0x0060;
    L_0x0050:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00a2 }
        r0.<init>(r2);	 Catch:{ all -> 0x00a2 }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00a2 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x00a2 }
        r7.setResult(r0);	 Catch:{ all -> 0x00a2 }
        monitor-exit(r8);	 Catch:{ all -> 0x00a2 }
        return;
    L_0x0060:
        r1 = r7.zzarn;	 Catch:{ all -> 0x00a2 }
        if (r1 <= r0) goto L_0x0068;
    L_0x0064:
        r0 = r7.zzarn;	 Catch:{ all -> 0x00a2 }
        r0 = r0 + r3;
        goto L_0x006a;
    L_0x0068:
        r0 = r7.zzarn;	 Catch:{ all -> 0x00a2 }
    L_0x006a:
        r1 = r7.zzauy;	 Catch:{ all -> 0x00a2 }
        r1 = r1.getMediaStatus();	 Catch:{ all -> 0x00a2 }
        r0 = r1.getQueueItem(r0);	 Catch:{ all -> 0x00a2 }
        if (r0 == 0) goto L_0x007b;
    L_0x0076:
        r0 = r0.getItemId();	 Catch:{ all -> 0x00a2 }
        goto L_0x007c;
    L_0x007b:
        r0 = 0;
    L_0x007c:
        r1 = r7.zzauy;	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        r1 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        r4 = r7.zzarw;	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        r3 = new int[r3];	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        r5 = r7.zzarm;	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        r3[r2] = r5;	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        r2 = r7.zzarc;	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        r1.zza(r4, r3, r0, r2);	 Catch:{ zzayr | IOException -> 0x0090, zzayr | IOException -> 0x0090 }
        goto L_0x00a0;
    L_0x0090:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x00a2 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x00a2 }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x00a2 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x00a2 }
        r7.setResult(r0);	 Catch:{ all -> 0x00a2 }
    L_0x00a0:
        monitor-exit(r8);	 Catch:{ all -> 0x00a2 }
        return;
    L_0x00a2:
        r0 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x00a2 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzx.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
