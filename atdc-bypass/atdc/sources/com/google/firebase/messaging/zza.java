package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.R;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.drive.DriveFile;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.roboguice.shaded.goole.common.primitives.Ints;

final class zza {
    private static zza zzckS;
    private final Context mContext;
    private Bundle zzaFE;
    private Method zzckT;
    private Method zzckU;
    private final AtomicInteger zzckV = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private zza(Context context) {
        this.mContext = context.getApplicationContext();
    }

    static boolean zzG(Bundle bundle) {
        return "1".equals(zze(bundle, "gcm.n.e")) || zze(bundle, "gcm.n.icon") != null;
    }

    @Nullable
    static Uri zzH(@NonNull Bundle bundle) {
        CharSequence zze = zze(bundle, "gcm.n.link_android");
        if (TextUtils.isEmpty(zze)) {
            zze = zze(bundle, "gcm.n.link");
        }
        return !TextUtils.isEmpty(zze) ? Uri.parse(zze) : null;
    }

    static String zzI(Bundle bundle) {
        String zze = zze(bundle, "gcm.n.sound2");
        return TextUtils.isEmpty(zze) ? zze(bundle, "gcm.n.sound") : zze;
    }

    private final Bundle zzKb() {
        if (this.zzaFE != null) {
            return this.zzaFE;
        }
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128);
        } catch (NameNotFoundException unused) {
        }
        if (applicationInfo == null || applicationInfo.metaData == null) {
            return Bundle.EMPTY;
        }
        this.zzaFE = applicationInfo.metaData;
        return this.zzaFE;
    }

    @TargetApi(26)
    private final Notification zza(CharSequence charSequence, String str, int i, Integer num, Uri uri, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str2) {
        Builder smallIcon = new Builder(this.mContext).setAutoCancel(true).setSmallIcon(i);
        if (!TextUtils.isEmpty(charSequence)) {
            smallIcon.setContentTitle(charSequence);
        }
        if (!TextUtils.isEmpty(str)) {
            smallIcon.setContentText(str);
            smallIcon.setStyle(new BigTextStyle().bigText(str));
        }
        if (num != null) {
            smallIcon.setColor(num.intValue());
        }
        if (uri != null) {
            smallIcon.setSound(uri);
        }
        if (pendingIntent != null) {
            smallIcon.setContentIntent(pendingIntent);
        }
        if (pendingIntent2 != null) {
            smallIcon.setDeleteIntent(pendingIntent2);
        }
        if (str2 != null) {
            try {
                if (this.zzckT == null) {
                    this.zzckT = smallIcon.getClass().getMethod("setChannel", new Class[]{String.class});
                }
                this.zzckT.invoke(smallIcon, new Object[]{str2});
            } catch (IllegalAccessException | IllegalArgumentException | LinkageError | NoSuchMethodException | SecurityException | InvocationTargetException e) {
                Log.e("FirebaseMessaging", "Error while setting the notification channel", e);
            }
        }
        return smallIcon.build();
    }

    private static void zza(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    static synchronized zza zzbM(Context context) {
        zza zza;
        synchronized (zza.class) {
            if (zzckS == null) {
                zzckS = new zza(context);
            }
            zza = zzckS;
        }
        return zza;
    }

    static String zze(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    static String zzh(Bundle bundle, String str) {
        str = String.valueOf(str);
        String valueOf = String.valueOf("_loc_key");
        return zze(bundle, valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    private final Integer zzhr(String str) {
        if (VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 54);
                stringBuilder.append("Color ");
                stringBuilder.append(str);
                stringBuilder.append(" not valid. Notification will use default color.");
                Log.w("FirebaseMessaging", stringBuilder.toString());
            }
        }
        int i = zzKb().getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i != 0) {
            try {
                return Integer.valueOf(ContextCompat.getColor(this.mContext, i));
            } catch (NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            }
        }
        return null;
    }

    @TargetApi(26)
    private final String zzhs(String str) {
        if (!zzq.isAtLeastO()) {
            return null;
        }
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService(NotificationManager.class);
        try {
            String str2;
            if (this.zzckU == null) {
                this.zzckU = notificationManager.getClass().getMethod("getNotificationChannel", new Class[]{String.class});
            }
            if (!TextUtils.isEmpty(str)) {
                if (this.zzckU.invoke(notificationManager, new Object[]{str}) != null) {
                    return str;
                }
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 122);
                stringBuilder.append("Notification Channel requested (");
                stringBuilder.append(str);
                stringBuilder.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                Log.w("FirebaseMessaging", stringBuilder.toString());
            }
            str = zzKb().getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(str)) {
                str = "FirebaseMessaging";
                str2 = "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.";
            } else {
                if (this.zzckU.invoke(notificationManager, new Object[]{str}) != null) {
                    return str;
                }
                str = "FirebaseMessaging";
                str2 = "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.";
            }
            Log.w(str, str2);
            if (this.zzckU.invoke(notificationManager, new Object[]{"fcm_fallback_notification_channel"}) == null) {
                Object newInstance = Class.forName("android.app.NotificationChannel").getConstructor(new Class[]{String.class, CharSequence.class, Integer.TYPE}).newInstance(new Object[]{"fcm_fallback_notification_channel", this.mContext.getString(R.string.fcm_fallback_notification_channel_label), Integer.valueOf(3)});
                notificationManager.getClass().getMethod("createNotificationChannel", new Class[]{r11}).invoke(notificationManager, new Object[]{newInstance});
            }
            return "fcm_fallback_notification_channel";
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | LinkageError | NoSuchMethodException | SecurityException | InvocationTargetException e) {
            Log.e("FirebaseMessaging", "Error while setting the notification channel", e);
            return null;
        }
    }

    static Object[] zzi(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("_loc_args");
        String zze = zze(bundle, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        if (TextUtils.isEmpty(zze)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(zze);
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < strArr.length; i++) {
                strArr[i] = jSONArray.opt(i);
            }
            return strArr;
        } catch (JSONException unused) {
            valueOf = "FirebaseMessaging";
            str = String.valueOf(str);
            String valueOf3 = String.valueOf("_loc_args");
            str = String.valueOf((valueOf3.length() != 0 ? str.concat(valueOf3) : new String(str)).substring(6));
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 41) + String.valueOf(zze).length());
            stringBuilder.append("Malformed ");
            stringBuilder.append(str);
            stringBuilder.append(": ");
            stringBuilder.append(zze);
            stringBuilder.append("  Default value will be used.");
            Log.w(valueOf, stringBuilder.toString());
            return null;
        }
    }

    private final String zzj(Bundle bundle, String str) {
        String zze = zze(bundle, str);
        if (!TextUtils.isEmpty(zze)) {
            return zze;
        }
        zze = zzh(bundle, str);
        if (TextUtils.isEmpty(zze)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(zze, "string", this.mContext.getPackageName());
        String str2;
        if (identifier == 0) {
            str2 = "FirebaseMessaging";
            str = String.valueOf(str);
            String valueOf = String.valueOf("_loc_key");
            str = String.valueOf((valueOf.length() != 0 ? str.concat(valueOf) : new String(str)).substring(6));
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 49) + String.valueOf(zze).length());
            stringBuilder.append(str);
            stringBuilder.append(" resource not found: ");
            stringBuilder.append(zze);
            stringBuilder.append(" Default value will be used.");
            Log.w(str2, stringBuilder.toString());
            return null;
        }
        Object[] zzi = zzi(bundle, str);
        if (zzi == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, zzi);
        } catch (MissingFormatArgumentException e) {
            str2 = String.valueOf(Arrays.toString(zzi));
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(zze).length() + 58) + String.valueOf(str2).length());
            stringBuilder2.append("Missing format argument for ");
            stringBuilder2.append(zze);
            stringBuilder2.append(": ");
            stringBuilder2.append(str2);
            stringBuilder2.append(" Default value will be used.");
            Log.w("FirebaseMessaging", stringBuilder2.toString(), e);
            return null;
        }
    }

    private final PendingIntent zzw(Bundle bundle) {
        Intent intent;
        String zze = zze(bundle, "gcm.n.click_action");
        if (TextUtils.isEmpty(zze)) {
            Uri zzH = zzH(bundle);
            if (zzH != null) {
                intent = new Intent("android.intent.action.VIEW");
                intent.setPackage(this.mContext.getPackageName());
                intent.setData(zzH);
            } else {
                intent = this.mContext.getPackageManager().getLaunchIntentForPackage(this.mContext.getPackageName());
                if (intent == null) {
                    Log.w("FirebaseMessaging", "No activity found to launch app");
                }
            }
        } else {
            intent = new Intent(zze);
            intent.setPackage(this.mContext.getPackageName());
            intent.setFlags(DriveFile.MODE_READ_ONLY);
        }
        if (intent == null) {
            return null;
        }
        intent.addFlags(67108864);
        Bundle bundle2 = new Bundle(bundle);
        FirebaseMessagingService.zzt(bundle2);
        intent.putExtras(bundle2);
        for (String zze2 : bundle2.keySet()) {
            if (zze2.startsWith("gcm.n.") || zze2.startsWith("gcm.notification.")) {
                intent.removeExtra(zze2);
            }
        }
        return PendingIntent.getActivity(this.mContext, this.zzckV.incrementAndGet(), intent, Ints.MAX_POWER_OF_TWO);
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x010a  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x017d  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x01ea  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x01f3  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0204  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x020d  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0212  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0217  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x022d  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0244  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x005f A:{RETURN} */
    public final boolean zzv(android.os.Bundle r13) {
        /*
        r12 = this;
        r0 = "1";
        r1 = "gcm.n.noui";
        r1 = zze(r13, r1);
        r0 = r0.equals(r1);
        r1 = 1;
        if (r0 == 0) goto L_0x0010;
    L_0x000f:
        return r1;
    L_0x0010:
        r0 = r12.mContext;
        r2 = "keyguard";
        r0 = r0.getSystemService(r2);
        r0 = (android.app.KeyguardManager) r0;
        r0 = r0.inKeyguardRestrictedInputMode();
        r2 = 0;
        if (r0 != 0) goto L_0x005c;
    L_0x0021:
        r0 = com.google.android.gms.common.util.zzq.zzse();
        if (r0 != 0) goto L_0x002c;
    L_0x0027:
        r3 = 10;
        android.os.SystemClock.sleep(r3);
    L_0x002c:
        r0 = android.os.Process.myPid();
        r3 = r12.mContext;
        r4 = "activity";
        r3 = r3.getSystemService(r4);
        r3 = (android.app.ActivityManager) r3;
        r3 = r3.getRunningAppProcesses();
        if (r3 == 0) goto L_0x005c;
    L_0x0040:
        r3 = r3.iterator();
    L_0x0044:
        r4 = r3.hasNext();
        if (r4 == 0) goto L_0x005c;
    L_0x004a:
        r4 = r3.next();
        r4 = (android.app.ActivityManager.RunningAppProcessInfo) r4;
        r5 = r4.pid;
        if (r5 != r0) goto L_0x0044;
    L_0x0054:
        r0 = r4.importance;
        r3 = 100;
        if (r0 != r3) goto L_0x005c;
    L_0x005a:
        r0 = 1;
        goto L_0x005d;
    L_0x005c:
        r0 = 0;
    L_0x005d:
        if (r0 == 0) goto L_0x0060;
    L_0x005f:
        return r2;
    L_0x0060:
        r0 = "gcm.n.title";
        r0 = r12.zzj(r13, r0);
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 == 0) goto L_0x007c;
    L_0x006c:
        r0 = r12.mContext;
        r0 = r0.getApplicationInfo();
        r3 = r12.mContext;
        r3 = r3.getPackageManager();
        r0 = r0.loadLabel(r3);
    L_0x007c:
        r4 = r0;
        r0 = "gcm.n.body";
        r5 = r12.zzj(r13, r0);
        r0 = "gcm.n.icon";
        r0 = zze(r13, r0);
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 != 0) goto L_0x00d9;
    L_0x008f:
        r3 = r12.mContext;
        r3 = r3.getResources();
        r6 = "drawable";
        r7 = r12.mContext;
        r7 = r7.getPackageName();
        r6 = r3.getIdentifier(r0, r6, r7);
        if (r6 == 0) goto L_0x00a4;
    L_0x00a3:
        goto L_0x00f3;
    L_0x00a4:
        r6 = "mipmap";
        r7 = r12.mContext;
        r7 = r7.getPackageName();
        r3 = r3.getIdentifier(r0, r6, r7);
        if (r3 == 0) goto L_0x00b4;
    L_0x00b2:
        r6 = r3;
        goto L_0x00f3;
    L_0x00b4:
        r3 = "FirebaseMessaging";
        r6 = java.lang.String.valueOf(r0);
        r6 = r6.length();
        r6 = r6 + 61;
        r7 = new java.lang.StringBuilder;
        r7.<init>(r6);
        r6 = "Icon resource ";
        r7.append(r6);
        r7.append(r0);
        r0 = " not found. Notification will use default icon.";
        r7.append(r0);
        r0 = r7.toString();
        android.util.Log.w(r3, r0);
    L_0x00d9:
        r0 = r12.zzKb();
        r3 = "com.google.firebase.messaging.default_notification_icon";
        r0 = r0.getInt(r3, r2);
        if (r0 != 0) goto L_0x00ed;
    L_0x00e5:
        r0 = r12.mContext;
        r0 = r0.getApplicationInfo();
        r0 = r0.icon;
    L_0x00ed:
        if (r0 != 0) goto L_0x00f2;
    L_0x00ef:
        r0 = 17301651; // 0x1080093 float:2.4979667E-38 double:8.5481514E-317;
    L_0x00f2:
        r6 = r0;
    L_0x00f3:
        r0 = "gcm.n.color";
        r0 = zze(r13, r0);
        r7 = r12.zzhr(r0);
        r0 = zzI(r13);
        r3 = android.text.TextUtils.isEmpty(r0);
        r8 = 0;
        if (r3 == 0) goto L_0x010a;
    L_0x0108:
        r0 = r8;
        goto L_0x0173;
    L_0x010a:
        r3 = "default";
        r3 = r3.equals(r0);
        if (r3 != 0) goto L_0x016e;
    L_0x0112:
        r3 = r12.mContext;
        r3 = r3.getResources();
        r9 = "raw";
        r10 = r12.mContext;
        r10 = r10.getPackageName();
        r3 = r3.getIdentifier(r0, r9, r10);
        if (r3 == 0) goto L_0x016e;
    L_0x0126:
        r3 = "android.resource://";
        r3 = java.lang.String.valueOf(r3);
        r9 = r12.mContext;
        r9 = r9.getPackageName();
        r9 = java.lang.String.valueOf(r9);
        r10 = java.lang.String.valueOf(r3);
        r10 = r10.length();
        r10 = r10 + 5;
        r11 = java.lang.String.valueOf(r9);
        r11 = r11.length();
        r10 = r10 + r11;
        r11 = java.lang.String.valueOf(r0);
        r11 = r11.length();
        r10 = r10 + r11;
        r11 = new java.lang.StringBuilder;
        r11.<init>(r10);
        r11.append(r3);
        r11.append(r9);
        r3 = "/raw/";
        r11.append(r3);
        r11.append(r0);
        r0 = r11.toString();
        r0 = android.net.Uri.parse(r0);
        goto L_0x0173;
    L_0x016e:
        r0 = 2;
        r0 = android.media.RingtoneManager.getDefaultUri(r0);
    L_0x0173:
        r3 = r12.zzw(r13);
        r9 = com.google.firebase.messaging.FirebaseMessagingService.zzJ(r13);
        if (r9 == 0) goto L_0x01b0;
    L_0x017d:
        r8 = new android.content.Intent;
        r9 = "com.google.firebase.messaging.NOTIFICATION_OPEN";
        r8.<init>(r9);
        zza(r8, r13);
        r9 = "pending_intent";
        r8.putExtra(r9, r3);
        r3 = r12.mContext;
        r9 = r12.zzckV;
        r9 = r9.incrementAndGet();
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = com.google.firebase.iid.zzq.zzb(r3, r9, r8, r10);
        r8 = new android.content.Intent;
        r9 = "com.google.firebase.messaging.NOTIFICATION_DISMISS";
        r8.<init>(r9);
        zza(r8, r13);
        r9 = r12.mContext;
        r11 = r12.zzckV;
        r11 = r11.incrementAndGet();
        r8 = com.google.firebase.iid.zzq.zzb(r9, r11, r8, r10);
    L_0x01b0:
        r9 = r3;
        r10 = r8;
        r3 = com.google.android.gms.common.util.zzq.isAtLeastO();
        if (r3 == 0) goto L_0x01d5;
    L_0x01b8:
        r3 = r12.mContext;
        r3 = r3.getApplicationInfo();
        r3 = r3.targetSdkVersion;
        r8 = 25;
        if (r3 <= r8) goto L_0x01d5;
    L_0x01c4:
        r3 = "gcm.n.android_channel_id";
        r3 = zze(r13, r3);
        r11 = r12.zzhs(r3);
        r3 = r12;
        r8 = r0;
        r0 = r3.zza(r4, r5, r6, r7, r8, r9, r10, r11);
        goto L_0x021e;
    L_0x01d5:
        r3 = new android.support.v4.app.NotificationCompat$Builder;
        r8 = r12.mContext;
        r3.<init>(r8);
        r3 = r3.setAutoCancel(r1);
        r3 = r3.setSmallIcon(r6);
        r6 = android.text.TextUtils.isEmpty(r4);
        if (r6 != 0) goto L_0x01ed;
    L_0x01ea:
        r3.setContentTitle(r4);
    L_0x01ed:
        r4 = android.text.TextUtils.isEmpty(r5);
        if (r4 != 0) goto L_0x0202;
    L_0x01f3:
        r3.setContentText(r5);
        r4 = new android.support.v4.app.NotificationCompat$BigTextStyle;
        r4.<init>();
        r4 = r4.bigText(r5);
        r3.setStyle(r4);
    L_0x0202:
        if (r7 == 0) goto L_0x020b;
    L_0x0204:
        r4 = r7.intValue();
        r3.setColor(r4);
    L_0x020b:
        if (r0 == 0) goto L_0x0210;
    L_0x020d:
        r3.setSound(r0);
    L_0x0210:
        if (r9 == 0) goto L_0x0215;
    L_0x0212:
        r3.setContentIntent(r9);
    L_0x0215:
        if (r10 == 0) goto L_0x021a;
    L_0x0217:
        r3.setDeleteIntent(r10);
    L_0x021a:
        r0 = r3.build();
    L_0x021e:
        r3 = "gcm.n.tag";
        r13 = zze(r13, r3);
        r3 = "FirebaseMessaging";
        r4 = 3;
        r3 = android.util.Log.isLoggable(r3, r4);
        if (r3 == 0) goto L_0x0234;
    L_0x022d:
        r3 = "FirebaseMessaging";
        r4 = "Showing notification";
        android.util.Log.d(r3, r4);
    L_0x0234:
        r3 = r12.mContext;
        r4 = "notification";
        r3 = r3.getSystemService(r4);
        r3 = (android.app.NotificationManager) r3;
        r4 = android.text.TextUtils.isEmpty(r13);
        if (r4 == 0) goto L_0x025b;
    L_0x0244:
        r4 = android.os.SystemClock.uptimeMillis();
        r13 = 37;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r13);
        r13 = "FCM-Notification:";
        r6.append(r13);
        r6.append(r4);
        r13 = r6.toString();
    L_0x025b:
        r3.notify(r13, r2, r0);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zza.zzv(android.os.Bundle):boolean");
    }
}
