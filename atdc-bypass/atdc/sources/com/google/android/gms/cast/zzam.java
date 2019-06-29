package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzam extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ MediaQueueItem[] zzard;
    private /* synthetic */ int zzare;

    zzam(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        this.zzard = mediaQueueItemArr;
        this.zzare = i;
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
            r1 = r11.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x004d, code skipped:
            r11.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r12) {
        /*
        r11 = this;
        r12 = r11.zzaqV;
        r12 = r12.mLock;
        monitor-enter(r12);
        r0 = r11.zzaqV;	 Catch:{ all -> 0x0057 }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x0057 }
        r1 = r11.zzaqW;	 Catch:{ all -> 0x0057 }
        r0.zzb(r1);	 Catch:{ all -> 0x0057 }
        r0 = 0;
        r1 = r11.zzaqV;	 Catch:{ zzayr | IOException -> 0x0034, zzayr | IOException -> 0x0034 }
        r2 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x0034, zzayr | IOException -> 0x0034 }
        r3 = r11.zzarw;	 Catch:{ zzayr | IOException -> 0x0034, zzayr | IOException -> 0x0034 }
        r4 = r11.zzard;	 Catch:{ zzayr | IOException -> 0x0034, zzayr | IOException -> 0x0034 }
        r5 = r11.zzare;	 Catch:{ zzayr | IOException -> 0x0034, zzayr | IOException -> 0x0034 }
        r6 = 0;
        r7 = -1;
        r8 = -1;
        r10 = r11.zzarc;	 Catch:{ zzayr | IOException -> 0x0034, zzayr | IOException -> 0x0034 }
        r2.zza(r3, r4, r5, r6, r7, r8, r10);	 Catch:{ zzayr | IOException -> 0x0034, zzayr | IOException -> 0x0034 }
        r1 = r11.zzaqV;	 Catch:{ all -> 0x0057 }
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
        r1 = r11.zzb(r1);	 Catch:{ all -> 0x0032 }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x0032 }
        r11.setResult(r1);	 Catch:{ all -> 0x0032 }
        r1 = r11.zzaqV;	 Catch:{ all -> 0x0057 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0057 }
        goto L_0x002e;
    L_0x004b:
        monitor-exit(r12);	 Catch:{ all -> 0x0057 }
        return;
    L_0x004d:
        r2 = r11.zzaqV;	 Catch:{ all -> 0x0057 }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x0057 }
        r2.zzb(r0);	 Catch:{ all -> 0x0057 }
        throw r1;	 Catch:{ all -> 0x0057 }
    L_0x0057:
        r0 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x0057 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzam.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
