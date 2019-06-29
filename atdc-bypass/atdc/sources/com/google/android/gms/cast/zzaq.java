package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzaq extends zzb {
    private /* synthetic */ RemoteMediaPlayer zzaqV;
    private /* synthetic */ GoogleApiClient zzaqW;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzare;
    private /* synthetic */ int[] zzari;

    zzaq(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, int[] iArr, int i, JSONObject jSONObject) {
        this.zzaqV = remoteMediaPlayer;
        this.zzaqW = googleApiClient2;
        this.zzari = iArr;
        this.zzare = i;
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
            r1 = r6.zzaqV.zzaqQ;
     */
    /* JADX WARNING: Missing block: B:17:0x0049, code skipped:
            r6.zzaqV.zzaqQ.zzb(null);
     */
    public final void zza(com.google.android.gms.internal.zzaxx r7) {
        /*
        r6 = this;
        r7 = r6.zzaqV;
        r7 = r7.mLock;
        monitor-enter(r7);
        r0 = r6.zzaqV;	 Catch:{ all -> 0x0053 }
        r0 = r0.zzaqQ;	 Catch:{ all -> 0x0053 }
        r1 = r6.zzaqW;	 Catch:{ all -> 0x0053 }
        r0.zzb(r1);	 Catch:{ all -> 0x0053 }
        r0 = 0;
        r1 = r6.zzaqV;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r1 = r1.zzaqP;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r2 = r6.zzarw;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r3 = r6.zzari;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r4 = r6.zzare;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r5 = r6.zzarc;	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r1.zza(r2, r3, r4, r5);	 Catch:{ zzayr | IOException -> 0x0030, zzayr | IOException -> 0x0030 }
        r1 = r6.zzaqV;	 Catch:{ all -> 0x0053 }
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
        r1 = r6.zzb(r1);	 Catch:{ all -> 0x002e }
        r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1;	 Catch:{ all -> 0x002e }
        r6.setResult(r1);	 Catch:{ all -> 0x002e }
        r1 = r6.zzaqV;	 Catch:{ all -> 0x0053 }
        r1 = r1.zzaqQ;	 Catch:{ all -> 0x0053 }
        goto L_0x002a;
    L_0x0047:
        monitor-exit(r7);	 Catch:{ all -> 0x0053 }
        return;
    L_0x0049:
        r2 = r6.zzaqV;	 Catch:{ all -> 0x0053 }
        r2 = r2.zzaqQ;	 Catch:{ all -> 0x0053 }
        r2.zzb(r0);	 Catch:{ all -> 0x0053 }
        throw r1;	 Catch:{ all -> 0x0053 }
    L_0x0053:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0053 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzaq.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
