package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzs extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzs(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r11) {
        /*
        r10 = this;
        r11 = r10.zzauy;
        r11 = r11.mLock;
        monitor-enter(r11);
        r0 = r10.zzauy;	 Catch:{ zzayr | IOException -> 0x001d, zzayr | IOException -> 0x001d }
        r1 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x001d, zzayr | IOException -> 0x001d }
        r2 = r10.zzarw;	 Catch:{ zzayr | IOException -> 0x001d, zzayr | IOException -> 0x001d }
        r3 = 0;
        r4 = -1;
        r6 = 0;
        r7 = 1;
        r8 = 0;
        r9 = r10.zzarc;	 Catch:{ zzayr | IOException -> 0x001d, zzayr | IOException -> 0x001d }
        r1.zza(r2, r3, r4, r6, r7, r8, r9);	 Catch:{ zzayr | IOException -> 0x001d, zzayr | IOException -> 0x001d }
        goto L_0x002d;
    L_0x001b:
        r0 = move-exception;
        goto L_0x002f;
    L_0x001d:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x001b }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x001b }
        r0 = r10.zzb(r0);	 Catch:{ all -> 0x001b }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x001b }
        r10.setResult(r0);	 Catch:{ all -> 0x001b }
    L_0x002d:
        monitor-exit(r11);	 Catch:{ all -> 0x001b }
        return;
    L_0x002f:
        monitor-exit(r11);	 Catch:{ all -> 0x001b }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzs.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
