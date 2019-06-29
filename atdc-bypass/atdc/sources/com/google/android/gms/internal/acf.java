package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.StorageException;
import java.io.InputStream;
import org.json.JSONObject;

public final class acf {
    private Exception zzbMj;
    private aca zzcqk;
    private int zzcql;
    private Exception zzcqm;

    public acf(@NonNull aca aca) {
        this.zzcqk = aca;
    }

    @Nullable
    public final Exception getException() {
        try {
            return this.zzcqm != null ? this.zzcqm : this.zzbMj != null ? this.zzbMj : (Exception) zzn.zzE(this.zzcqk.zzLj());
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "getException failed with a RemoteException:", e);
            return null;
        }
    }

    public final int getResultCode() {
        try {
            return this.zzcql != 0 ? this.zzcql : this.zzcqk.getResultCode();
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "getResultCode failed with a RemoteException:", e);
            return 0;
        }
    }

    @Nullable
    public final InputStream getStream() {
        try {
            return (InputStream) zzn.zzE(this.zzcqk.zzLg());
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "getStream failed with a RemoteException:", e);
            return null;
        }
    }

    public final void reset() {
        try {
            this.zzcql = 0;
            this.zzcqm = null;
            this.zzcqk.reset();
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "reset failed with a RemoteException:", e);
        }
    }

    public final void zzLf() {
        try {
            if (this.zzcqk != null) {
                this.zzcqk.zzLf();
            }
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "performRequestEnd failed with a RemoteException:", e);
        }
    }

    @Nullable
    public final String zzLi() {
        try {
            this.zzcqk.zzLi();
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "getRawResult failed with a RemoteException:", e);
        }
        return null;
    }

    public final boolean zzLk() {
        try {
            return (this.zzcql == -2 || this.zzcqm != null) ? false : this.zzcqk.zzLk();
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "isResultSuccess failed with a RemoteException:", e);
            return false;
        }
    }

    public final int zzLl() {
        try {
            return this.zzcqk.zzLl();
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "getResultingContentLength failed with a RemoteException:", e);
            return 0;
        }
    }

    @NonNull
    public final JSONObject zzLn() throws RemoteException {
        return (JSONObject) zzn.zzE(this.zzcqk.zzLh());
    }

    public final <TResult> void zza(TaskCompletionSource<TResult> taskCompletionSource, TResult tResult) {
        Exception exception = getException();
        if (zzLk() && exception == null) {
            taskCompletionSource.setResult(tResult);
        } else {
            taskCompletionSource.setException(StorageException.fromExceptionAndHttpCode(exception, getResultCode()));
        }
    }

    public final void zzam(String str, String str2) {
        try {
            this.zzcqk.zzam(str, str2);
        } catch (RemoteException e) {
            String str3 = "NetworkRequestProxy";
            String str4 = "Caught remote exception setting custom header:";
            str = String.valueOf(str);
            Log.e(str3, str.length() != 0 ? str4.concat(str) : new String(str4), e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0027 A:{Catch:{ RemoteException -> 0x002d }} */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0026 A:{RETURN, Catch:{ RemoteException -> 0x002d }} */
    public final void zze(@android.support.annotation.Nullable java.lang.String r2, @android.support.annotation.NonNull android.content.Context r3) {
        /*
        r1 = this;
        r0 = "connectivity";
        r3 = r3.getSystemService(r0);	 Catch:{ RemoteException -> 0x002d }
        r3 = (android.net.ConnectivityManager) r3;	 Catch:{ RemoteException -> 0x002d }
        r3 = r3.getActiveNetworkInfo();	 Catch:{ RemoteException -> 0x002d }
        if (r3 == 0) goto L_0x0017;
    L_0x000e:
        r3 = r3.isConnected();	 Catch:{ RemoteException -> 0x002d }
        if (r3 != 0) goto L_0x0015;
    L_0x0014:
        goto L_0x0017;
    L_0x0015:
        r3 = 1;
        goto L_0x0024;
    L_0x0017:
        r3 = -2;
        r1.zzcql = r3;	 Catch:{ RemoteException -> 0x002d }
        r3 = new java.net.SocketException;	 Catch:{ RemoteException -> 0x002d }
        r0 = "Network subsystem is unavailable";
        r3.<init>(r0);	 Catch:{ RemoteException -> 0x002d }
        r1.zzcqm = r3;	 Catch:{ RemoteException -> 0x002d }
        r3 = 0;
    L_0x0024:
        if (r3 != 0) goto L_0x0027;
    L_0x0026:
        return;
    L_0x0027:
        r3 = r1.zzcqk;	 Catch:{ RemoteException -> 0x002d }
        r3.zzhM(r2);	 Catch:{ RemoteException -> 0x002d }
        return;
    L_0x002d:
        r2 = move-exception;
        r1.zzbMj = r2;
        r3 = "NetworkRequestProxy";
        r0 = "performRequest failed with a RemoteException:";
        android.util.Log.e(r3, r0, r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.acf.zze(java.lang.String, android.content.Context):void");
    }

    public final void zzhN(@Nullable String str) {
        try {
            this.zzcqk.zzhN(str);
        } catch (RemoteException e) {
            this.zzbMj = e;
            Log.e("NetworkRequestProxy", "performRequestStart failed with a RemoteException:", e);
        }
    }

    @Nullable
    public final String zzhO(String str) {
        try {
            return this.zzcqk.zzhO(str);
        } catch (RemoteException e) {
            String str2 = "NetworkRequestProxy";
            String str3 = "getResultString failed with a RemoteException:";
            str = String.valueOf(str);
            Log.e(str2, str.length() != 0 ? str3.concat(str) : new String(str3), e);
            return null;
        }
    }
}
