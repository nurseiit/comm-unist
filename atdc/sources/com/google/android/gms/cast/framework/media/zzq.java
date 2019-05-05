package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzq extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int zzare;
    private /* synthetic */ int[] zzari;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzq(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, int[] iArr, int i, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzari = iArr;
        this.zzare = i;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001b */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r6) {
        /*
        r5 = this;
        r6 = r5.zzauy;
        r6 = r6.mLock;
        monitor-enter(r6);
        r0 = r5.zzauy;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r0 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r1 = r5.zzarw;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r2 = r5.zzari;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r3 = r5.zzare;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r4 = r5.zzarc;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r0.zza(r1, r2, r3, r4);	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        goto L_0x002b;
    L_0x0019:
        r0 = move-exception;
        goto L_0x002d;
    L_0x001b:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0019 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0019 }
        r0 = r5.zzb(r0);	 Catch:{ all -> 0x0019 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0019 }
        r5.setResult(r0);	 Catch:{ all -> 0x0019 }
    L_0x002b:
        monitor-exit(r6);	 Catch:{ all -> 0x0019 }
        return;
    L_0x002d:
        monitor-exit(r6);	 Catch:{ all -> 0x0019 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzq.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
