package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import com.google.android.gms.common.zzo;

public final class zza extends zzam {
    private int zzaGG;

    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0010 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:8:?, code skipped:
            android.util.Log.w("AccountAccessor", "Remote account accessor probably died");
     */
    /* JADX WARNING: Missing block: B:9:0x001b, code skipped:
            android.os.Binder.restoreCallingIdentity(r0);
     */
    public static android.accounts.Account zza(com.google.android.gms.common.internal.zzal r3) {
        /*
        if (r3 == 0) goto L_0x001f;
    L_0x0002:
        r0 = android.os.Binder.clearCallingIdentity();
        r3 = r3.getAccount();	 Catch:{ RemoteException -> 0x0010 }
        android.os.Binder.restoreCallingIdentity(r0);
        return r3;
    L_0x000e:
        r3 = move-exception;
        goto L_0x001b;
    L_0x0010:
        r3 = "AccountAccessor";
        r2 = "Remote account accessor probably died";
        android.util.Log.w(r3, r2);	 Catch:{ all -> 0x000e }
        android.os.Binder.restoreCallingIdentity(r0);
        goto L_0x001f;
    L_0x001b:
        android.os.Binder.restoreCallingIdentity(r0);
        throw r3;
    L_0x001f:
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zza.zza(com.google.android.gms.common.internal.zzal):android.accounts.Account");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zza)) {
            return false;
        }
        Account account = null;
        return account.equals(account);
    }

    public final Account getAccount() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.zzaGG) {
            return null;
        }
        if (zzo.zzf(null, callingUid)) {
            this.zzaGG = callingUid;
            return null;
        }
        throw new SecurityException("Caller is not GooglePlayServices");
    }
}
