package com.google.android.gms.gcm;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.drive.DriveFile;
import java.util.Iterator;
import java.util.List;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;
import org.roboguice.shaded.goole.common.primitives.Ints;

final class zza {
    static zza zzbfw;
    private final Context mContext;

    private zza(Context context) {
        this.mContext = context.getApplicationContext();
    }

    static synchronized zza zzaX(Context context) {
        zza zza;
        synchronized (zza.class) {
            if (zzbfw == null) {
                zzbfw = new zza(context);
            }
            zza = zzbfw;
        }
        return zza;
    }

    static boolean zzaY(Context context) {
        if (((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        int myPid = Process.myPid();
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    if (runningAppProcessInfo.importance == 100) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    static String zze(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    private final String zzf(Bundle bundle, String str) {
        String zze = zze(bundle, str);
        if (!TextUtils.isEmpty(zze)) {
            return zze;
        }
        zze = String.valueOf(str);
        String valueOf = String.valueOf("_loc_key");
        zze = zze(bundle, valueOf.length() != 0 ? zze.concat(valueOf) : new String(zze));
        if (TextUtils.isEmpty(zze)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(zze, "string", this.mContext.getPackageName());
        String str2;
        StringBuilder stringBuilder;
        if (identifier == 0) {
            str2 = "GcmNotification";
            str = String.valueOf(str);
            valueOf = String.valueOf("_loc_key");
            str = String.valueOf((valueOf.length() != 0 ? str.concat(valueOf) : new String(str)).substring(6));
            stringBuilder = new StringBuilder((String.valueOf(str).length() + 49) + String.valueOf(zze).length());
            stringBuilder.append(str);
            stringBuilder.append(" resource not found: ");
            stringBuilder.append(zze);
            stringBuilder.append(" Default value will be used.");
            Log.w(str2, stringBuilder.toString());
            return null;
        }
        String valueOf2 = String.valueOf(str);
        String valueOf3 = String.valueOf("_loc_args");
        str2 = zze(bundle, valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
        if (TextUtils.isEmpty(str2)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(str2);
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < strArr.length; i++) {
                strArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, strArr);
        } catch (JSONException unused) {
            zze = "GcmNotification";
            str = String.valueOf(str);
            valueOf = String.valueOf("_loc_args");
            str = String.valueOf((valueOf.length() != 0 ? str.concat(valueOf) : new String(str)).substring(6));
            stringBuilder = new StringBuilder((String.valueOf(str).length() + 41) + String.valueOf(str2).length());
            stringBuilder.append("Malformed ");
            stringBuilder.append(str);
            stringBuilder.append(": ");
            stringBuilder.append(str2);
            stringBuilder.append("  Default value will be used.");
            Log.w(zze, stringBuilder.toString());
            return null;
        } catch (MissingFormatArgumentException e) {
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(zze).length() + 58) + String.valueOf(str2).length());
            stringBuilder2.append("Missing format argument for ");
            stringBuilder2.append(zze);
            stringBuilder2.append(": ");
            stringBuilder2.append(str2);
            stringBuilder2.append(" Default value will be used.");
            Log.w("GcmNotification", stringBuilder2.toString(), e);
            return null;
        }
    }

    static void zzu(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String string = bundle.getString(str);
            if (str.startsWith("gcm.notification.")) {
                str = str.replace("gcm.notification.", "gcm.n.");
            }
            if (str.startsWith("gcm.n.")) {
                if (!"gcm.n.e".equals(str)) {
                    bundle2.putString(str.substring(6), string);
                }
                it.remove();
            }
        }
        String string2 = bundle2.getString("sound2");
        if (string2 != null) {
            bundle2.remove("sound2");
            bundle2.putString("sound", string2);
        }
        if (!bundle2.isEmpty()) {
            bundle.putBundle("notification", bundle2);
        }
    }

    private final PendingIntent zzw(Bundle bundle) {
        Intent launchIntentForPackage;
        String zze = zze(bundle, "gcm.n.click_action");
        if (TextUtils.isEmpty(zze)) {
            launchIntentForPackage = this.mContext.getPackageManager().getLaunchIntentForPackage(this.mContext.getPackageName());
            if (launchIntentForPackage == null) {
                Log.w("GcmNotification", "No activity found to launch app");
                return null;
            }
        }
        launchIntentForPackage = new Intent(zze);
        launchIntentForPackage.setPackage(this.mContext.getPackageName());
        launchIntentForPackage.setFlags(DriveFile.MODE_READ_ONLY);
        Bundle bundle2 = new Bundle(bundle);
        GcmListenerService.zzt(bundle2);
        launchIntentForPackage.putExtras(bundle2);
        for (String zze2 : bundle2.keySet()) {
            if (zze2.startsWith("gcm.n.") || zze2.startsWith("gcm.notification.")) {
                launchIntentForPackage.removeExtra(zze2);
            }
        }
        return PendingIntent.getActivity(this.mContext, (int) SystemClock.uptimeMillis(), launchIntentForPackage, Ints.MAX_POWER_OF_TWO);
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0085  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x010e  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0125  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x012e  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0137  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x013c  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0152  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0169  */
    public final boolean zzv(android.os.Bundle r10) {
        /*
        r9 = this;
        r0 = "gcm.n.title";
        r0 = r9.zzf(r10, r0);
        r1 = "gcm.n.body";
        r1 = r9.zzf(r10, r1);
        r2 = "gcm.n.icon";
        r2 = zze(r10, r2);
        r3 = android.text.TextUtils.isEmpty(r2);
        if (r3 != 0) goto L_0x0061;
    L_0x0018:
        r3 = r9.mContext;
        r3 = r3.getResources();
        r4 = "drawable";
        r5 = r9.mContext;
        r5 = r5.getPackageName();
        r4 = r3.getIdentifier(r2, r4, r5);
        if (r4 == 0) goto L_0x002d;
    L_0x002c:
        goto L_0x0073;
    L_0x002d:
        r4 = "mipmap";
        r5 = r9.mContext;
        r5 = r5.getPackageName();
        r4 = r3.getIdentifier(r2, r4, r5);
        if (r4 == 0) goto L_0x003c;
    L_0x003b:
        goto L_0x0073;
    L_0x003c:
        r3 = "GcmNotification";
        r4 = java.lang.String.valueOf(r2);
        r4 = r4.length();
        r4 = r4 + 57;
        r5 = new java.lang.StringBuilder;
        r5.<init>(r4);
        r4 = "Icon resource ";
        r5.append(r4);
        r5.append(r2);
        r2 = " not found. Notification will use app icon.";
        r5.append(r2);
        r2 = r5.toString();
        android.util.Log.w(r3, r2);
    L_0x0061:
        r2 = r9.mContext;
        r2 = r2.getApplicationInfo();
        r2 = r2.icon;
        if (r2 != 0) goto L_0x0072;
    L_0x006b:
        r2 = 17301651; // 0x1080093 float:2.4979667E-38 double:8.5481514E-317;
        r4 = 17301651; // 0x1080093 float:2.4979667E-38 double:8.5481514E-317;
        goto L_0x0073;
    L_0x0072:
        r4 = r2;
    L_0x0073:
        r2 = "gcm.n.color";
        r2 = zze(r10, r2);
        r3 = "gcm.n.sound2";
        r3 = zze(r10, r3);
        r5 = android.text.TextUtils.isEmpty(r3);
        if (r5 == 0) goto L_0x0087;
    L_0x0085:
        r3 = 0;
        goto L_0x00f0;
    L_0x0087:
        r5 = "default";
        r5 = r5.equals(r3);
        if (r5 != 0) goto L_0x00eb;
    L_0x008f:
        r5 = r9.mContext;
        r5 = r5.getResources();
        r6 = "raw";
        r7 = r9.mContext;
        r7 = r7.getPackageName();
        r5 = r5.getIdentifier(r3, r6, r7);
        if (r5 == 0) goto L_0x00eb;
    L_0x00a3:
        r5 = "android.resource://";
        r5 = java.lang.String.valueOf(r5);
        r6 = r9.mContext;
        r6 = r6.getPackageName();
        r6 = java.lang.String.valueOf(r6);
        r7 = java.lang.String.valueOf(r5);
        r7 = r7.length();
        r7 = r7 + 5;
        r8 = java.lang.String.valueOf(r6);
        r8 = r8.length();
        r7 = r7 + r8;
        r8 = java.lang.String.valueOf(r3);
        r8 = r8.length();
        r7 = r7 + r8;
        r8 = new java.lang.StringBuilder;
        r8.<init>(r7);
        r8.append(r5);
        r8.append(r6);
        r5 = "/raw/";
        r8.append(r5);
        r8.append(r3);
        r3 = r8.toString();
        r3 = android.net.Uri.parse(r3);
        goto L_0x00f0;
    L_0x00eb:
        r3 = 2;
        r3 = android.media.RingtoneManager.getDefaultUri(r3);
    L_0x00f0:
        r5 = r9.zzw(r10);
        r6 = new android.support.v4.app.NotificationCompat$Builder;
        r7 = r9.mContext;
        r6.<init>(r7);
        r7 = 1;
        r6 = r6.setAutoCancel(r7);
        r4 = r6.setSmallIcon(r4);
        r6 = android.text.TextUtils.isEmpty(r0);
        if (r6 != 0) goto L_0x010e;
    L_0x010a:
        r4.setContentTitle(r0);
        goto L_0x011f;
    L_0x010e:
        r0 = r9.mContext;
        r0 = r0.getApplicationInfo();
        r6 = r9.mContext;
        r6 = r6.getPackageManager();
        r0 = r0.loadLabel(r6);
        goto L_0x010a;
    L_0x011f:
        r0 = android.text.TextUtils.isEmpty(r1);
        if (r0 != 0) goto L_0x0128;
    L_0x0125:
        r4.setContentText(r1);
    L_0x0128:
        r0 = android.text.TextUtils.isEmpty(r2);
        if (r0 != 0) goto L_0x0135;
    L_0x012e:
        r0 = android.graphics.Color.parseColor(r2);
        r4.setColor(r0);
    L_0x0135:
        if (r3 == 0) goto L_0x013a;
    L_0x0137:
        r4.setSound(r3);
    L_0x013a:
        if (r5 == 0) goto L_0x013f;
    L_0x013c:
        r4.setContentIntent(r5);
    L_0x013f:
        r0 = r4.build();
        r1 = "gcm.n.tag";
        r10 = zze(r10, r1);
        r1 = "GcmNotification";
        r2 = 3;
        r1 = android.util.Log.isLoggable(r1, r2);
        if (r1 == 0) goto L_0x0159;
    L_0x0152:
        r1 = "GcmNotification";
        r2 = "Showing notification";
        android.util.Log.d(r1, r2);
    L_0x0159:
        r1 = r9.mContext;
        r2 = "notification";
        r1 = r1.getSystemService(r2);
        r1 = (android.app.NotificationManager) r1;
        r2 = android.text.TextUtils.isEmpty(r10);
        if (r2 == 0) goto L_0x0180;
    L_0x0169:
        r2 = android.os.SystemClock.uptimeMillis();
        r10 = 37;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r10);
        r10 = "GCM-Notification:";
        r4.append(r10);
        r4.append(r2);
        r10 = r4.toString();
    L_0x0180:
        r2 = 0;
        r1.notify(r10, r2, r0);
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.zza.zzv(android.os.Bundle):boolean");
    }
}
