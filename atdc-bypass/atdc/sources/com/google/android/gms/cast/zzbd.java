package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzbd extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ boolean zzarr;

    zzbd(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, boolean z, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        this.zzarr = z;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x002e */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:12:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = r5.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x0047, code skipped:
            r5.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r6) {
        /*
        r5 = this;
        r6 = r5.zzaqV;
        r6 = r6.mLock;
        monitor-enter(r6);
        r0 = r5.zzaqV;	 Catch:{ all -> 0x0051 }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x0051 }
        r1 = r5.zzaqW;	 Catch:{ all -> 0x0051 }
        r0.zzb(r1);	 Catch:{ all -> 0x0051 }
        r0 = 0;
        r1 = r5.zzaqV;	 Catch:{ zzayr | IOException -> 0x002e, zzayr | IOException -> 0x002e }
        r1 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x002e, zzayr | IOException -> 0x002e }
        r2 = r5.zzarw;	 Catch:{ zzayr | IOException -> 0x002e, zzayr | IOException -> 0x002e }
        r3 = r5.zzarr;	 Catch:{ zzayr | IOException -> 0x002e, zzayr | IOException -> 0x002e }
        r4 = r5.zzarc;	 Catch:{ zzayr | IOException -> 0x002e, zzayr | IOException -> 0x002e }
        r1.zza(r2, r3, r4);	 Catch:{ zzayr | IOException -> 0x002e, zzayr | IOException -> 0x002e }
        r1 = r5.zzaqV;	 Catch:{ all -> 0x0051 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0051 }
    L_0x0028:
        r1.zzb(r0);	 Catch:{ all -> 0x0051 }
        goto L_0x0045;
    L_0x002c:
        r1 = move-exception;
        goto L_0x0047;
    L_0x002e:
        r1 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x002c }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r1.<init>(r2);	 Catch:{ all -> 0x002c }
        r1 = r5.zzb(r1);	 Catch:{ all -> 0x002c }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x002c }
        r5.setResult(r1);	 Catch:{ all -> 0x002c }
        r1 = r5.zzaqV;	 Catch:{ all -> 0x0051 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0051 }
        goto L_0x0028;
    L_0x0045:
        monitor-exit(r6);	 Catch:{ all -> 0x0051 }
        return;
    L_0x0047:
        r2 = r5.zzaqV;	 Catch:{ all -> 0x0051 }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x0051 }
        r2.zzb(r0);	 Catch:{ all -> 0x0051 }
        throw r1;	 Catch:{ all -> 0x0051 }
    L_0x0051:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0051 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbd.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
