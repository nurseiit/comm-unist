package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzaw extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ long zzarb;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzarm;

    zzaw(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, GoogleApiClient googleApiClient2, long j, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzarm = i;
        this.zzaqW = googleApiClient2;
        this.zzarb = j;
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
            r1 = r11.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:22:0x0068, code skipped:
            r11.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r12) {
        /*
        r11 = this;
        r12 = r11.zzaqV;
        r12 = r12.mLock;
        monitor-enter(r12);
        r0 = r11.zzaqV;	 Catch:{ all -> 0x0072 }
        r1 = r11.zzarm;	 Catch:{ all -> 0x0072 }
        r0 = r0.zzX(r1);	 Catch:{ all -> 0x0072 }
        r1 = -1;
        if (r0 != r1) goto L_0x0023;
    L_0x0012:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0072 }
        r1 = 0;
        r0.<init>(r1);	 Catch:{ all -> 0x0072 }
        r0 = r11.zzb(r0);	 Catch:{ all -> 0x0072 }
        r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0;	 Catch:{ all -> 0x0072 }
        r11.setResult(r0);	 Catch:{ all -> 0x0072 }
        monitor-exit(r12);	 Catch:{ all -> 0x0072 }
        return;
    L_0x0023:
        r0 = r11.zzaqV;	 Catch:{ all -> 0x0072 }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x0072 }
        r1 = r11.zzaqW;	 Catch:{ all -> 0x0072 }
        r0.zzb(r1);	 Catch:{ all -> 0x0072 }
        r0 = 0;
        r1 = r11.zzaqV;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r2 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r3 = r11.zzarw;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r4 = r11.zzarm;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r5 = r11.zzarb;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = r11.zzarc;	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r2.zza(r3, r4, r5, r7, r8, r9, r10);	 Catch:{ zzayr | IOException -> 0x004f, zzayr | IOException -> 0x004f }
        r1 = r11.zzaqV;	 Catch:{ all -> 0x0072 }
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
        r1 = r11.zzb(r1);	 Catch:{ all -> 0x004d }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x004d }
        r11.setResult(r1);	 Catch:{ all -> 0x004d }
        r1 = r11.zzaqV;	 Catch:{ all -> 0x0072 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0072 }
        goto L_0x0049;
    L_0x0066:
        monitor-exit(r12);	 Catch:{ all -> 0x0072 }
        return;
    L_0x0068:
        r2 = r11.zzaqV;	 Catch:{ all -> 0x0072 }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x0072 }
        r2.zzb(r0);	 Catch:{ all -> 0x0072 }
        throw r1;	 Catch:{ all -> 0x0072 }
    L_0x0072:
        r0 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x0072 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzaw.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
