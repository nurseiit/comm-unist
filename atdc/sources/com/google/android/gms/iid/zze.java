package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.google.android.gms.common.util.zzq;
import com.lotecs.attendcheck.common.GCMManager;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public final class zze {
    private static String zzbgZ = null;
    private static boolean zzbha = false;
    private static int zzbhb;
    private static int zzbhc;
    private static int zzbhd;
    private static BroadcastReceiver zzbhe;
    private PendingIntent zzbfP;
    private Messenger zzbfT;
    private Map<String, Object> zzbhf = new HashMap();
    private Messenger zzbhg;
    private MessengerCompat zzbhh;
    private long zzbhi;
    private long zzbhj;
    private int zzbhk;
    private int zzbhl;
    private long zzbhm;
    private Context zzqD;

    public zze(Context context) {
        this.zzqD = context;
    }

    private final void zzB(Object obj) {
        synchronized (getClass()) {
            for (String str : this.zzbhf.keySet()) {
                Object obj2 = this.zzbhf.get(str);
                this.zzbhf.put(str, obj);
                zze(obj2, obj);
            }
        }
    }

    private static String zza(KeyPair keyPair, String... strArr) {
        Throwable e;
        String str;
        String str2;
        try {
            byte[] bytes = TextUtils.join("\n", strArr).getBytes(Key.STRING_CHARSET_NAME);
            try {
                PrivateKey privateKey = keyPair.getPrivate();
                Signature instance = Signature.getInstance(privateKey instanceof RSAPrivateKey ? "SHA256withRSA" : "SHA256withECDSA");
                instance.initSign(privateKey);
                instance.update(bytes);
                return InstanceID.zzj(instance.sign());
            } catch (GeneralSecurityException e2) {
                e = e2;
                str = "InstanceID/Rpc";
                str2 = "Unable to sign registration request";
                Log.e(str, str2, e);
                return null;
            }
        } catch (UnsupportedEncodingException e3) {
            e = e3;
            str = "InstanceID/Rpc";
            str2 = "Unable to encode string";
            Log.e(str, str2, e);
            return null;
        }
    }

    private static boolean zza(PackageManager packageManager) {
        for (ResolveInfo resolveInfo : packageManager.queryBroadcastReceivers(new Intent("com.google.iid.TOKEN_REQUEST"), 0)) {
            if (zza(packageManager, resolveInfo.activityInfo.packageName, "com.google.iid.TOKEN_REQUEST")) {
                zzbha = true;
                return true;
            }
        }
        return false;
    }

    private static boolean zza(PackageManager packageManager, String str, String str2) {
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", str) == 0) {
            return zzb(packageManager, str);
        }
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 56) + String.valueOf(str2).length());
        stringBuilder.append("Possible malicious package ");
        stringBuilder.append(str);
        stringBuilder.append(" declares ");
        stringBuilder.append(str2);
        stringBuilder.append(" without permission");
        Log.w("InstanceID/Rpc", stringBuilder.toString());
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:63:0x022f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x022f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x022f A:{SYNTHETIC} */
    private final android.content.Intent zzb(android.os.Bundle r10, java.security.KeyPair r11) throws java.io.IOException {
        /*
        r9 = this;
        r0 = new android.os.ConditionVariable;
        r0.<init>();
        r1 = zzvO();
        r2 = r9.getClass();
        monitor-enter(r2);
        r3 = r9.zzbhf;	 Catch:{ all -> 0x0278 }
        r3.put(r1, r0);	 Catch:{ all -> 0x0278 }
        monitor-exit(r2);	 Catch:{ all -> 0x0278 }
        r2 = android.os.SystemClock.elapsedRealtime();
        r4 = r9.zzbhm;
        r6 = 0;
        r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r8 == 0) goto L_0x0054;
    L_0x0020:
        r4 = r9.zzbhm;
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r6 > 0) goto L_0x0054;
    L_0x0026:
        r10 = "InstanceID/Rpc";
        r0 = r9.zzbhm;
        r4 = r0 - r2;
        r11 = r9.zzbhl;
        r0 = 78;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Backoff mode, next request attempt: ";
        r1.append(r0);
        r1.append(r4);
        r0 = " interval: ";
        r1.append(r0);
        r1.append(r11);
        r11 = r1.toString();
        android.util.Log.w(r10, r11);
        r10 = new java.io.IOException;
        r11 = "RETRY_LATER";
        r10.<init>(r11);
        throw r10;
    L_0x0054:
        r9.zzvN();
        r2 = zzbgZ;
        if (r2 != 0) goto L_0x0063;
    L_0x005b:
        r10 = new java.io.IOException;
        r11 = "MISSING_INSTANCEID_SERVICE";
        r10.<init>(r11);
        throw r10;
    L_0x0063:
        r2 = android.os.SystemClock.elapsedRealtime();
        r9.zzbhi = r2;
        r2 = new android.content.Intent;
        r3 = zzbha;
        if (r3 == 0) goto L_0x0072;
    L_0x006f:
        r3 = "com.google.iid.TOKEN_REQUEST";
        goto L_0x0074;
    L_0x0072:
        r3 = "com.google.android.c2dm.intent.REGISTER";
    L_0x0074:
        r2.<init>(r3);
        r3 = zzbgZ;
        r2.setPackage(r3);
        r3 = r9.zzqD;
        r3 = zzbe(r3);
        r4 = "gmsv";
        r3 = java.lang.Integer.toString(r3);
        r10.putString(r4, r3);
        r3 = "osv";
        r4 = android.os.Build.VERSION.SDK_INT;
        r4 = java.lang.Integer.toString(r4);
        r10.putString(r3, r4);
        r3 = "app_ver";
        r4 = r9.zzqD;
        r4 = com.google.android.gms.iid.InstanceID.zzba(r4);
        r4 = java.lang.Integer.toString(r4);
        r10.putString(r3, r4);
        r3 = "app_ver_name";
        r4 = r9.zzqD;
        r4 = com.google.android.gms.iid.InstanceID.zzbb(r4);
        r10.putString(r3, r4);
        r3 = "cliv";
        r4 = "iid-11020000";
        r10.putString(r3, r4);
        r3 = "appid";
        r4 = com.google.android.gms.iid.InstanceID.zza(r11);
        r10.putString(r3, r4);
        r3 = r11.getPublic();
        r3 = r3.getEncoded();
        r3 = com.google.android.gms.iid.InstanceID.zzj(r3);
        r4 = "pub2";
        r10.putString(r4, r3);
        r4 = "sig";
        r5 = 2;
        r5 = new java.lang.String[r5];
        r6 = 0;
        r7 = r9.zzqD;
        r7 = r7.getPackageName();
        r5[r6] = r7;
        r6 = 1;
        r5[r6] = r3;
        r11 = zza(r11, r5);
        r10.putString(r4, r11);
        r2.putExtras(r10);
        r9.zzg(r2);
        r10 = android.os.SystemClock.elapsedRealtime();
        r9.zzbhi = r10;
        r10 = "kid";
        r11 = java.lang.String.valueOf(r1);
        r11 = r11.length();
        r11 = r11 + 5;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r11);
        r11 = "|ID|";
        r3.append(r11);
        r3.append(r1);
        r11 = "|";
        r3.append(r11);
        r11 = r3.toString();
        r2.putExtra(r10, r11);
        r10 = "X-kid";
        r11 = java.lang.String.valueOf(r1);
        r11 = r11.length();
        r11 = r11 + 5;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r11);
        r11 = "|ID|";
        r3.append(r11);
        r3.append(r1);
        r11 = "|";
        r3.append(r11);
        r11 = r3.toString();
        r2.putExtra(r10, r11);
        r10 = "com.google.android.gsf";
        r11 = zzbgZ;
        r10 = r10.equals(r11);
        r11 = "useGsf";
        r11 = r2.getStringExtra(r11);
        if (r11 == 0) goto L_0x0155;
    L_0x014f:
        r10 = "1";
        r10 = r10.equals(r11);
    L_0x0155:
        r11 = "InstanceID/Rpc";
        r3 = 3;
        r11 = android.util.Log.isLoggable(r11, r3);
        if (r11 == 0) goto L_0x0186;
    L_0x015e:
        r11 = "InstanceID/Rpc";
        r4 = r2.getExtras();
        r4 = java.lang.String.valueOf(r4);
        r5 = java.lang.String.valueOf(r4);
        r5 = r5.length();
        r5 = r5 + 8;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r5);
        r5 = "Sending ";
        r6.append(r5);
        r6.append(r4);
        r4 = r6.toString();
        android.util.Log.d(r11, r4);
    L_0x0186:
        r11 = r9.zzbhg;
        if (r11 == 0) goto L_0x01ad;
    L_0x018a:
        r11 = "google.messenger";
        r4 = r9.zzbfT;
        r2.putExtra(r11, r4);
        r11 = android.os.Message.obtain();
        r11.obj = r2;
        r4 = r9.zzbhg;	 Catch:{ RemoteException -> 0x019e }
        r4.send(r11);	 Catch:{ RemoteException -> 0x019e }
        goto L_0x0225;
    L_0x019e:
        r11 = "InstanceID/Rpc";
        r11 = android.util.Log.isLoggable(r11, r3);
        if (r11 == 0) goto L_0x01ad;
    L_0x01a6:
        r11 = "InstanceID/Rpc";
        r4 = "Messenger failed, fallback to startService";
        android.util.Log.d(r11, r4);
    L_0x01ad:
        if (r10 == 0) goto L_0x01e9;
    L_0x01af:
        monitor-enter(r9);
        r10 = zzbhe;	 Catch:{ all -> 0x01e6 }
        if (r10 != 0) goto L_0x01e4;
    L_0x01b4:
        r10 = new com.google.android.gms.iid.zzg;	 Catch:{ all -> 0x01e6 }
        r10.<init>(r9);	 Catch:{ all -> 0x01e6 }
        zzbhe = r10;	 Catch:{ all -> 0x01e6 }
        r10 = "InstanceID/Rpc";
        r10 = android.util.Log.isLoggable(r10, r3);	 Catch:{ all -> 0x01e6 }
        if (r10 == 0) goto L_0x01ca;
    L_0x01c3:
        r10 = "InstanceID/Rpc";
        r11 = "Registered GSF callback receiver";
        android.util.Log.d(r10, r11);	 Catch:{ all -> 0x01e6 }
    L_0x01ca:
        r10 = new android.content.IntentFilter;	 Catch:{ all -> 0x01e6 }
        r11 = "com.google.android.c2dm.intent.REGISTRATION";
        r10.<init>(r11);	 Catch:{ all -> 0x01e6 }
        r11 = r9.zzqD;	 Catch:{ all -> 0x01e6 }
        r11 = r11.getPackageName();	 Catch:{ all -> 0x01e6 }
        r10.addCategory(r11);	 Catch:{ all -> 0x01e6 }
        r11 = r9.zzqD;	 Catch:{ all -> 0x01e6 }
        r3 = zzbhe;	 Catch:{ all -> 0x01e6 }
        r4 = "com.google.android.c2dm.permission.SEND";
        r5 = 0;
        r11.registerReceiver(r3, r10, r4, r5);	 Catch:{ all -> 0x01e6 }
    L_0x01e4:
        monitor-exit(r9);	 Catch:{ all -> 0x01e6 }
        goto L_0x021a;
    L_0x01e6:
        r10 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x01e6 }
        throw r10;
    L_0x01e9:
        r10 = "google.messenger";
        r11 = r9.zzbfT;
        r2.putExtra(r10, r11);
        r10 = "messenger2";
        r11 = "1";
        r2.putExtra(r10, r11);
        r10 = r9.zzbhh;
        if (r10 == 0) goto L_0x0216;
    L_0x01fb:
        r10 = android.os.Message.obtain();
        r10.obj = r2;
        r11 = r9.zzbhh;	 Catch:{ RemoteException -> 0x0207 }
        r11.send(r10);	 Catch:{ RemoteException -> 0x0207 }
        goto L_0x0225;
    L_0x0207:
        r10 = "InstanceID/Rpc";
        r10 = android.util.Log.isLoggable(r10, r3);
        if (r10 == 0) goto L_0x0216;
    L_0x020f:
        r10 = "InstanceID/Rpc";
        r11 = "Messenger failed, fallback to startService";
        android.util.Log.d(r10, r11);
    L_0x0216:
        r10 = zzbha;
        if (r10 == 0) goto L_0x0220;
    L_0x021a:
        r10 = r9.zzqD;
        r10.sendBroadcast(r2);
        goto L_0x0225;
    L_0x0220:
        r10 = r9.zzqD;
        r10.startService(r2);
    L_0x0225:
        r10 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r0.block(r10);
        r10 = r9.getClass();
        monitor-enter(r10);
        r11 = r9.zzbhf;	 Catch:{ all -> 0x0275 }
        r11 = r11.remove(r1);	 Catch:{ all -> 0x0275 }
        r0 = r11 instanceof android.content.Intent;	 Catch:{ all -> 0x0275 }
        if (r0 == 0) goto L_0x023d;
    L_0x0239:
        r11 = (android.content.Intent) r11;	 Catch:{ all -> 0x0275 }
        monitor-exit(r10);	 Catch:{ all -> 0x0275 }
        return r11;
    L_0x023d:
        r0 = r11 instanceof java.lang.String;	 Catch:{ all -> 0x0275 }
        if (r0 == 0) goto L_0x0249;
    L_0x0241:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x0275 }
        r11 = (java.lang.String) r11;	 Catch:{ all -> 0x0275 }
        r0.<init>(r11);	 Catch:{ all -> 0x0275 }
        throw r0;	 Catch:{ all -> 0x0275 }
    L_0x0249:
        r0 = "InstanceID/Rpc";
        r11 = java.lang.String.valueOf(r11);	 Catch:{ all -> 0x0275 }
        r1 = java.lang.String.valueOf(r11);	 Catch:{ all -> 0x0275 }
        r1 = r1.length();	 Catch:{ all -> 0x0275 }
        r1 = r1 + 12;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0275 }
        r2.<init>(r1);	 Catch:{ all -> 0x0275 }
        r1 = "No response ";
        r2.append(r1);	 Catch:{ all -> 0x0275 }
        r2.append(r11);	 Catch:{ all -> 0x0275 }
        r11 = r2.toString();	 Catch:{ all -> 0x0275 }
        android.util.Log.w(r0, r11);	 Catch:{ all -> 0x0275 }
        r11 = new java.io.IOException;	 Catch:{ all -> 0x0275 }
        r0 = "TIMEOUT";
        r11.<init>(r0);	 Catch:{ all -> 0x0275 }
        throw r11;	 Catch:{ all -> 0x0275 }
    L_0x0275:
        r11 = move-exception;
        monitor-exit(r10);	 Catch:{ all -> 0x0275 }
        throw r11;
    L_0x0278:
        r10 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0278 }
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.iid.zze.zzb(android.os.Bundle, java.security.KeyPair):android.content.Intent");
    }

    private static boolean zzb(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            zzbgZ = applicationInfo.packageName;
            zzbhc = applicationInfo.uid;
            return true;
        } catch (NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean zzbc(Context context) {
        if (zzbgZ != null) {
            zzbd(context);
        }
        return zzbha;
    }

    public static String zzbd(Context context) {
        if (zzbgZ != null) {
            return zzbgZ;
        }
        zzbhb = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        if (!zzq.isAtLeastO()) {
            Object obj;
            for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0)) {
                if (zza(packageManager, resolveInfo.serviceInfo.packageName, "com.google.android.c2dm.intent.REGISTER")) {
                    zzbha = false;
                    obj = 1;
                    break;
                }
            }
            obj = null;
            if (obj != null) {
                return zzbgZ;
            }
        }
        if (zza(packageManager)) {
            return zzbgZ;
        }
        Log.w("InstanceID/Rpc", "Failed to resolve IID implementation package, falling back");
        if (zzb(packageManager, "com.google.android.gms")) {
            zzbha = zzq.isAtLeastO();
            return zzbgZ;
        } else if (zzq.zzse() || !zzb(packageManager, "com.google.android.gsf")) {
            Log.w("InstanceID/Rpc", "Google Play services is missing, unable to get tokens");
            return null;
        } else {
            zzbha = false;
            return zzbgZ;
        }
    }

    private static int zzbe(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(zzbd(context), 0).versionCode;
        } catch (NameNotFoundException unused) {
            return -1;
        }
    }

    private static void zze(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message obtain = Message.obtain();
            obtain.obj = obj2;
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 24);
                stringBuilder.append("Failed to send response ");
                stringBuilder.append(valueOf);
                Log.w("InstanceID/Rpc", stringBuilder.toString());
            }
        }
    }

    private final synchronized void zzg(Intent intent) {
        if (this.zzbfP == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.zzbfP = PendingIntent.getBroadcast(this.zzqD, 0, intent2, 0);
        }
        intent.putExtra("app", this.zzbfP);
    }

    static String zzh(Intent intent) throws IOException {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra(GCMManager.PROPERTY_REG_ID);
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        intent.getLongExtra("Retry-After", 0);
        if (stringExtra != null) {
            return stringExtra;
        }
        stringExtra = intent.getStringExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        if (stringExtra != null) {
            throw new IOException(stringExtra);
        }
        String valueOf = String.valueOf(intent.getExtras());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 29);
        stringBuilder.append("Unexpected response from GCM ");
        stringBuilder.append(valueOf);
        Log.w("InstanceID/Rpc", stringBuilder.toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    private final void zzi(String str, Object obj) {
        synchronized (getClass()) {
            Object obj2 = this.zzbhf.get(str);
            this.zzbhf.put(str, obj);
            zze(obj2, obj);
        }
    }

    private final void zzvN() {
        if (this.zzbfT == null) {
            zzbd(this.zzqD);
            this.zzbfT = new Messenger(new zzf(this, Looper.getMainLooper()));
        }
    }

    private static synchronized String zzvO() {
        String num;
        synchronized (zze.class) {
            int i = zzbhd;
            zzbhd = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    /* Access modifiers changed, original: final */
    public final Intent zza(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent zzb = zzb(bundle, keyPair);
        if (zzb == null || !zzb.hasExtra("google.messenger")) {
            return zzb;
        }
        zzb = zzb(bundle, keyPair);
        return (zzb == null || !zzb.hasExtra("google.messenger")) ? zzb : null;
    }

    public final void zzc(Message message) {
        if (message != null) {
            if (message.obj instanceof Intent) {
                Intent intent = (Intent) message.obj;
                intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof MessengerCompat) {
                        this.zzbhh = (MessengerCompat) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.zzbhg = (Messenger) parcelableExtra;
                    }
                }
                zzi((Intent) message.obj);
                return;
            }
            Log.w("InstanceID/Rpc", "Dropping invalid message");
        }
    }

    public final void zzi(Intent intent) {
        if (intent == null) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                Log.d("InstanceID/Rpc", "Unexpected response: null");
            }
            return;
        }
        String action = intent.getAction();
        String valueOf;
        String str;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(action) || "com.google.android.gms.iid.InstanceID".equals(action)) {
            action = intent.getStringExtra(GCMManager.PROPERTY_REG_ID);
            if (action == null) {
                action = intent.getStringExtra("unregistered");
            }
            String str2 = null;
            if (action == null) {
                Object stringExtra = intent.getStringExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
                StringBuilder stringBuilder;
                if (stringExtra == null) {
                    valueOf = String.valueOf(intent.getExtras());
                    stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 49);
                    stringBuilder.append("Unexpected response, no error or registration id ");
                    stringBuilder.append(valueOf);
                    Log.w("InstanceID/Rpc", stringBuilder.toString());
                    return;
                }
                String str3;
                String valueOf2;
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    String str4 = "InstanceID/Rpc";
                    str3 = "Received InstanceID error ";
                    valueOf2 = String.valueOf(stringExtra);
                    Log.d(str4, valueOf2.length() != 0 ? str3.concat(valueOf2) : new String(str3));
                }
                if (stringExtra.startsWith("|")) {
                    String[] split = stringExtra.split("\\|");
                    if (!"ID".equals(split[1])) {
                        str3 = "InstanceID/Rpc";
                        valueOf2 = "Unexpected structured response ";
                        action = String.valueOf(stringExtra);
                        Log.w(str3, action.length() != 0 ? valueOf2.concat(action) : new String(valueOf2));
                    }
                    if (split.length > 2) {
                        action = split[2];
                        str2 = split[3];
                        if (str2.startsWith(":")) {
                            str2 = str2.substring(1);
                        }
                        String str5 = str2;
                        str2 = action;
                        stringExtra = str5;
                    } else {
                        stringExtra = "UNKNOWN";
                    }
                    intent.putExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, stringExtra);
                }
                if (str2 == null) {
                    zzB(stringExtra);
                } else {
                    zzi(str2, stringExtra);
                }
                long longExtra = intent.getLongExtra("Retry-After", 0);
                int i;
                if (longExtra > 0) {
                    this.zzbhj = SystemClock.elapsedRealtime();
                    this.zzbhl = ((int) longExtra) * 1000;
                    this.zzbhm = SystemClock.elapsedRealtime() + ((long) this.zzbhl);
                    i = this.zzbhl;
                    stringBuilder = new StringBuilder(52);
                    stringBuilder.append("Explicit request from server to backoff: ");
                    stringBuilder.append(i);
                    Log.w("InstanceID/Rpc", stringBuilder.toString());
                    return;
                }
                if (("SERVICE_NOT_AVAILABLE".equals(stringExtra) || "AUTHENTICATION_FAILED".equals(stringExtra)) && "com.google.android.gsf".equals(zzbgZ)) {
                    this.zzbhk++;
                    if (this.zzbhk >= 3) {
                        if (this.zzbhk == 3) {
                            this.zzbhl = new Random().nextInt(1000) + 1000;
                        }
                        this.zzbhl <<= 1;
                        this.zzbhm = SystemClock.elapsedRealtime() + ((long) this.zzbhl);
                        i = this.zzbhl;
                        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(stringExtra).length() + 31);
                        stringBuilder2.append("Backoff due to ");
                        stringBuilder2.append(stringExtra);
                        stringBuilder2.append(" for ");
                        stringBuilder2.append(i);
                        Log.w("InstanceID/Rpc", stringBuilder2.toString());
                    }
                }
                return;
            }
            this.zzbhi = SystemClock.elapsedRealtime();
            this.zzbhm = 0;
            this.zzbhk = 0;
            this.zzbhl = 0;
            if (action.startsWith("|")) {
                String[] split2 = action.split("\\|");
                if (!"ID".equals(split2[1])) {
                    String str6 = "InstanceID/Rpc";
                    String str7 = "Unexpected structured response ";
                    action = String.valueOf(action);
                    Log.w(str6, action.length() != 0 ? str7.concat(action) : new String(str7));
                }
                action = split2[2];
                if (split2.length > 4) {
                    Context context;
                    if ("SYNC".equals(split2[3])) {
                        context = this.zzqD;
                        Intent intent2 = new Intent("com.google.android.gms.iid.InstanceID");
                        intent2.putExtra("CMD", "SYNC");
                        intent2.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
                        context.sendBroadcast(intent2);
                    } else if ("RST".equals(split2[3])) {
                        context = this.zzqD;
                        InstanceID.getInstance(this.zzqD);
                        InstanceIDListenerService.zza(context, InstanceID.zzvM());
                        intent.removeExtra(GCMManager.PROPERTY_REG_ID);
                        zzi(action, intent);
                        return;
                    }
                }
                str = split2[split2.length - 1];
                if (str.startsWith(":")) {
                    str = str.substring(1);
                }
                intent.putExtra(GCMManager.PROPERTY_REG_ID, str);
            } else {
                action = null;
            }
            if (action == null) {
                zzB(intent);
                return;
            } else {
                zzi(action, intent);
                return;
            }
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            str = "InstanceID/Rpc";
            action = "Unexpected response ";
            valueOf = String.valueOf(intent.getAction());
            Log.d(str, valueOf.length() != 0 ? action.concat(valueOf) : new String(action));
        }
    }
}
