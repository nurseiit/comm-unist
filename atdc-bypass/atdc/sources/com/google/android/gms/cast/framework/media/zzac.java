package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzac extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ double zzarq;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzac(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, double d, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarq = d;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0019 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r6) {
        /*
        r5 = this;
        r6 = r5.zzauy;
        r6 = r6.mLock;
        monitor-enter(r6);
        r0 = r5.zzauy;	 Catch:{ zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019 }
        r0 = r0.zzaqP;	 Catch:{ zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019 }
        r1 = r5.zzarw;	 Catch:{ zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019 }
        r2 = r5.zzarq;	 Catch:{ zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019 }
        r4 = r5.zzarc;	 Catch:{ zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019 }
        r0.zza(r1, r2, r4);	 Catch:{ zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019, zzayr | IOException | IllegalArgumentException -> 0x0019 }
        goto L_0x0029;
    L_0x0017:
        r0 = move-exception;
        goto L_0x002b;
    L_0x0019:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0017 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0017 }
        r0 = r5.zzb(r0);	 Catch:{ all -> 0x0017 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0017 }
        r5.setResult(r0);	 Catch:{ all -> 0x0017 }
    L_0x0029:
        monitor-exit(r6);	 Catch:{ all -> 0x0017 }
        return;
    L_0x002b:
        monitor-exit(r6);	 Catch:{ all -> 0x0017 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzac.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
