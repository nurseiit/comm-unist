package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzan extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ long zzarb;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzare;
    private /* synthetic */ MediaQueueItem zzarf;

    zzan(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        this.zzarf = mediaQueueItem;
        this.zzare = i;
        this.zzarb = j;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x003a */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:11|12|13|14) */
    /* JADX WARNING: Missing block: B:12:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = r11.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x0053, code skipped:
            r11.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r12) {
        /*
        r11 = this;
        r12 = r11.zzaqV;
        r12 = r12.mLock;
        monitor-enter(r12);
        r0 = r11.zzaqV;	 Catch:{ all -> 0x005d }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x005d }
        r1 = r11.zzaqW;	 Catch:{ all -> 0x005d }
        r0.zzb(r1);	 Catch:{ all -> 0x005d }
        r0 = 0;
        r1 = r11.zzaqV;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r2 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r3 = r11.zzarw;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r1 = 1;
        r4 = new com.google.android.gms.cast.MediaQueueItem[r1];	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r1 = 0;
        r5 = r11.zzarf;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r4[r1] = r5;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r5 = r11.zzare;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r6 = 0;
        r7 = 0;
        r8 = r11.zzarb;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r10 = r11.zzarc;	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r2.zza(r3, r4, r5, r6, r7, r8, r10);	 Catch:{ zzayr | IOException -> 0x003a, zzayr | IOException -> 0x003a }
        r1 = r11.zzaqV;	 Catch:{ all -> 0x005d }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x005d }
    L_0x0034:
        r1.zzb(r0);	 Catch:{ all -> 0x005d }
        goto L_0x0051;
    L_0x0038:
        r1 = move-exception;
        goto L_0x0053;
    L_0x003a:
        r1 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0038 }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r1.<init>(r2);	 Catch:{ all -> 0x0038 }
        r1 = r11.zzb(r1);	 Catch:{ all -> 0x0038 }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x0038 }
        r11.setResult(r1);	 Catch:{ all -> 0x0038 }
        r1 = r11.zzaqV;	 Catch:{ all -> 0x005d }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x005d }
        goto L_0x0034;
    L_0x0051:
        monitor-exit(r12);	 Catch:{ all -> 0x005d }
        return;
    L_0x0053:
        r2 = r11.zzaqV;	 Catch:{ all -> 0x005d }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x005d }
        r2.zzb(r0);	 Catch:{ all -> 0x005d }
        throw r1;	 Catch:{ all -> 0x005d }
    L_0x005d:
        r0 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x005d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzan.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
