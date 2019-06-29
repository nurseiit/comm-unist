package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri.Builder;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.util.zzw;
import com.google.android.gms.internal.zzbha;
import java.io.InputStream;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;

public class zzo {
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 11020000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    private static boolean zzaAo = false;
    private static boolean zzaAp = false;
    private static boolean zzaAq = false;
    private static boolean zzaAr = false;
    static final AtomicBoolean zzaAs = new AtomicBoolean();
    private static final AtomicBoolean zzaAt = new AtomicBoolean();

    zzo() {
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return zze.zzoW().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.getStatusString(i);
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        InputStream openInputStream;
        try {
            openInputStream = context.getContentResolver().openInputStream(new Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build());
            String next = new Scanner(openInputStream).useDelimiter("\\A").next();
            if (openInputStream != null) {
                openInputStream.close();
            }
            return next;
        } catch (NoSuchElementException unused) {
            if (openInputStream != null) {
                openInputStream.close();
            }
            return null;
        } catch (Exception unused2) {
            return null;
        } catch (Throwable th) {
            if (openInputStream != null) {
                openInputStream.close();
            }
        }
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (NameNotFoundException unused) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX WARNING: Missing block: B:39:0x00c2, code skipped:
            if (com.google.android.gms.common.zzp.zza(r6, com.google.android.gms.common.zzp.zza(r4, com.google.android.gms.common.zzj.zzaAk)) == null) goto L_0x00c4;
     */
    /* JADX WARNING: Missing block: B:42:0x00cf, code skipped:
            if (com.google.android.gms.common.zzp.zza(r6, com.google.android.gms.common.zzj.zzaAk) == null) goto L_0x00c4;
     */
    /* JADX WARNING: Missing block: B:44:0x00da, code skipped:
            if ((r6.versionCode / 1000) >= (GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000)) goto L_0x0102;
     */
    /* JADX WARNING: Missing block: B:45:0x00dc, code skipped:
            r0 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
            r1 = r6.versionCode;
            r3 = new java.lang.StringBuilder(77);
            r3.append("Google Play services out of date.  Requires ");
            r3.append(r0);
            r3.append(" but found ");
            r3.append(r1);
            android.util.Log.w("GooglePlayServicesUtil", r3.toString());
     */
    /* JADX WARNING: Missing block: B:46:0x0101, code skipped:
            return 2;
     */
    /* JADX WARNING: Missing block: B:47:0x0102, code skipped:
            r8 = r6.applicationInfo;
     */
    /* JADX WARNING: Missing block: B:48:0x0104, code skipped:
            if (r8 != null) goto L_0x0116;
     */
    /* JADX WARNING: Missing block: B:50:?, code skipped:
            r8 = r0.getApplicationInfo("com.google.android.gms", 0);
     */
    /* JADX WARNING: Missing block: B:51:0x010d, code skipped:
            r8 = move-exception;
     */
    /* JADX WARNING: Missing block: B:52:0x010e, code skipped:
            android.util.Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", r8);
     */
    /* JADX WARNING: Missing block: B:53:0x0115, code skipped:
            return 1;
     */
    /* JADX WARNING: Missing block: B:55:0x0118, code skipped:
            if (r8.enabled != false) goto L_0x011c;
     */
    /* JADX WARNING: Missing block: B:57:0x011b, code skipped:
            return 3;
     */
    /* JADX WARNING: Missing block: B:58:0x011c, code skipped:
            return 0;
     */
    @java.lang.Deprecated
    public static int isGooglePlayServicesAvailable(android.content.Context r8) {
        /*
        r0 = r8.getPackageManager();
        r1 = r8.getResources();	 Catch:{ Throwable -> 0x000e }
        r2 = com.google.android.gms.R.string.common_google_play_services_unknown_issue;	 Catch:{ Throwable -> 0x000e }
        r1.getString(r2);	 Catch:{ Throwable -> 0x000e }
        goto L_0x0015;
    L_0x000e:
        r1 = "GooglePlayServicesUtil";
        r2 = "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.";
        android.util.Log.e(r1, r2);
    L_0x0015:
        r1 = "com.google.android.gms";
        r2 = r8.getPackageName();
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x0079;
    L_0x0021:
        r1 = zzaAt;
        r1 = r1.get();
        if (r1 != 0) goto L_0x0079;
    L_0x0029:
        r1 = com.google.android.gms.common.internal.zzbd.zzaE(r8);
        if (r1 != 0) goto L_0x0037;
    L_0x002f:
        r8 = new java.lang.IllegalStateException;
        r0 = "A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />";
        r8.<init>(r0);
        throw r8;
    L_0x0037:
        r2 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        if (r1 == r2) goto L_0x0079;
    L_0x003b:
        r8 = new java.lang.IllegalStateException;
        r0 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        r2 = "com.google.android.gms.version";
        r2 = java.lang.String.valueOf(r2);
        r3 = java.lang.String.valueOf(r2);
        r3 = r3.length();
        r3 = r3 + 290;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r3);
        r3 = "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ";
        r4.append(r3);
        r4.append(r0);
        r0 = " but found ";
        r4.append(r0);
        r4.append(r1);
        r0 = ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"";
        r4.append(r0);
        r4.append(r2);
        r0 = "\" android:value=\"@integer/google_play_services_version\" />";
        r4.append(r0);
        r0 = r4.toString();
        r8.<init>(r0);
        throw r8;
    L_0x0079:
        r1 = com.google.android.gms.common.util.zzj.zzaH(r8);
        r2 = 0;
        r3 = 1;
        if (r1 != 0) goto L_0x0089;
    L_0x0081:
        r1 = com.google.android.gms.common.util.zzj.zzaJ(r8);
        if (r1 != 0) goto L_0x0089;
    L_0x0087:
        r1 = 1;
        goto L_0x008a;
    L_0x0089:
        r1 = 0;
    L_0x008a:
        r4 = 0;
        r5 = 9;
        if (r1 == 0) goto L_0x00a0;
    L_0x008f:
        r4 = "com.android.vending";
        r6 = 8256; // 0x2040 float:1.1569E-41 double:4.079E-320;
        r4 = r0.getPackageInfo(r4, r6);	 Catch:{ NameNotFoundException -> 0x0098 }
        goto L_0x00a0;
    L_0x0098:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play Store is missing.";
    L_0x009c:
        android.util.Log.w(r8, r0);
        return r5;
    L_0x00a0:
        r6 = "com.google.android.gms";
        r7 = 64;
        r6 = r0.getPackageInfo(r6, r7);	 Catch:{ NameNotFoundException -> 0x011d }
        com.google.android.gms.common.zzp.zzax(r8);
        if (r1 == 0) goto L_0x00c9;
    L_0x00ad:
        r8 = com.google.android.gms.common.zzj.zzaAk;
        r8 = com.google.android.gms.common.zzp.zza(r4, r8);
        if (r8 != 0) goto L_0x00ba;
    L_0x00b5:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play Store signature invalid.";
        goto L_0x009c;
    L_0x00ba:
        r1 = new com.google.android.gms.common.zzg[r3];
        r1[r2] = r8;
        r8 = com.google.android.gms.common.zzp.zza(r6, r1);
        if (r8 != 0) goto L_0x00d2;
    L_0x00c4:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play services signature invalid.";
        goto L_0x009c;
    L_0x00c9:
        r8 = com.google.android.gms.common.zzj.zzaAk;
        r8 = com.google.android.gms.common.zzp.zza(r6, r8);
        if (r8 != 0) goto L_0x00d2;
    L_0x00d1:
        goto L_0x00c4;
    L_0x00d2:
        r8 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        r8 = r8 / 1000;
        r1 = r6.versionCode;
        r1 = r1 / 1000;
        if (r1 >= r8) goto L_0x0102;
    L_0x00dc:
        r8 = "GooglePlayServicesUtil";
        r0 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        r1 = r6.versionCode;
        r2 = 77;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Google Play services out of date.  Requires ";
        r3.append(r2);
        r3.append(r0);
        r0 = " but found ";
        r3.append(r0);
        r3.append(r1);
        r0 = r3.toString();
        android.util.Log.w(r8, r0);
        r8 = 2;
        return r8;
    L_0x0102:
        r8 = r6.applicationInfo;
        if (r8 != 0) goto L_0x0116;
    L_0x0106:
        r8 = "com.google.android.gms";
        r8 = r0.getApplicationInfo(r8, r2);	 Catch:{ NameNotFoundException -> 0x010d }
        goto L_0x0116;
    L_0x010d:
        r8 = move-exception;
        r0 = "GooglePlayServicesUtil";
        r1 = "Google Play services missing when getting application info.";
        android.util.Log.wtf(r0, r1, r8);
        return r3;
    L_0x0116:
        r8 = r8.enabled;
        if (r8 != 0) goto L_0x011c;
    L_0x011a:
        r8 = 3;
        return r8;
    L_0x011c:
        return r2;
    L_0x011d:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play services is missing.";
        android.util.Log.w(r8, r0);
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzo.isGooglePlayServicesAvailable(android.content.Context):int");
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        if (i != 9) {
            switch (i) {
                case 1:
                case 2:
                case 3:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    @Deprecated
    public static void zzah(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int isGooglePlayServicesAvailable = zze.zzoW().isGooglePlayServicesAvailable(context);
        if (isGooglePlayServicesAvailable != 0) {
            zze.zzoW();
            Intent zza = zze.zza(context, isGooglePlayServicesAvailable, "e");
            StringBuilder stringBuilder = new StringBuilder(57);
            stringBuilder.append("GooglePlayServices not available due to error ");
            stringBuilder.append(isGooglePlayServicesAvailable);
            Log.e("GooglePlayServicesUtil", stringBuilder.toString());
            if (zza == null) {
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
            }
            throw new GooglePlayServicesRepairableException(isGooglePlayServicesAvailable, "Google Play Services not available", zza);
        }
    }

    @Deprecated
    public static void zzat(Context context) {
        if (!zzaAs.getAndSet(true)) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.cancel(10436);
                }
            } catch (SecurityException unused) {
            }
        }
    }

    @Deprecated
    public static int zzau(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    public static boolean zzaw(Context context) {
        if (!zzaAr) {
            try {
                PackageInfo packageInfo = zzbha.zzaP(context).getPackageInfo("com.google.android.gms", 64);
                if (packageInfo != null) {
                    zzp.zzax(context);
                    if (zzp.zza(packageInfo, zzj.zzaAk[1]) != null) {
                        zzaAq = true;
                        zzaAr = true;
                    }
                }
                zzaAq = false;
            } catch (NameNotFoundException e) {
                Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
            } catch (Throwable th) {
                zzaAr = true;
            }
            zzaAr = true;
        }
        return zzaAq || !"user".equals(Build.TYPE);
    }

    @TargetApi(19)
    @Deprecated
    public static boolean zzb(Context context, int i, String str) {
        return zzw.zzb(context, i, str);
    }

    @Deprecated
    public static boolean zze(Context context, int i) {
        return i == 18 ? true : i == 1 ? zzy(context, "com.google.android.gms") : false;
    }

    @Deprecated
    public static boolean zzf(Context context, int i) {
        return zzw.zzf(context, i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0073 A:{RETURN} */
    @android.annotation.TargetApi(21)
    static boolean zzy(android.content.Context r5, java.lang.String r6) {
        /*
        r0 = "com.google.android.gms";
        r0 = r6.equals(r0);
        r1 = com.google.android.gms.common.util.zzq.zzse();
        r2 = 1;
        if (r1 == 0) goto L_0x0034;
    L_0x000d:
        r1 = r5.getPackageManager();
        r1 = r1.getPackageInstaller();
        r1 = r1.getAllSessions();
        r1 = r1.iterator();
    L_0x001d:
        r3 = r1.hasNext();
        if (r3 == 0) goto L_0x0034;
    L_0x0023:
        r3 = r1.next();
        r3 = (android.content.pm.PackageInstaller.SessionInfo) r3;
        r3 = r3.getAppPackageName();
        r3 = r6.equals(r3);
        if (r3 == 0) goto L_0x001d;
    L_0x0033:
        return r2;
    L_0x0034:
        r1 = r5.getPackageManager();
        r3 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r4 = 0;
        r6 = r1.getApplicationInfo(r6, r3);	 Catch:{ NameNotFoundException -> 0x0074 }
        if (r0 == 0) goto L_0x0044;
    L_0x0041:
        r5 = r6.enabled;	 Catch:{ NameNotFoundException -> 0x0074 }
        return r5;
    L_0x0044:
        r6 = r6.enabled;	 Catch:{ NameNotFoundException -> 0x0074 }
        if (r6 == 0) goto L_0x0074;
    L_0x0048:
        r6 = com.google.android.gms.common.util.zzq.zzsb();	 Catch:{ NameNotFoundException -> 0x0074 }
        if (r6 == 0) goto L_0x0070;
    L_0x004e:
        r6 = "user";
        r6 = r5.getSystemService(r6);	 Catch:{ NameNotFoundException -> 0x0074 }
        r6 = (android.os.UserManager) r6;	 Catch:{ NameNotFoundException -> 0x0074 }
        r5 = r5.getPackageName();	 Catch:{ NameNotFoundException -> 0x0074 }
        r5 = r6.getApplicationRestrictions(r5);	 Catch:{ NameNotFoundException -> 0x0074 }
        if (r5 == 0) goto L_0x0070;
    L_0x0060:
        r6 = "true";
        r0 = "restricted_profile";
        r5 = r5.getString(r0);	 Catch:{ NameNotFoundException -> 0x0074 }
        r5 = r6.equals(r5);	 Catch:{ NameNotFoundException -> 0x0074 }
        if (r5 == 0) goto L_0x0070;
    L_0x006e:
        r5 = 1;
        goto L_0x0071;
    L_0x0070:
        r5 = 0;
    L_0x0071:
        if (r5 != 0) goto L_0x0074;
    L_0x0073:
        return r2;
    L_0x0074:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzo.zzy(android.content.Context, java.lang.String):boolean");
    }
}
