package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzu extends zzb {
    private /* synthetic */ int val$repeatMode;
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzu(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, int i, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.val$repeatMode = i;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0022 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r11) {
        /*
        r10 = this;
        r11 = r10.zzauy;
        r11 = r11.mLock;
        monitor-enter(r11);
        r0 = r10.zzauy;	 Catch:{ zzayr | IOException -> 0x0022, zzayr | IOException -> 0x0022 }
        r1 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x0022, zzayr | IOException -> 0x0022 }
        r2 = r10.zzarw;	 Catch:{ zzayr | IOException -> 0x0022, zzayr | IOException -> 0x0022 }
        r3 = 0;
        r4 = -1;
        r6 = 0;
        r7 = 0;
        r0 = r10.val$repeatMode;	 Catch:{ zzayr | IOException -> 0x0022, zzayr | IOException -> 0x0022 }
        r8 = java.lang.Integer.valueOf(r0);	 Catch:{ zzayr | IOException -> 0x0022, zzayr | IOException -> 0x0022 }
        r9 = r10.zzarc;	 Catch:{ zzayr | IOException -> 0x0022, zzayr | IOException -> 0x0022 }
        r1.zza(r2, r3, r4, r6, r7, r8, r9);	 Catch:{ zzayr | IOException -> 0x0022, zzayr | IOException -> 0x0022 }
        goto L_0x0032;
    L_0x0020:
        r0 = move-exception;
        goto L_0x0034;
    L_0x0022:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0020 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0020 }
        r0 = r10.zzb(r0);	 Catch:{ all -> 0x0020 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0020 }
        r10.setResult(r0);	 Catch:{ all -> 0x0020 }
    L_0x0032:
        monitor-exit(r11);	 Catch:{ all -> 0x0020 }
        return;
    L_0x0034:
        monitor-exit(r11);	 Catch:{ all -> 0x0020 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzu.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
