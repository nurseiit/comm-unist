package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.List;

public final class zzrr {
    private final zzaka zzJH;

    public zzrr(zzaka zzaka) {
        this.zzJH = zzaka;
    }

    private static Intent zza(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        return intent2;
    }

    private static ResolveInfo zza(Context context, Intent intent) {
        return zza(context, intent, new ArrayList());
    }

    private static ResolveInfo zza(Context context, Intent intent, ArrayList<ResolveInfo> arrayList) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        List queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (!(queryIntentActivities == null || resolveActivity == null)) {
            for (int i = 0; i < queryIntentActivities.size(); i++) {
                ResolveInfo resolveInfo = (ResolveInfo) queryIntentActivities.get(i);
                if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo.activityInfo.name)) {
                    break;
                }
            }
        }
        resolveActivity = null;
        arrayList.addAll(queryIntentActivities);
        return resolveActivity;
    }

    private static Intent zzf(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00ba  */
    public final android.content.Intent zza(android.content.Context r11, java.util.Map<java.lang.String, java.lang.String> r12) {
        /*
        r10 = this;
        r0 = "activity";
        r0 = r11.getSystemService(r0);
        r0 = (android.app.ActivityManager) r0;
        r1 = "u";
        r1 = r12.get(r1);
        r1 = (java.lang.String) r1;
        r2 = android.text.TextUtils.isEmpty(r1);
        r3 = 0;
        if (r2 == 0) goto L_0x0018;
    L_0x0017:
        return r3;
    L_0x0018:
        r2 = r10.zzJH;
        if (r2 == 0) goto L_0x0025;
    L_0x001c:
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r2 = r10.zzJH;
        r1 = com.google.android.gms.internal.zzagz.zzb(r2, r1);
    L_0x0025:
        r1 = android.net.Uri.parse(r1);
        r2 = "use_first_package";
        r2 = r12.get(r2);
        r2 = (java.lang.String) r2;
        r2 = java.lang.Boolean.parseBoolean(r2);
        r4 = "use_running_process";
        r4 = r12.get(r4);
        r4 = (java.lang.String) r4;
        r4 = java.lang.Boolean.parseBoolean(r4);
        r5 = "use_custom_tabs";
        r12 = r12.get(r5);
        r12 = (java.lang.String) r12;
        r12 = java.lang.Boolean.parseBoolean(r12);
        r5 = 0;
        if (r12 != 0) goto L_0x0065;
    L_0x0050:
        r12 = com.google.android.gms.internal.zzmo.zzGp;
        r6 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r12 = r6.zzd(r12);
        r12 = (java.lang.Boolean) r12;
        r12 = r12.booleanValue();
        if (r12 == 0) goto L_0x0063;
    L_0x0062:
        goto L_0x0065;
    L_0x0063:
        r12 = 0;
        goto L_0x0066;
    L_0x0065:
        r12 = 1;
    L_0x0066:
        r6 = "http";
        r7 = r1.getScheme();
        r6 = r6.equalsIgnoreCase(r7);
        if (r6 == 0) goto L_0x0081;
    L_0x0072:
        r3 = r1.buildUpon();
        r6 = "https";
    L_0x0078:
        r3 = r3.scheme(r6);
        r3 = r3.build();
        goto L_0x0094;
    L_0x0081:
        r6 = "https";
        r7 = r1.getScheme();
        r6 = r6.equalsIgnoreCase(r7);
        if (r6 == 0) goto L_0x0094;
    L_0x008d:
        r3 = r1.buildUpon();
        r6 = "http";
        goto L_0x0078;
    L_0x0094:
        r6 = new java.util.ArrayList;
        r6.<init>();
        r1 = zzf(r1);
        r3 = zzf(r3);
        if (r12 == 0) goto L_0x00af;
    L_0x00a3:
        com.google.android.gms.ads.internal.zzbs.zzbz();
        com.google.android.gms.internal.zzagz.zzc(r11, r1);
        com.google.android.gms.ads.internal.zzbs.zzbz();
        com.google.android.gms.internal.zzagz.zzc(r11, r3);
    L_0x00af:
        r12 = zza(r11, r1, r6);
        if (r12 == 0) goto L_0x00ba;
    L_0x00b5:
        r11 = zza(r1, r12);
        return r11;
    L_0x00ba:
        if (r3 == 0) goto L_0x00cd;
    L_0x00bc:
        r12 = zza(r11, r3);
        if (r12 == 0) goto L_0x00cd;
    L_0x00c2:
        r12 = zza(r1, r12);
        r11 = zza(r11, r12);
        if (r11 == 0) goto L_0x00cd;
    L_0x00cc:
        return r12;
    L_0x00cd:
        r11 = r6.size();
        if (r11 != 0) goto L_0x00d4;
    L_0x00d3:
        return r1;
    L_0x00d4:
        if (r4 == 0) goto L_0x0111;
    L_0x00d6:
        if (r0 == 0) goto L_0x0111;
    L_0x00d8:
        r11 = r0.getRunningAppProcesses();
        if (r11 == 0) goto L_0x0111;
    L_0x00de:
        r12 = r6;
        r12 = (java.util.ArrayList) r12;
        r0 = r12.size();
        r3 = 0;
    L_0x00e6:
        if (r3 >= r0) goto L_0x0111;
    L_0x00e8:
        r4 = r12.get(r3);
        r3 = r3 + 1;
        r4 = (android.content.pm.ResolveInfo) r4;
        r7 = r11.iterator();
    L_0x00f4:
        r8 = r7.hasNext();
        if (r8 == 0) goto L_0x00e6;
    L_0x00fa:
        r8 = r7.next();
        r8 = (android.app.ActivityManager.RunningAppProcessInfo) r8;
        r8 = r8.processName;
        r9 = r4.activityInfo;
        r9 = r9.packageName;
        r8 = r8.equals(r9);
        if (r8 == 0) goto L_0x00f4;
    L_0x010c:
        r11 = zza(r1, r4);
        return r11;
    L_0x0111:
        if (r2 == 0) goto L_0x011e;
    L_0x0113:
        r11 = r6.get(r5);
        r11 = (android.content.pm.ResolveInfo) r11;
        r11 = zza(r1, r11);
        return r11;
    L_0x011e:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzrr.zza(android.content.Context, java.util.Map):android.content.Intent");
    }
}
