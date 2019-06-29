package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzo extends zzb {
    private /* synthetic */ JSONObject zzarc;
    private /* synthetic */ MediaQueueItem[] zzarg;
    private /* synthetic */ RemoteMediaClient zzauy;

    zzo(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, JSONObject jSONObject) {
        this.zzauy = remoteMediaClient;
        this.zzarg = mediaQueueItemArr;
        this.zzarc = jSONObject;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001e */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void zza(com.google.android.gms.internal.zzaxx r11) {
        /*
        r10 = this;
        r11 = r10.zzauy;
        r11 = r11.mLock;
        monitor-enter(r11);
        r0 = r10.zzauy;	 Catch:{ zzayr | IOException -> 0x001e, zzayr | IOException -> 0x001e }
        r1 = r0.zzaqP;	 Catch:{ zzayr | IOException -> 0x001e, zzayr | IOException -> 0x001e }
        r2 = r10.zzarw;	 Catch:{ zzayr | IOException -> 0x001e, zzayr | IOException -> 0x001e }
        r3 = 0;
        r4 = -1;
        r6 = r10.zzarg;	 Catch:{ zzayr | IOException -> 0x001e, zzayr | IOException -> 0x001e }
        r7 = 0;
        r8 = 0;
        r9 = r10.zzarc;	 Catch:{ zzayr | IOException -> 0x001e, zzayr | IOException -> 0x001e }
        r1.zza(r2, r3, r4, r6, r7, r8, r9);	 Catch:{ zzayr | IOException -> 0x001e, zzayr | IOException -> 0x001e }
        goto L_0x002e;
    L_0x001c:
        r0 = move-exception;
        goto L_0x0030;
    L_0x001e:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x001c }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x001c }
        r0 = r10.zzb(r0);	 Catch:{ all -> 0x001c }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x001c }
        r10.setResult(r0);	 Catch:{ all -> 0x001c }
    L_0x002e:
        monitor-exit(r11);	 Catch:{ all -> 0x001c }
        return;
    L_0x0030:
        monitor-exit(r11);	 Catch:{ all -> 0x001c }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzo.zza(com.google.android.gms.internal.zzaxx):void");
    }
}
