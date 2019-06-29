package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlertDialog.Builder;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.androidnetworking.common.ANConstants;
import com.bumptech.glide.load.Key;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.js.zzl;
import com.google.android.gms.ads.internal.zzax;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.util.zzn;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzagz {
    public static final Handler zzZr = new zzafs(Looper.getMainLooper());
    private static AtomicReference<List<String>> zzZs = new AtomicReference(null);
    private static AtomicReference<List<String>> zzZt = new AtomicReference(null);
    private final Object mLock = new Object();
    private String zzJP;
    private zzl zzLG;
    private boolean zzZu = true;
    private boolean zzZv = false;

    public static void runOnUiThread(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            zzZr.post(runnable);
        }
    }

    public static boolean zzD(Context context) {
        String str;
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            str = "Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.";
        } else {
            boolean z;
            String str2 = "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".";
            if ((resolveActivity.activityInfo.configChanges & 16) == 0) {
                zzajc.zzaT(String.format(str2, new Object[]{"keyboard"}));
                z = false;
            } else {
                z = true;
            }
            if ((resolveActivity.activityInfo.configChanges & 32) == 0) {
                zzajc.zzaT(String.format(str2, new Object[]{"keyboardHidden"}));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 128) == 0) {
                zzajc.zzaT(String.format(str2, new Object[]{"orientation"}));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 256) == 0) {
                zzajc.zzaT(String.format(str2, new Object[]{"screenLayout"}));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 512) == 0) {
                zzajc.zzaT(String.format(str2, new Object[]{"uiMode"}));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 1024) == 0) {
                zzajc.zzaT(String.format(str2, new Object[]{"screenSize"}));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 2048) != 0) {
                return z;
            }
            str = String.format(str2, new Object[]{"smallestScreenSize"});
        }
        zzajc.zzaT(str);
        return false;
    }

    protected static String zzF(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Exception unused) {
            return zzhN();
        }
    }

    public static Builder zzG(Context context) {
        return new Builder(context);
    }

    public static zzlz zzH(Context context) {
        return new zzlz(context);
    }

    private static String zzI(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return null;
            }
            List runningTasks = activityManager.getRunningTasks(1);
            if (!(runningTasks == null || runningTasks.isEmpty())) {
                RunningTaskInfo runningTaskInfo = (RunningTaskInfo) runningTasks.get(0);
                if (!(runningTaskInfo == null || runningTaskInfo.topActivity == null)) {
                    return runningTaskInfo.topActivity.getClassName();
                }
            }
            return null;
        } catch (Exception unused) {
        }
    }

    public static boolean zzJ(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode()) {
                        PowerManager powerManager = (PowerManager) context.getSystemService("power");
                        if (powerManager == null ? false : powerManager.isScreenOn()) {
                            return true;
                        }
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable unused) {
        }
    }

    public static Bitmap zzK(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        try {
            Bitmap zzo;
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFi)).booleanValue()) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    zzo = zzo(window.getDecorView().getRootView());
                }
                return null;
            }
            zzo = zzn(((Activity) context).getWindow().getDecorView());
            return zzo;
        } catch (RuntimeException e) {
            zzajc.zzb("Fail to capture screen shot", e);
        }
    }

    public static AudioManager zzL(Context context) {
        return (AudioManager) context.getSystemService("audio");
    }

    public static float zzM(Context context) {
        AudioManager zzL = zzL(context);
        if (zzL == null) {
            return 0.0f;
        }
        int streamMaxVolume = zzL.getStreamMaxVolume(3);
        return streamMaxVolume == 0 ? 0.0f : ((float) zzL.getStreamVolume(3)) / ((float) streamMaxVolume);
    }

    public static int zzN(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo == null ? 0 : applicationInfo.targetSdkVersion;
    }

    public static boolean zzO(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzajc.zzb("Error loading class.", th);
            zzbs.zzbD().zza(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static int zzP(Context context) {
        return DynamiteModule.zzF(context, ModuleDescriptor.MODULE_ID);
    }

    public static int zzQ(Context context) {
        return DynamiteModule.zzE(context, ModuleDescriptor.MODULE_ID);
    }

    public static Bundle zza(zzgz zzgz) {
        if (zzgz == null) {
            return null;
        }
        if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzCZ)).booleanValue()) {
            if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzDb)).booleanValue()) {
                return null;
            }
        }
        if (zzbs.zzbD().zzhn() && zzbs.zzbD().zzho()) {
            return null;
        }
        String zzcD;
        Object zzcE;
        String zzcF;
        if (zzgz.zzcQ()) {
            zzgz.wakeup();
        }
        zzgt zzcO = zzgz.zzcO();
        if (zzcO != null) {
            zzcD = zzcO.zzcD();
            zzcE = zzcO.zzcE();
            zzcF = zzcO.zzcF();
            if (zzcD != null) {
                zzbs.zzbD().zzaF(zzcD);
            }
            if (zzcF != null) {
                zzbs.zzbD().zzaG(zzcF);
            }
        } else {
            zzcD = zzbs.zzbD().zzhu();
            zzcF = zzbs.zzbD().zzhv();
            zzcE = null;
        }
        Bundle bundle = new Bundle(1);
        if (zzcF != null) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDb)).booleanValue() && !zzbs.zzbD().zzho()) {
                bundle.putString("v_fp_vertical", zzcF);
            }
        }
        if (zzcD != null) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzCZ)).booleanValue() && !zzbs.zzbD().zzhn()) {
                bundle.putString("fingerprint", zzcD);
                if (!zzcD.equals(zzcE)) {
                    bundle.putString("v_fp", zzcE);
                }
            }
        }
        return !bundle.isEmpty() ? bundle : null;
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public static String zza(Context context, View view, zziv zziv) {
        if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzDr)).booleanValue()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", zziv.width);
            jSONObject2.put("height", zziv.height);
            jSONObject.put("size", jSONObject2);
            jSONObject.put("activity", zzI(context));
            if (!zziv.zzAt) {
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    ViewParent parent = view.getParent();
                    if (parent != null) {
                        int i = -1;
                        if (parent instanceof ViewGroup) {
                            i = ((ViewGroup) parent).indexOfChild(view);
                        }
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("type", parent.getClass().getName());
                        jSONObject3.put("index_of_child", i);
                        jSONArray.put(jSONObject3);
                    }
                    view = (parent == null || !(parent instanceof View)) ? null : (View) parent;
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("parents", jSONArray);
                }
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            zzajc.zzc("Fail to get view hierarchy json", e);
            return null;
        }
    }

    private static String zza(Context context, zzcu zzcu, String str, View view) {
        if (zzcu == null) {
            return str;
        }
        try {
            Uri parse = Uri.parse(str);
            if (zzcu.zzd(parse)) {
                parse = zzcu.zza(parse, context, view);
            }
            return parse.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String zza(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder stringBuilder = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return stringBuilder.toString();
            }
            stringBuilder.append(cArr, 0, read);
        }
    }

    private final JSONArray zza(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object zza : collection) {
            zza(jSONArray, zza);
        }
        return jSONArray;
    }

    public static void zza(Activity activity, OnGlobalLayoutListener onGlobalLayoutListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void zza(Activity activity, OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
        }
    }

    @TargetApi(18)
    public static void zza(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGo)).booleanValue()) {
                zzc(context, intent);
            }
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String valueOf = String.valueOf(uri.toString());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 26);
            stringBuilder.append("Opening ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" in a new browser.");
            zzajc.zzaC(stringBuilder.toString());
        } catch (ActivityNotFoundException e) {
            zzajc.zzb("No browser is found.", e);
        }
    }

    public static void zza(Context context, String str, List<String> list) {
        for (String zzaiq : list) {
            new zzaiq(context, str, zzaiq).zzgp();
        }
    }

    public static void zza(List<String> list, String str) {
        for (String zzaiq : list) {
            new zzaiq(zzaiq, str).zzgp();
        }
    }

    private final void zza(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            obj = zzg((Bundle) obj);
        } else if (obj instanceof Map) {
            obj = zzj((Map) obj);
        } else if (obj instanceof Collection) {
            obj = zza((Collection) obj);
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            JSONArray jSONArray2 = new JSONArray();
            for (Object zza : objArr) {
                zza(jSONArray2, zza);
            }
            jSONArray.put(jSONArray2);
            return;
        } else {
            jSONArray.put(obj);
            return;
        }
        jSONArray.put(obj);
    }

    private final void zza(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            obj = zzg((Bundle) obj);
        } else if (obj instanceof Map) {
            obj = zzj((Map) obj);
        } else {
            Collection collection;
            if (obj instanceof Collection) {
                if (str == null) {
                    str = "null";
                }
                collection = (Collection) obj;
            } else if (obj instanceof Object[]) {
                collection = Arrays.asList((Object[]) obj);
            } else {
                jSONObject.put(str, obj);
                return;
            }
            obj = zza(collection);
        }
        jSONObject.put(str, obj);
    }

    @TargetApi(24)
    public static boolean zza(Activity activity, Configuration configuration) {
        zzji.zzds();
        int zzc = zzaiy.zzc(activity, configuration.screenHeightDp);
        int zzc2 = zzaiy.zzc(activity, configuration.screenWidthDp);
        DisplayMetrics zza = zza((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zza.heightPixels;
        int i2 = zza.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", SystemMediaRouteProvider.PACKAGE_NAME);
        identifier = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int round = ((int) Math.round(((double) activity.getResources().getDisplayMetrics().density) + 0.5d)) * ((Integer) zzbs.zzbL().zzd(zzmo.zzGy)).intValue();
        return zzb(i, zzc + identifier, round) && zzb(i2, zzc2, round);
    }

    public static boolean zza(ClassLoader classLoader, Class<?> cls, String str) {
        try {
            return cls.isAssignableFrom(Class.forName(str, false, classLoader));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String zzaI(String str) {
        return Uri.parse(str).buildUpon().query(null).build().toString();
    }

    public static int zzaJ(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            str = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 22);
            stringBuilder.append("Could not parse value:");
            stringBuilder.append(str);
            zzajc.zzaT(stringBuilder.toString());
            return 0;
        }
    }

    public static boolean zzaK(String str) {
        return TextUtils.isEmpty(str) ? false : str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static boolean zzaL(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (zzZs.get() == null) {
            try {
                JSONArray jSONArray = new JSONArray((String) zzbs.zzbL().zzd(zzmo.zzDw));
                ArrayList arrayList = new ArrayList(jSONArray.length());
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
                zzZs.compareAndSet(null, arrayList);
            } catch (JSONException unused) {
                zzajc.zzaT("Could not parse click ping schema");
                return false;
            }
        }
        for (String contains : (List) zzZs.get()) {
            if (str.contains(contains)) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzaM(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (zzZt.get() == null) {
            try {
                JSONArray jSONArray = new JSONArray((String) zzbs.zzbL().zzd(zzmo.zzDx));
                ArrayList arrayList = new ArrayList(jSONArray.length());
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
                zzZt.compareAndSet(null, arrayList);
            } catch (JSONException unused) {
                zzajc.zzaT("Could not parse impression ping schema");
                return false;
            }
        }
        for (String contains : (List) zzZt.get()) {
            if (str.contains(contains)) {
                return true;
            }
        }
        return false;
    }

    public static Uri zzb(String str, String str2, String str3) throws UnsupportedOperationException {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        indexOf++;
        StringBuilder stringBuilder = new StringBuilder(str.substring(0, indexOf));
        stringBuilder.append(str2);
        stringBuilder.append("=");
        stringBuilder.append(str3);
        stringBuilder.append("&");
        stringBuilder.append(str.substring(indexOf));
        return Uri.parse(stringBuilder.toString());
    }

    public static String zzb(zzaka zzaka, String str) {
        return zza(zzaka.getContext(), zzaka.zziy(), str, zzaka.getView());
    }

    public static void zzb(Activity activity, OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
        }
    }

    public static void zzb(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        }
    }

    public static void zzb(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzagt.zza(runnable);
        }
    }

    private static boolean zzb(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    public static float zzbf() {
        zzbs.zzbT();
        zzax zzbe = zzax.zzbe();
        return (zzbe == null || !zzbe.zzbg()) ? 1.0f : zzbe.zzbf();
    }

    public static boolean zzbh() {
        zzbs.zzbT();
        zzax zzbe = zzax.zzbe();
        return zzbe != null ? zzbe.zzbh() : false;
    }

    @TargetApi(18)
    public static void zzc(Context context, Intent intent) {
        if (intent != null && zzq.zzsb()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static boolean zzc(Context context, String str, String str2) {
        return zzbha.zzaP(context).checkPermission(str2, str) == 0;
    }

    public static void zzd(Context context, String str, String str2) {
        List arrayList = new ArrayList();
        arrayList.add(str2);
        zza(context, str, arrayList);
    }

    public static void zze(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes(Key.STRING_CHARSET_NAME));
            openFileOutput.close();
        } catch (Exception e) {
            zzajc.zzb("Error writing to file in internal storage.", e);
        }
    }

    public static int[] zzf(Activity activity) {
        Window window = activity.getWindow();
        if (window == null || window.findViewById(16908290) == null) {
            return zzhR();
        }
        return new int[]{window.findViewById(16908290).getWidth(), window.findViewById(16908290).getHeight()};
    }

    public static Map<String, String> zzg(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : zzbs.zzbB().zzh(uri)) {
            hashMap.put(str, uri.getQueryParameter(str));
        }
        return hashMap;
    }

    private final JSONObject zzg(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zza(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    private static String zzhN() {
        StringBuffer stringBuffer = new StringBuffer(256);
        stringBuffer.append("Mozilla/5.0 (Linux; U; Android");
        if (VERSION.RELEASE != null) {
            stringBuffer.append(" ");
            stringBuffer.append(VERSION.RELEASE);
        }
        stringBuffer.append("; ");
        stringBuffer.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            stringBuffer.append("; ");
            stringBuffer.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                stringBuffer.append(" Build/");
                stringBuffer.append(Build.DISPLAY);
            }
        }
        stringBuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return stringBuffer.toString();
    }

    public static String zzhO() {
        return UUID.randomUUID().toString();
    }

    public static String zzhP() {
        UUID randomUUID = UUID.randomUUID();
        byte[] toByteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] toByteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, toByteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(toByteArray);
                instance.update(toByteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(instance.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return bigInteger;
    }

    public static String zzhQ() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(" ");
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    private static int[] zzhR() {
        return new int[]{0, 0};
    }

    public static Bundle zzhS() {
        Bundle bundle = new Bundle();
        try {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzCC)).booleanValue()) {
                MemoryInfo memoryInfo = new MemoryInfo();
                Debug.getMemoryInfo(memoryInfo);
                bundle.putParcelable("debug_memory_info", memoryInfo);
            }
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzCD)).booleanValue()) {
                Runtime runtime = Runtime.getRuntime();
                bundle.putLong("runtime_free_memory", runtime.freeMemory());
                bundle.putLong("runtime_max_memory", runtime.maxMemory());
                bundle.putLong("runtime_total_memory", runtime.totalMemory());
            }
            bundle.putInt("web_view_count", zzbs.zzbD().zzhJ());
            return bundle;
        } catch (Exception e) {
            zzajc.zzc("Unable to gather memory stats", e);
            return bundle;
        }
    }

    public static Bitmap zzl(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    public static Bitmap zzm(View view) {
        if (view == null) {
            return null;
        }
        Bitmap zzo = zzo(view);
        if (zzo == null) {
            zzo = zzn(view);
        }
        return zzo;
    }

    private static Bitmap zzn(@NonNull View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width != 0) {
                if (height != 0) {
                    Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Config.RGB_565);
                    Canvas canvas = new Canvas(createBitmap);
                    view.layout(0, 0, width, height);
                    view.draw(canvas);
                    return createBitmap;
                }
            }
            zzajc.zzaT("Width or height of view is zero");
            return null;
        } catch (RuntimeException e) {
            zzajc.zzb("Fail to capture the webview", e);
            return null;
        }
    }

    private static Bitmap zzo(@NonNull View view) {
        Bitmap bitmap = null;
        try {
            boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                bitmap = Bitmap.createBitmap(drawingCache);
            }
            view.setDrawingCacheEnabled(isDrawingCacheEnabled);
            return bitmap;
        } catch (RuntimeException e) {
            zzajc.zzb("Fail to capture the web view", e);
            return null;
        }
    }

    public static int zzp(@Nullable View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        return parent == null ? -1 : ((AdapterView) parent).getPositionForView(view);
    }

    public static String zzt(Context context, String str) {
        try {
            return new String(zzn.zza(context.openFileInput(str), true), Key.STRING_CHARSET_NAME);
        } catch (IOException unused) {
            zzajc.zzaC("Error reading from internal storage.");
            return "";
        }
    }

    public final boolean zzE(Context context) {
        if (this.zzZv) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzahd(this, null), intentFilter);
        this.zzZv = true;
        return true;
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        try {
            return zzg(bundle);
        } catch (JSONException e) {
            zzajc.zzb("Error converting Bundle to JSON", e);
            return null;
        }
    }

    public final void zza(Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        if (z) {
            zzbs.zzbz();
            bundle.putString("device", zzhQ());
            bundle.putString("eids", TextUtils.join(",", zzmo.zzdJ()));
        }
        zzji.zzds();
        zzaiy.zza(context, str, str2, bundle, z, new zzahc(this, context, str));
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(z);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty(ANConstants.USER_AGENT, zzs(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final void zza(Context context, List<String> list) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (!TextUtils.isEmpty(aeo.zzbU(activity))) {
                if (list == null) {
                    zzafr.v("Cannot ping urls: empty list.");
                } else if (zznl.zzi(context)) {
                    zznl zznl = new zznl();
                    zznl.zza(new zzaha(this, list, zznl, context));
                    zznl.zzd(activity);
                } else {
                    zzafr.v("Cannot ping url because custom tabs is not supported");
                }
            }
        }
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        KeyguardManager keyguardManager = null;
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return zza(view, powerManager, keyguardManager);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x003b  */
    /* JADX WARNING: Missing block: B:23:0x0052, code skipped:
            if (r7 != null) goto L_0x0057;
     */
    public final boolean zza(android.view.View r5, android.os.PowerManager r6, android.app.KeyguardManager r7) {
        /*
        r4 = this;
        r0 = com.google.android.gms.ads.internal.zzbs.zzbz();
        r0 = r0.zzZu;
        r1 = 1;
        r2 = 0;
        if (r0 != 0) goto L_0x0057;
    L_0x000a:
        if (r7 != 0) goto L_0x000e;
    L_0x000c:
        r7 = 0;
        goto L_0x0012;
    L_0x000e:
        r7 = r7.inKeyguardRestrictedInputMode();
    L_0x0012:
        if (r7 == 0) goto L_0x0057;
    L_0x0014:
        r7 = com.google.android.gms.internal.zzmo.zzEs;
        r0 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r7 = r0.zzd(r7);
        r7 = (java.lang.Boolean) r7;
        r7 = r7.booleanValue();
        if (r7 == 0) goto L_0x0055;
    L_0x0026:
        r7 = r5.getRootView();
        r0 = 0;
        if (r7 == 0) goto L_0x0038;
    L_0x002d:
        r7 = r7.getContext();
        r3 = r7 instanceof android.app.Activity;
        if (r3 == 0) goto L_0x0038;
    L_0x0035:
        r7 = (android.app.Activity) r7;
        goto L_0x0039;
    L_0x0038:
        r7 = r0;
    L_0x0039:
        if (r7 == 0) goto L_0x0051;
    L_0x003b:
        r7 = r7.getWindow();
        if (r7 != 0) goto L_0x0042;
    L_0x0041:
        goto L_0x0046;
    L_0x0042:
        r0 = r7.getAttributes();
    L_0x0046:
        if (r0 == 0) goto L_0x0051;
    L_0x0048:
        r7 = r0.flags;
        r0 = 524288; // 0x80000 float:7.34684E-40 double:2.590327E-318;
        r7 = r7 & r0;
        if (r7 == 0) goto L_0x0051;
    L_0x004f:
        r7 = 1;
        goto L_0x0052;
    L_0x0051:
        r7 = 0;
    L_0x0052:
        if (r7 == 0) goto L_0x0055;
    L_0x0054:
        goto L_0x0057;
    L_0x0055:
        r7 = 0;
        goto L_0x0058;
    L_0x0057:
        r7 = 1;
    L_0x0058:
        r0 = r5.getVisibility();
        if (r0 != 0) goto L_0x009d;
    L_0x005e:
        r0 = r5.isShown();
        if (r0 == 0) goto L_0x009d;
    L_0x0064:
        if (r6 == 0) goto L_0x006f;
    L_0x0066:
        r6 = r6.isScreenOn();
        if (r6 == 0) goto L_0x006d;
    L_0x006c:
        goto L_0x006f;
    L_0x006d:
        r6 = 0;
        goto L_0x0070;
    L_0x006f:
        r6 = 1;
    L_0x0070:
        if (r6 == 0) goto L_0x009d;
    L_0x0072:
        if (r7 == 0) goto L_0x009d;
    L_0x0074:
        r6 = com.google.android.gms.internal.zzmo.zzEq;
        r7 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r6 = r7.zzd(r6);
        r6 = (java.lang.Boolean) r6;
        r6 = r6.booleanValue();
        if (r6 == 0) goto L_0x009c;
    L_0x0086:
        r6 = new android.graphics.Rect;
        r6.<init>();
        r6 = r5.getLocalVisibleRect(r6);
        if (r6 != 0) goto L_0x009c;
    L_0x0091:
        r6 = new android.graphics.Rect;
        r6.<init>();
        r5 = r5.getGlobalVisibleRect(r6);
        if (r5 == 0) goto L_0x009d;
    L_0x009c:
        return r1;
    L_0x009d:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzagz.zza(android.view.View, android.os.PowerManager, android.app.KeyguardManager):boolean");
    }

    public final void zzb(Context context, String str, String str2, Bundle bundle, boolean z) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEv)).booleanValue()) {
            zza(context, str, str2, bundle, z);
        }
    }

    public final zzl zze(Context context, zzaje zzaje) {
        zzl zzl;
        synchronized (this.mLock) {
            if (this.zzLG == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.zzLG = new zzl(context, zzaje, (String) zzbs.zzbL().zzd(zzmo.zzBX));
            }
            zzl = this.zzLG;
        }
        return zzl;
    }

    public final int[] zzg(Activity activity) {
        int[] zzf = zzf(activity);
        r1 = new int[2];
        zzji.zzds();
        r1[0] = zzaiy.zzd(activity, zzf[0]);
        zzji.zzds();
        r1[1] = zzaiy.zzd(activity, zzf[1]);
        return r1;
    }

    public final int[] zzh(Activity activity) {
        Window window = activity.getWindow();
        int[] zzhR = (window == null || window.findViewById(16908290) == null) ? zzhR() : new int[]{window.findViewById(16908290).getTop(), window.findViewById(16908290).getBottom()};
        r0 = new int[2];
        zzji.zzds();
        r0[0] = zzaiy.zzd(activity, zzhR[0]);
        zzji.zzds();
        r0[1] = zzaiy.zzd(activity, zzhR[1]);
        return r0;
    }

    public final JSONObject zzj(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zza(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String str2 = "Could not convert map to JSON: ";
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0045 */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0025  */
    /* JADX WARNING: Missing exception handler attribute for start block: B:14:0x001d */
    /* JADX WARNING: Can't wrap try/catch for region: R(8:12|13|14|15|(2:17|(3:19|(6:22|23|24|40|38|20)|39)(1:31))|32|33|34) */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:25|26|(1:28)(1:29)|30|41) */
    /* JADX WARNING: Missing block: B:26:?, code skipped:
            r3.zzJP = zzhN();
            r4 = "Interrupted, use default user agent: ";
            r1 = java.lang.String.valueOf(r3.zzJP);
     */
    /* JADX WARNING: Missing block: B:27:0x0057, code skipped:
            if (r1.length() != 0) goto L_0x0059;
     */
    /* JADX WARNING: Missing block: B:28:0x0059, code skipped:
            r4 = r4.concat(r1);
     */
    /* JADX WARNING: Missing block: B:29:0x005e, code skipped:
            r4 = new java.lang.String(r4);
     */
    /* JADX WARNING: Missing block: B:30:0x0064, code skipped:
            com.google.android.gms.internal.zzajc.zzaT(r4);
     */
    public final java.lang.String zzs(android.content.Context r4, java.lang.String r5) {
        /*
        r3 = this;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zzJP;	 Catch:{ all -> 0x00a6 }
        if (r1 == 0) goto L_0x000b;
    L_0x0007:
        r4 = r3.zzJP;	 Catch:{ all -> 0x00a6 }
        monitor-exit(r0);	 Catch:{ all -> 0x00a6 }
        return r4;
    L_0x000b:
        if (r5 != 0) goto L_0x0013;
    L_0x000d:
        r4 = zzhN();	 Catch:{ all -> 0x00a6 }
        monitor-exit(r0);	 Catch:{ all -> 0x00a6 }
        return r4;
    L_0x0013:
        r1 = com.google.android.gms.ads.internal.zzbs.zzbB();	 Catch:{ Exception -> 0x001d }
        r1 = r1.getDefaultUserAgent(r4);	 Catch:{ Exception -> 0x001d }
        r3.zzJP = r1;	 Catch:{ Exception -> 0x001d }
    L_0x001d:
        r1 = r3.zzJP;	 Catch:{ all -> 0x00a6 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x00a6 }
        if (r1 == 0) goto L_0x006e;
    L_0x0025:
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ all -> 0x00a6 }
        r1 = com.google.android.gms.internal.zzaiy.zzil();	 Catch:{ all -> 0x00a6 }
        if (r1 != 0) goto L_0x0068;
    L_0x002e:
        r1 = 0;
        r3.zzJP = r1;	 Catch:{ all -> 0x00a6 }
        r1 = zzZr;	 Catch:{ all -> 0x00a6 }
        r2 = new com.google.android.gms.internal.zzahb;	 Catch:{ all -> 0x00a6 }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x00a6 }
        r1.post(r2);	 Catch:{ all -> 0x00a6 }
    L_0x003b:
        r4 = r3.zzJP;	 Catch:{ all -> 0x00a6 }
        if (r4 != 0) goto L_0x006e;
    L_0x003f:
        r4 = r3.mLock;	 Catch:{ InterruptedException -> 0x0045 }
        r4.wait();	 Catch:{ InterruptedException -> 0x0045 }
        goto L_0x003b;
    L_0x0045:
        r4 = zzhN();	 Catch:{ all -> 0x00a6 }
        r3.zzJP = r4;	 Catch:{ all -> 0x00a6 }
        r4 = "Interrupted, use default user agent: ";
        r1 = r3.zzJP;	 Catch:{ all -> 0x00a6 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00a6 }
        r2 = r1.length();	 Catch:{ all -> 0x00a6 }
        if (r2 == 0) goto L_0x005e;
    L_0x0059:
        r4 = r4.concat(r1);	 Catch:{ all -> 0x00a6 }
        goto L_0x0064;
    L_0x005e:
        r1 = new java.lang.String;	 Catch:{ all -> 0x00a6 }
        r1.<init>(r4);	 Catch:{ all -> 0x00a6 }
        r4 = r1;
    L_0x0064:
        com.google.android.gms.internal.zzajc.zzaT(r4);	 Catch:{ all -> 0x00a6 }
        goto L_0x003b;
    L_0x0068:
        r4 = zzF(r4);	 Catch:{ all -> 0x00a6 }
        r3.zzJP = r4;	 Catch:{ all -> 0x00a6 }
    L_0x006e:
        r4 = r3.zzJP;	 Catch:{ all -> 0x00a6 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x00a6 }
        r1 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x00a6 }
        r1 = r1.length();	 Catch:{ all -> 0x00a6 }
        r1 = r1 + 11;
        r2 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x00a6 }
        r2 = r2.length();	 Catch:{ all -> 0x00a6 }
        r1 = r1 + r2;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a6 }
        r2.<init>(r1);	 Catch:{ all -> 0x00a6 }
        r2.append(r4);	 Catch:{ all -> 0x00a6 }
        r4 = " (Mobile; ";
        r2.append(r4);	 Catch:{ all -> 0x00a6 }
        r2.append(r5);	 Catch:{ all -> 0x00a6 }
        r4 = ")";
        r2.append(r4);	 Catch:{ all -> 0x00a6 }
        r4 = r2.toString();	 Catch:{ all -> 0x00a6 }
        r3.zzJP = r4;	 Catch:{ all -> 0x00a6 }
        r4 = r3.zzJP;	 Catch:{ all -> 0x00a6 }
        monitor-exit(r0);	 Catch:{ all -> 0x00a6 }
        return r4;
    L_0x00a6:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00a6 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzagz.zzs(android.content.Context, java.lang.String):java.lang.String");
    }
}
