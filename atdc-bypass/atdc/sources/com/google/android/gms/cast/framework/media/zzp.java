package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzp extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ int[] zzarh;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzp(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, int[] iArr, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarh = iArr;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0019 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r5) {
        /*
        r4 = this;
        r5 = r4.zzauy;
        r5 = r5.mLock;
        monitor-enter(r5);
        r0 = r4.zzauy;	 Catch:{ zzayr | IOException -> 0x0019, zzayr | IOException -> 0x0019 }
        r0 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x0019, zzayr | IOException -> 0x0019 }
        r1 = r4.zzarw;	 Catch:{ zzayr | IOException -> 0x0019, zzayr | IOException -> 0x0019 }
        r2 = r4.zzarh;	 Catch:{ zzayr | IOException -> 0x0019, zzayr | IOException -> 0x0019 }
        r3 = r4.zzarc;	 Catch:{ zzayr | IOException -> 0x0019, zzayr | IOException -> 0x0019 }
        r0.zza(r1, r2, r3);	 Catch:{ zzayr | IOException -> 0x0019, zzayr | IOException -> 0x0019 }
        goto L_0x0029;
    L_0x0017:
        r0 = move-exception;
        goto L_0x002b;
    L_0x0019:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0017 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0017 }
        r0 = r4.zzb(r0);	 Catch:{ all -> 0x0017 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0017 }
        r4.setResult(r0);	 Catch:{ all -> 0x0017 }
    L_0x0029:
        monitor-exit(r5);	 Catch:{ all -> 0x0017 }
        return;
    L_0x002b:
        monitor-exit(r5);	 Catch:{ all -> 0x0017 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzp.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
