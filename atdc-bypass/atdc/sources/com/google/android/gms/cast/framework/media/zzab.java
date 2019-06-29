package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzab extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ long zzaro;
    private /* synthetic */ int zzarp;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzab(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, long j, int i, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzaro = j;
        this.zzarp = i;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001b */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r8) {
        /*
        r7 = this;
        r8 = r7.zzauy;
        r8 = r8.mLock;
        monitor-enter(r8);
        r0 = r7.zzauy;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r1 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r2 = r7.zzarw;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r3 = r7.zzaro;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r5 = r7.zzarp;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r6 = r7.zzarc;	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        r1.zza(r2, r3, r5, r6);	 Catch:{ zzayr | IOException -> 0x001b, zzayr | IOException -> 0x001b }
        goto L_0x002b;
    L_0x0019:
        r0 = move-exception;
        goto L_0x002d;
    L_0x001b:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0019 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0019 }
        r0 = r7.zzb(r0);	 Catch:{ all -> 0x0019 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0019 }
        r7.setResult(r0);	 Catch:{ all -> 0x0019 }
    L_0x002b:
        monitor-exit(r8);	 Catch:{ all -> 0x0019 }
        return;
    L_0x002d:
        monitor-exit(r8);	 Catch:{ all -> 0x0019 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzab.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
