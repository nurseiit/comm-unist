package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.annotation.RequiresPermission;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.zza;
import com.google.android.gms.common.zzo;
import com.google.android.gms.internal.zzbgb;
import java.io.IOException;
import java.util.List;

public class zzd {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    @SuppressLint({"InlinedApi"})
    public static final String KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
    @SuppressLint({"InlinedApi"})
    public static final String KEY_CALLER_UID = "callerUid";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";
    private static final String[] zzakl = new String[]{"com.google", "com.google.work", "cn.google"};
    private static final ComponentName zzakm = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
    private static final zzbgb zzakn = new zzbgb("Auth", "GoogleAuthUtil");

    zzd() {
    }

    public static void clearToken(Context context, String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        zzbo.zzcG("Calling this from your main thread can lead to deadlock");
        zzah(context);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        zza(context, zzakm, new zzf(str, bundle));
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) throws GoogleAuthException, IOException {
        zzbo.zzh(str, "accountName must be provided");
        zzbo.zzcG("Calling this from your main thread can lead to deadlock");
        zzah(context);
        return (List) zza(context, zzakm, new zzg(str, i));
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException, IOException {
        zzbo.zzh(str, "accountName must be provided");
        zzbo.zzcG("Calling this from your main thread can lead to deadlock");
        zzah(context);
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, account, str, new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        zzc(account);
        return zzb(context, account, str, bundle).getToken();
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }

    @RequiresPermission("android.permission.MANAGE_ACCOUNTS")
    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    @TargetApi(23)
    public static Bundle removeAccount(Context context, Account account) throws GoogleAuthException, IOException {
        zzbo.zzu(context);
        zzc(account);
        zzah(context);
        return (Bundle) zza(context, zzakm, new zzh(account));
    }

    private static <T> T zza(Context context, ComponentName componentName, zzi<T> zzi) throws IOException, GoogleAuthException {
        ServiceConnection zza = new zza();
        zzae zzaC = zzae.zzaC(context);
        if (zzaC.zza(componentName, zza, "GoogleAuthUtil")) {
            try {
                Object zzy = zzi.zzy(zza.zzoV());
                zzaC.zzb(componentName, zza, "GoogleAuthUtil");
                return zzy;
            } catch (RemoteException | InterruptedException e) {
                zzakn.zze("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            } catch (Throwable th) {
                zzaC.zzb(componentName, zza, "GoogleAuthUtil");
            }
        } else {
            throw new IOException("Could not bind to service.");
        }
    }

    private static void zzah(Context context) throws GoogleAuthException {
        try {
            zzo.zzah(context.getApplicationContext());
        } catch (GooglePlayServicesRepairableException e) {
            throw new GooglePlayServicesAvailabilityException(e.getConnectionStatusCode(), e.getMessage(), e.getIntent());
        } catch (GooglePlayServicesNotAvailableException e2) {
            throw new GoogleAuthException(e2.getMessage());
        }
    }

    public static TokenData zzb(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        zzbo.zzcG("Calling this from your main thread can lead to deadlock");
        zzbo.zzh(str, "Scope cannot be empty or null.");
        zzc(account);
        zzah(context);
        bundle = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle.getString(KEY_ANDROID_PACKAGE_NAME))) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return (TokenData) zza(context, zzakm, new zze(account, str, bundle));
    }

    private static void zzc(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("Account cannot be null");
        } else if (TextUtils.isEmpty(account.name)) {
            throw new IllegalArgumentException("Account name cannot be empty!");
        } else {
            String[] strArr = zzakl;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                if (!strArr[i].equals(account.type)) {
                    i++;
                } else {
                    return;
                }
            }
            throw new IllegalArgumentException("Account type not supported");
        }
    }

    private static <T> T zzl(T t) throws IOException {
        if (t != null) {
            return t;
        }
        zzakn.zzf("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }
}
