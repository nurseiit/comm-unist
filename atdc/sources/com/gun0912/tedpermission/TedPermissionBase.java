package com.gun0912.tedpermission;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import java.util.ArrayList;

public abstract class TedPermissionBase {
    private static final String PREFS_IS_FIRST_REQUEST = "IS_FIRST_REQUEST";
    private static final String PREFS_NAME_PERMISSION = "PREFS_NAME_PERMISSION";
    public static final int REQ_CODE_REQUEST_SETTING = 2000;

    public static boolean isGranted(Context context, @NonNull String... strArr) {
        for (String isDenied : strArr) {
            if (isDenied(context, isDenied)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isDenied(Context context, @NonNull String str) {
        return isGranted(context, str) ^ 1;
    }

    private static boolean isGranted(Context context, @NonNull String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }

    public static ArrayList<String> getDeniedPermissions(Context context, @NonNull String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (isDenied(context, str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static boolean canRequestPermission(Activity activity, @NonNull String... strArr) {
        if (isFirstRequest((Context) activity, strArr)) {
            return true;
        }
        for (String str : strArr) {
            boolean shouldShowRequestPermissionRationale = ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
            if (isDenied(activity, str) && !shouldShowRequestPermissionRationale) {
                return false;
            }
        }
        return true;
    }

    private static boolean isFirstRequest(Context context, @NonNull String[] strArr) {
        for (String isFirstRequest : strArr) {
            if (!isFirstRequest(context, isFirstRequest)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isFirstRequest(Context context, String str) {
        return getSharedPreferences(context).getBoolean(getPrefsNamePermission(str), true);
    }

    private static String getPrefsNamePermission(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("IS_FIRST_REQUEST_");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    private static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(PREFS_NAME_PERMISSION, 0);
    }

    public static void startSettingActivityForResult(Activity activity) {
        startSettingActivityForResult(activity, 2000);
    }

    public static void startSettingActivityForResult(Activity activity, int i) {
        activity.startActivityForResult(getSettingIntent(activity), i);
    }

    private static Intent getSettingIntent(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("package:");
        stringBuilder.append(context.getPackageName());
        return intent.setData(Uri.parse(stringBuilder.toString()));
    }

    public static void startSettingActivityForResult(Fragment fragment) {
        startSettingActivityForResult(fragment, 2000);
    }

    public static void startSettingActivityForResult(Fragment fragment, int i) {
        fragment.startActivityForResult(getSettingIntent(fragment.getActivity()), i);
    }

    static void setFirstRequest(Context context, @NonNull String[] strArr) {
        for (String firstRequest : strArr) {
            setFirstRequest(context, firstRequest);
        }
    }

    private static void setFirstRequest(Context context, String str) {
        getSharedPreferences(context).edit().putBoolean(getPrefsNamePermission(str), false).apply();
    }
}
