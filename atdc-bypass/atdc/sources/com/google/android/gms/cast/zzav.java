package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzav extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzarm;

    zzav(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzarm = i;
        this.zzaqW = googleApiClient2;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x004f */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:17:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:19:?, code skipped:
            r1 = r6.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:22:0x0068, code skipped:
            r6.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r7) {
        /*
        r6 = this;
        r7 = r6.zzaqV;
        r7 = r7.mLock;
        monitor-enter(r7);
        r0 = r6.zzaqV;	 Catch:{ all -> 0x0072 }
        r1 = r6.zzarm;	 Catch:{ all -> 0x0072 }
        r0 = r0.zzX(r1);	 Catch:{ all -> 0x0072 }
        r1 = -1;
        r2 = 0;
        if (r0 != r1) goto L_0x0023;
    L_0x0013:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0072 }
        r0.<init>(r2);	 Catch:{ all -> 0x0072 }
        r0 = r6.zzb(r0);	 Catch:{ all -> 0x0072 }
        r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0;	 Catch:{ all -> 0x0072 }
        r6.setResult(r0);	 Catch:{ all -> 0x0072 }
        monitor-exit(r7);	 Catch:{ all -> 0x0072 }
        return;
    L_0x0023:
        r0 = r6.zzaqV;	 Catch:{ all -> 0x0072 }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x0072 }
        r1 = r6.zzaqW;	 Catch:{ all -> 0x0072 }
        r0.zzb(r1);	 Catch:{ all -> 0x0072 }
        r0 = 0;
        r1 = r6.zzaqV;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r1 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r3 = r6.zzarw;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r4 = 1;
        r4 = new int[r4];	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r5 = r6.zzarm;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r4[r2] = r5;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r2 = r6.zzarc;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r1.zza(r3, r4, r2);	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r1 = r6.zzaqV;	 Catch:{ all -> 0x0072 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0072 }
    L_0x0049:
        r1.zzb(r0);	 Catch:{ all -> 0x0072 }
        goto L_0x0066;
    L_0x004d:
        r1 = move-exception;
        goto L_0x0068;
    L_0x004f:
        r1 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x004d }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r1.<init>(r2);	 Catch:{ all -> 0x004d }
        r1 = r6.zzb(r1);	 Catch:{ all -> 0x004d }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x004d }
        r6.setResult(r1);	 Catch:{ all -> 0x004d }
        r1 = r6.zzaqV;	 Catch:{ all -> 0x0072 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0072 }
        goto L_0x0049;
    L_0x0066:
        monitor-exit(r7);	 Catch:{ all -> 0x0072 }
        return;
    L_0x0068:
        r2 = r6.zzaqV;	 Catch:{ all -> 0x0072 }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x0072 }
        r2.zzb(r0);	 Catch:{ all -> 0x0072 }
        throw r1;	 Catch:{ all -> 0x0072 }
    L_0x0072:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0072 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzav.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
