package com.google.android.gms.cast;

import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.common.api.ResultCallback;

final class zzw implements ResultCallback<CastRemoteDisplaySessionResult> {
    private /* synthetic */ CastRemoteDisplayLocalService zzapJ;

    zzw(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzapJ = castRemoteDisplayLocalService;
    }

    /* JADX WARNING: Missing block: B:13:0x0047, code skipped:
            r5 = r5.getPresentationDisplay();
     */
    /* JADX WARNING: Missing block: B:14:0x004b, code skipped:
            if (r5 == null) goto L_0x0053;
     */
    /* JADX WARNING: Missing block: B:15:0x004d, code skipped:
            r4.zzapJ.zza(r5);
     */
    /* JADX WARNING: Missing block: B:16:0x0053, code skipped:
            com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapq.zzc("Cast Remote Display session created without display", new java.lang.Object[0]);
     */
    /* JADX WARNING: Missing block: B:17:0x005e, code skipped:
            com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapt.set(false);
     */
    /* JADX WARNING: Missing block: B:18:0x006b, code skipped:
            if (r4.zzapJ.zzapC == null) goto L_0x009b;
     */
    /* JADX WARNING: Missing block: B:20:0x0073, code skipped:
            if (r4.zzapJ.zzapD == null) goto L_0x009b;
     */
    /* JADX WARNING: Missing block: B:22:?, code skipped:
            r4.zzapJ.zzapC.unbindService(r4.zzapJ.zzapD);
     */
    /* JADX WARNING: Missing block: B:23:0x0085, code skipped:
            com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapq.zzb("No need to unbind service, already unbound", new java.lang.Object[0]);
     */
    public final /* synthetic */ void onResult(com.google.android.gms.common.api.Result r5) {
        /*
        r4 = this;
        r5 = (com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult) r5;
        r0 = r5.getStatus();
        r0 = r0.isSuccess();
        r1 = 0;
        if (r0 != 0) goto L_0x001e;
    L_0x000d:
        r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapq;
        r0 = "Connection was not successful";
        r1 = new java.lang.Object[r1];
        r5.zzc(r0, r1);
        r5 = r4.zzapJ;
        r5.zzne();
        return;
    L_0x001e:
        r0 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapq;
        r2 = "startRemoteDisplay successful";
        r3 = new java.lang.Object[r1];
        r0.zzb(r2, r3);
        r0 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzaps;
        monitor-enter(r0);
        r2 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapH;	 Catch:{ all -> 0x009c }
        if (r2 != 0) goto L_0x0046;
    L_0x0034:
        r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapq;	 Catch:{ all -> 0x009c }
        r2 = "Remote Display started but session already cancelled";
        r1 = new java.lang.Object[r1];	 Catch:{ all -> 0x009c }
        r5.zzb(r2, r1);	 Catch:{ all -> 0x009c }
        r5 = r4.zzapJ;	 Catch:{ all -> 0x009c }
        r5.zzne();	 Catch:{ all -> 0x009c }
        monitor-exit(r0);	 Catch:{ all -> 0x009c }
        return;
    L_0x0046:
        monitor-exit(r0);	 Catch:{ all -> 0x009c }
        r5 = r5.getPresentationDisplay();
        if (r5 == 0) goto L_0x0053;
    L_0x004d:
        r0 = r4.zzapJ;
        r0.zza(r5);
        goto L_0x005e;
    L_0x0053:
        r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapq;
        r0 = "Cast Remote Display session created without display";
        r2 = new java.lang.Object[r1];
        r5.zzc(r0, r2);
    L_0x005e:
        r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapt;
        r5.set(r1);
        r5 = r4.zzapJ;
        r5 = r5.zzapC;
        if (r5 == 0) goto L_0x009b;
    L_0x006d:
        r5 = r4.zzapJ;
        r5 = r5.zzapD;
        if (r5 == 0) goto L_0x009b;
    L_0x0075:
        r5 = r4.zzapJ;	 Catch:{ IllegalArgumentException -> 0x0085 }
        r5 = r5.zzapC;	 Catch:{ IllegalArgumentException -> 0x0085 }
        r0 = r4.zzapJ;	 Catch:{ IllegalArgumentException -> 0x0085 }
        r0 = r0.zzapD;	 Catch:{ IllegalArgumentException -> 0x0085 }
        r5.unbindService(r0);	 Catch:{ IllegalArgumentException -> 0x0085 }
        goto L_0x0090;
    L_0x0085:
        r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzapq;
        r0 = "No need to unbind service, already unbound";
        r1 = new java.lang.Object[r1];
        r5.zzb(r0, r1);
    L_0x0090:
        r5 = r4.zzapJ;
        r0 = 0;
        r5.zzapD = null;
        r5 = r4.zzapJ;
        r5.zzapC = null;
    L_0x009b:
        return;
    L_0x009c:
        r5 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x009c }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzw.onResult(com.google.android.gms.common.api.Result):void");
    }
}
