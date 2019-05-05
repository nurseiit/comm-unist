package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzbb extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ long zzaro;
    private /* synthetic */ int zzarp;

    zzbb(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, long j, int i, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        this.zzaro = j;
        this.zzarp = i;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0030 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:12:?, code skipped:
            setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = r8.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x0049, code skipped:
            r8.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r9) {
        /*
        r8 = this;
        r9 = r8.zzaqV;
        r9 = r9.mLock;
        monitor-enter(r9);
        r0 = r8.zzaqV;	 Catch:{ all -> 0x0053 }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x0053 }
        r1 = r8.zzaqW;	 Catch:{ all -> 0x0053 }
        r0.zzb(r1);	 Catch:{ all -> 0x0053 }
        r0 = 0;
        r1 = r8.zzaqV;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r2 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r3 = r8.zzarw;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r4 = r8.zzaro;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r6 = r8.zzarp;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r7 = r8.zzarc;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r2.zza(r3, r4, r6, r7);	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r1 = r8.zzaqV;	 Catch:{ all -> 0x0053 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0053 }
    L_0x002a:
        r1.zzb(r0);	 Catch:{ all -> 0x0053 }
        goto L_0x0047;
    L_0x002e:
        r1 = move-exception;
        goto L_0x0049;
    L_0x0030:
        r1 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x002e }
        r2 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r1.<init>(r2);	 Catch:{ all -> 0x002e }
        r1 = r8.zzb(r1);	 Catch:{ all -> 0x002e }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x002e }
        r8.setResult(r1);	 Catch:{ all -> 0x002e }
        r1 = r8.zzaqV;	 Catch:{ all -> 0x0053 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0053 }
        goto L_0x002a;
    L_0x0047:
        monitor-exit(r9);	 Catch:{ all -> 0x0053 }
        return;
    L_0x0049:
        r2 = r8.zzaqV;	 Catch:{ all -> 0x0053 }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x0053 }
        r2.zzb(r0);	 Catch:{ all -> 0x0053 }
        throw r1;	 Catch:{ all -> 0x0053 }
    L_0x0053:
        r0 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x0053 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbb.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
