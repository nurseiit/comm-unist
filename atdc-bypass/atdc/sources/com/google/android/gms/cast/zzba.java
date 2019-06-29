package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzba extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ JSONObject zzarc;

    zzba(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x002c */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:11|12|13|14) */
    /* JADX WARNING: Missing block: B:12:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = r4.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x0045, code skipped:
            r4.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r5) {
        /*
        r4 = this;
        r5 = r4.zzaqV;
        r5 = r5.mLock;
        monitor-enter(r5);
        r0 = r4.zzaqV;	 Catch:{ all -> 0x004f }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x004f }
        r1 = r4.zzaqW;	 Catch:{ all -> 0x004f }
        r0.zzb(r1);	 Catch:{ all -> 0x004f }
        r0 = 0;
        r1 = r4.zzaqV;	 Catch:{ zzayr | IOException -> 0x002c, zzayr | IOException -> 0x002c }
        r1 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x002c, zzayr | IOException -> 0x002c }
        r2 = r4.zzarw;	 Catch:{ zzayr | IOException -> 0x002c, zzayr | IOException -> 0x002c }
        r3 = r4.zzarc;	 Catch:{ zzayr | IOException -> 0x002c, zzayr | IOException -> 0x002c }
        r1.zzc(r2, r3);	 Catch:{ zzayr | IOException -> 0x002c, zzayr | IOException -> 0x002c }
        r1 = r4.zzaqV;	 Catch:{ all -> 0x004f }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x004f }
    L_0x0026:
        r1.zzb(r0);	 Catch:{ all -> 0x004f }
        goto L_0x0043;
    L_0x002a:
        r1 = move-exception;
        goto L_0x0045;
    L_0x002c:
        r1 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x002a }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r1.<init>(r2);	 Catch:{ all -> 0x002a }
        r1 = r4.zzb(r1);	 Catch:{ all -> 0x002a }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x002a }
        r4.setResult(r1);	 Catch:{ all -> 0x002a }
        r1 = r4.zzaqV;	 Catch:{ all -> 0x004f }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x004f }
        goto L_0x0026;
    L_0x0043:
        monitor-exit(r5);	 Catch:{ all -> 0x004f }
        return;
    L_0x0045:
        r2 = r4.zzaqV;	 Catch:{ all -> 0x004f }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x004f }
        r2.zzb(r0);	 Catch:{ all -> 0x004f }
        throw r1;	 Catch:{ all -> 0x004f }
    L_0x004f:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x004f }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzba.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
