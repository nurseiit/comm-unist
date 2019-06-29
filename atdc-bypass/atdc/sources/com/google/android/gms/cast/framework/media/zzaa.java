package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzaa extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzaa(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0017 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r4) {
        /*
        r3 = this;
        r4 = r3.zzauy;
        r4 = r4.mLock;
        monitor-enter(r4);
        r0 = r3.zzauy;	 Catch:{ zzayr | IOException -> 0x0017, zzayr | IOException -> 0x0017 }
        r0 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x0017, zzayr | IOException -> 0x0017 }
        r1 = r3.zzarw;	 Catch:{ zzayr | IOException -> 0x0017, zzayr | IOException -> 0x0017 }
        r2 = r3.zzarc;	 Catch:{ zzayr | IOException -> 0x0017, zzayr | IOException -> 0x0017 }
        r0.zzc(r1, r2);	 Catch:{ zzayr | IOException -> 0x0017, zzayr | IOException -> 0x0017 }
        goto L_0x0027;
    L_0x0015:
        r0 = move-exception;
        goto L_0x0029;
    L_0x0017:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0015 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0015 }
        r0 = r3.zzb(r0);	 Catch:{ all -> 0x0015 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0015 }
        r3.setResult(r0);	 Catch:{ all -> 0x0015 }
    L_0x0027:
        monitor-exit(r4);	 Catch:{ all -> 0x0015 }
        return;
    L_0x0029:
        monitor-exit(r4);	 Catch:{ all -> 0x0015 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzaa.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
