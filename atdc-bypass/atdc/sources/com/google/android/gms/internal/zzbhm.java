package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.HashMap;

final class zzbhm extends zzbhp {
    private /* synthetic */ zzbhf zzaKu;

    zzbhm(zzbhl zzbhl, GoogleApiClient googleApiClient, zzbhf zzbhf) {
        this.zzaKu = zzbhf;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x006d  */
    public final void zza(android.content.Context r18, com.google.android.gms.internal.zzbie r19) throws android.os.RemoteException {
        /*
        r17 = this;
        r1 = r17;
        r2 = com.google.android.gms.common.data.zzd.zzqQ();
        r3 = r1.zzaKu;
        r3 = r3.zzsn();
        r3 = r3.entrySet();
        r3 = r3.iterator();
    L_0x0014:
        r4 = r3.hasNext();
        if (r4 == 0) goto L_0x0035;
    L_0x001a:
        r4 = r3.next();
        r4 = (java.util.Map.Entry) r4;
        r5 = new com.google.android.gms.internal.zzbhw;
        r6 = r4.getKey();
        r6 = (java.lang.String) r6;
        r4 = r4.getValue();
        r4 = (java.lang.String) r4;
        r5.<init>(r6, r4);
        com.google.android.gms.common.data.zzd.zza(r2, r5);
        goto L_0x0014;
    L_0x0035:
        r3 = 0;
        r2 = r2.zzav(r3);
        r3 = com.google.android.gms.internal.zzbdm.zzaz(r18);
        r4 = com.google.android.gms.common.api.Status.zzaBm;
        r5 = 0;
        if (r3 != r4) goto L_0x0049;
    L_0x0043:
        r3 = com.google.android.gms.internal.zzbdm.zzqA();
        r9 = r3;
        goto L_0x004a;
    L_0x0049:
        r9 = r5;
    L_0x004a:
        r3 = com.google.firebase.iid.zzi.zzJP();	 Catch:{ IllegalStateException -> 0x0061 }
        r3 = r3.getId();	 Catch:{ IllegalStateException -> 0x0061 }
        r4 = com.google.firebase.iid.zzi.zzJP();	 Catch:{ IllegalStateException -> 0x005d }
        r4 = r4.getToken();	 Catch:{ IllegalStateException -> 0x005d }
        r10 = r3;
        r11 = r4;
        goto L_0x0076;
    L_0x005d:
        r0 = move-exception;
        r4 = r3;
        r3 = r0;
        goto L_0x0064;
    L_0x0061:
        r0 = move-exception;
        r3 = r0;
        r4 = r5;
    L_0x0064:
        r6 = "ConfigApiImpl";
        r7 = 3;
        r6 = android.util.Log.isLoggable(r6, r7);
        if (r6 == 0) goto L_0x0074;
    L_0x006d:
        r6 = "ConfigApiImpl";
        r7 = "Cannot retrieve instanceId or instanceIdToken.";
        android.util.Log.d(r6, r7, r3);
    L_0x0074:
        r10 = r4;
        r11 = r5;
    L_0x0076:
        r14 = com.google.android.gms.internal.zzbhk.zzaR(r18);
        r3 = new com.google.android.gms.internal.zzbhy;
        r5 = r18.getPackageName();
        r4 = r1.zzaKu;
        r6 = r4.zzsm();
        r12 = 0;
        r4 = r1.zzaKu;
        r13 = r4.zzso();
        r4 = r1.zzaKu;
        r15 = r4.zzsp();
        r4 = r1.zzaKu;
        r16 = r4.zzsq();
        r4 = r3;
        r8 = r2;
        r4.<init>(r5, r6, r8, r9, r10, r11, r12, r13, r14, r15, r16);
        r4 = r1.zzaKv;	 Catch:{ all -> 0x00a9 }
        r5 = r19;
        r5.zza(r4, r3);	 Catch:{ all -> 0x00a9 }
        r2.close();
        return;
    L_0x00a9:
        r0 = move-exception;
        r3 = r0;
        r2.close();
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbhm.zza(android.content.Context, com.google.android.gms.internal.zzbie):void");
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new zzbhr(status, new HashMap());
    }
}
