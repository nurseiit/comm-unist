package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.iid.MessengerCompat;
import com.lotecs.attendcheck.common.GCMManager;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.Random;

public final class zzl {
    private static PendingIntent zzbfP = null;
    private static String zzbgZ = null;
    private static boolean zzbha = false;
    private static int zzbhb;
    private static int zzbhc;
    private static int zzbhd;
    private static BroadcastReceiver zzbhe;
    private Messenger zzbfT;
    private Messenger zzbhg;
    private MessengerCompat zzbhh;
    private long zzbhi;
    private long zzbhj;
    private int zzbhk;
    private int zzbhl;
    private long zzbhm;
    private final SimpleArrayMap<String, zzp> zzckI = new SimpleArrayMap();
    private Context zzqD;

    public zzl(Context context) {
        this.zzqD = context;
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
                return FirebaseInstanceId.zzj(instance.sign());
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

    /* JADX WARNING: Missing block: B:20:0x004d, code skipped:
            return;
     */
    private final void zzah(java.lang.String r4, java.lang.String r5) {
        /*
        r3 = this;
        r0 = r3.zzckI;
        monitor-enter(r0);
        if (r4 != 0) goto L_0x0022;
    L_0x0005:
        r4 = 0;
    L_0x0006:
        r1 = r3.zzckI;	 Catch:{ all -> 0x004e }
        r1 = r1.size();	 Catch:{ all -> 0x004e }
        if (r4 >= r1) goto L_0x001c;
    L_0x000e:
        r1 = r3.zzckI;	 Catch:{ all -> 0x004e }
        r1 = r1.valueAt(r4);	 Catch:{ all -> 0x004e }
        r1 = (com.google.firebase.iid.zzp) r1;	 Catch:{ all -> 0x004e }
        r1.onError(r5);	 Catch:{ all -> 0x004e }
        r4 = r4 + 1;
        goto L_0x0006;
    L_0x001c:
        r4 = r3.zzckI;	 Catch:{ all -> 0x004e }
        r4.clear();	 Catch:{ all -> 0x004e }
        goto L_0x004c;
    L_0x0022:
        r1 = r3.zzckI;	 Catch:{ all -> 0x004e }
        r1 = r1.remove(r4);	 Catch:{ all -> 0x004e }
        r1 = (com.google.firebase.iid.zzp) r1;	 Catch:{ all -> 0x004e }
        if (r1 != 0) goto L_0x0049;
    L_0x002c:
        r5 = "InstanceID/Rpc";
        r1 = "Missing callback for ";
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x004e }
        r2 = r4.length();	 Catch:{ all -> 0x004e }
        if (r2 == 0) goto L_0x003f;
    L_0x003a:
        r4 = r1.concat(r4);	 Catch:{ all -> 0x004e }
        goto L_0x0044;
    L_0x003f:
        r4 = new java.lang.String;	 Catch:{ all -> 0x004e }
        r4.<init>(r1);	 Catch:{ all -> 0x004e }
    L_0x0044:
        android.util.Log.w(r5, r4);	 Catch:{ all -> 0x004e }
        monitor-exit(r0);	 Catch:{ all -> 0x004e }
        return;
    L_0x0049:
        r1.onError(r5);	 Catch:{ all -> 0x004e }
    L_0x004c:
        monitor-exit(r0);	 Catch:{ all -> 0x004e }
        return;
    L_0x004e:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x004e }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzl.zzah(java.lang.String, java.lang.String):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:58:0x0204 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0204 A:{SYNTHETIC} */
    private final android.content.Intent zzb(android.os.Bundle r11, java.security.KeyPair r12) throws java.io.IOException {
        /*
        r10 = this;
        r0 = zzvO();
        r1 = new com.google.firebase.iid.zzo;
        r2 = 0;
        r1.<init>(r2);
        r3 = r10.zzckI;
        monitor-enter(r3);
        r4 = r10.zzckI;	 Catch:{ all -> 0x021c }
        r4.put(r0, r1);	 Catch:{ all -> 0x021c }
        monitor-exit(r3);	 Catch:{ all -> 0x021c }
        r3 = android.os.SystemClock.elapsedRealtime();
        r5 = r10.zzbhm;
        r7 = 0;
        r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r9 == 0) goto L_0x0053;
    L_0x001f:
        r5 = r10.zzbhm;
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 > 0) goto L_0x0053;
    L_0x0025:
        r11 = "InstanceID/Rpc";
        r0 = r10.zzbhm;
        r5 = r0 - r3;
        r12 = r10.zzbhl;
        r0 = 78;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Backoff mode, next request attempt: ";
        r1.append(r0);
        r1.append(r5);
        r0 = " interval: ";
        r1.append(r0);
        r1.append(r12);
        r12 = r1.toString();
        android.util.Log.w(r11, r12);
        r11 = new java.io.IOException;
        r12 = "RETRY_LATER";
        r11.<init>(r12);
        throw r11;
    L_0x0053:
        r10.zzvN();
        r3 = zzbgZ;
        if (r3 != 0) goto L_0x0062;
    L_0x005a:
        r11 = new java.io.IOException;
        r12 = "MISSING_INSTANCEID_SERVICE";
        r11.<init>(r12);
        throw r11;
    L_0x0062:
        r3 = android.os.SystemClock.elapsedRealtime();
        r10.zzbhi = r3;
        r3 = new android.content.Intent;
        r4 = zzbha;
        if (r4 == 0) goto L_0x0071;
    L_0x006e:
        r4 = "com.google.iid.TOKEN_REQUEST";
        goto L_0x0073;
    L_0x0071:
        r4 = "com.google.android.c2dm.intent.REGISTER";
    L_0x0073:
        r3.<init>(r4);
        r4 = zzbgZ;
        r3.setPackage(r4);
        r4 = "gmsv";
        r5 = r10.zzqD;
        r6 = r10.zzqD;
        r6 = zzbd(r6);
        r5 = com.google.firebase.iid.FirebaseInstanceId.zzO(r5, r6);
        r5 = java.lang.Integer.toString(r5);
        r11.putString(r4, r5);
        r4 = "osv";
        r5 = android.os.Build.VERSION.SDK_INT;
        r5 = java.lang.Integer.toString(r5);
        r11.putString(r4, r5);
        r4 = "app_ver";
        r5 = r10.zzqD;
        r5 = com.google.firebase.iid.FirebaseInstanceId.zzbF(r5);
        r5 = java.lang.Integer.toString(r5);
        r11.putString(r4, r5);
        r4 = "app_ver_name";
        r5 = r10.zzqD;
        r5 = com.google.firebase.iid.FirebaseInstanceId.zzbb(r5);
        r11.putString(r4, r5);
        r4 = "cliv";
        r5 = "fiid-11020000";
        r11.putString(r4, r5);
        r4 = "appid";
        r5 = com.google.firebase.iid.FirebaseInstanceId.zza(r12);
        r11.putString(r4, r5);
        r4 = r12.getPublic();
        r4 = r4.getEncoded();
        r4 = com.google.firebase.iid.FirebaseInstanceId.zzj(r4);
        r5 = "pub2";
        r11.putString(r5, r4);
        r5 = "sig";
        r6 = 2;
        r6 = new java.lang.String[r6];
        r7 = 0;
        r8 = r10.zzqD;
        r8 = r8.getPackageName();
        r6[r7] = r8;
        r7 = 1;
        r6[r7] = r4;
        r12 = zza(r12, r6);
        r11.putString(r5, r12);
        r3.putExtras(r11);
        r11 = r10.zzqD;
        zzd(r11, r3);
        r11 = android.os.SystemClock.elapsedRealtime();
        r10.zzbhi = r11;
        r11 = "kid";
        r12 = java.lang.String.valueOf(r0);
        r12 = r12.length();
        r12 = r12 + 5;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r12);
        r12 = "|ID|";
        r4.append(r12);
        r4.append(r0);
        r12 = "|";
        r4.append(r12);
        r12 = r4.toString();
        r3.putExtra(r11, r12);
        r11 = "X-kid";
        r12 = java.lang.String.valueOf(r0);
        r12 = r12.length();
        r12 = r12 + 5;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r12);
        r12 = "|ID|";
        r4.append(r12);
        r4.append(r0);
        r12 = "|";
        r4.append(r12);
        r12 = r4.toString();
        r3.putExtra(r11, r12);
        r11 = "com.google.android.gsf";
        r12 = zzbgZ;
        r11 = r11.equals(r12);
        r12 = "InstanceID/Rpc";
        r4 = 3;
        r12 = android.util.Log.isLoggable(r12, r4);
        if (r12 == 0) goto L_0x017f;
    L_0x0157:
        r12 = "InstanceID/Rpc";
        r5 = r3.getExtras();
        r5 = java.lang.String.valueOf(r5);
        r6 = java.lang.String.valueOf(r5);
        r6 = r6.length();
        r6 = r6 + 8;
        r7 = new java.lang.StringBuilder;
        r7.<init>(r6);
        r6 = "Sending ";
        r7.append(r6);
        r7.append(r5);
        r5 = r7.toString();
        android.util.Log.d(r12, r5);
    L_0x017f:
        if (r11 == 0) goto L_0x01ba;
    L_0x0181:
        monitor-enter(r10);
        r11 = zzbhe;	 Catch:{ all -> 0x01b7 }
        if (r11 != 0) goto L_0x01b5;
    L_0x0186:
        r11 = new com.google.firebase.iid.zzn;	 Catch:{ all -> 0x01b7 }
        r11.<init>(r10);	 Catch:{ all -> 0x01b7 }
        zzbhe = r11;	 Catch:{ all -> 0x01b7 }
        r11 = "InstanceID/Rpc";
        r11 = android.util.Log.isLoggable(r11, r4);	 Catch:{ all -> 0x01b7 }
        if (r11 == 0) goto L_0x019c;
    L_0x0195:
        r11 = "InstanceID/Rpc";
        r12 = "Registered GSF callback receiver";
        android.util.Log.d(r11, r12);	 Catch:{ all -> 0x01b7 }
    L_0x019c:
        r11 = new android.content.IntentFilter;	 Catch:{ all -> 0x01b7 }
        r12 = "com.google.android.c2dm.intent.REGISTRATION";
        r11.<init>(r12);	 Catch:{ all -> 0x01b7 }
        r12 = r10.zzqD;	 Catch:{ all -> 0x01b7 }
        r12 = r12.getPackageName();	 Catch:{ all -> 0x01b7 }
        r11.addCategory(r12);	 Catch:{ all -> 0x01b7 }
        r12 = r10.zzqD;	 Catch:{ all -> 0x01b7 }
        r4 = zzbhe;	 Catch:{ all -> 0x01b7 }
        r5 = "com.google.android.c2dm.permission.SEND";
        r12.registerReceiver(r4, r11, r5, r2);	 Catch:{ all -> 0x01b7 }
    L_0x01b5:
        monitor-exit(r10);	 Catch:{ all -> 0x01b7 }
        goto L_0x01f8;
    L_0x01b7:
        r11 = move-exception;
        monitor-exit(r10);	 Catch:{ all -> 0x01b7 }
        throw r11;
    L_0x01ba:
        r11 = "google.messenger";
        r12 = r10.zzbfT;
        r3.putExtra(r11, r12);
        r11 = r10.zzbhg;
        if (r11 != 0) goto L_0x01c9;
    L_0x01c5:
        r11 = r10.zzbhh;
        if (r11 == 0) goto L_0x01ee;
    L_0x01c9:
        r11 = android.os.Message.obtain();
        r11.obj = r3;
        r12 = r10.zzbhg;	 Catch:{ RemoteException -> 0x01df }
        if (r12 == 0) goto L_0x01d9;
    L_0x01d3:
        r12 = r10.zzbhg;	 Catch:{ RemoteException -> 0x01df }
        r12.send(r11);	 Catch:{ RemoteException -> 0x01df }
        goto L_0x01fd;
    L_0x01d9:
        r12 = r10.zzbhh;	 Catch:{ RemoteException -> 0x01df }
        r12.send(r11);	 Catch:{ RemoteException -> 0x01df }
        goto L_0x01fd;
    L_0x01df:
        r11 = "InstanceID/Rpc";
        r11 = android.util.Log.isLoggable(r11, r4);
        if (r11 == 0) goto L_0x01ee;
    L_0x01e7:
        r11 = "InstanceID/Rpc";
        r12 = "Messenger failed, fallback to startService";
        android.util.Log.d(r11, r12);
    L_0x01ee:
        r11 = zzbha;
        if (r11 == 0) goto L_0x01f8;
    L_0x01f2:
        r11 = r10.zzqD;
        r11.sendBroadcast(r3);
        goto L_0x01fd;
    L_0x01f8:
        r11 = r10.zzqD;
        r11.startService(r3);
    L_0x01fd:
        r11 = r1.zzJW();	 Catch:{ all -> 0x020e }
        r12 = r10.zzckI;
        monitor-enter(r12);
        r1 = r10.zzckI;	 Catch:{ all -> 0x020b }
        r1.remove(r0);	 Catch:{ all -> 0x020b }
        monitor-exit(r12);	 Catch:{ all -> 0x020b }
        return r11;
    L_0x020b:
        r11 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x020b }
        throw r11;
    L_0x020e:
        r11 = move-exception;
        r12 = r10.zzckI;
        monitor-enter(r12);
        r1 = r10.zzckI;	 Catch:{ all -> 0x0219 }
        r1.remove(r0);	 Catch:{ all -> 0x0219 }
        monitor-exit(r12);	 Catch:{ all -> 0x0219 }
        throw r11;
    L_0x0219:
        r11 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x0219 }
        throw r11;
    L_0x021c:
        r11 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x021c }
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzl.zzb(android.os.Bundle, java.security.KeyPair):android.content.Intent");
    }

    private final void zzb(String str, Intent intent) {
        synchronized (this.zzckI) {
            zzp zzp = (zzp) this.zzckI.remove(str);
            if (zzp == null) {
                String str2 = "InstanceID/Rpc";
                String str3 = "Missing callback for ";
                str = String.valueOf(str);
                Log.w(str2, str.length() != 0 ? str3.concat(str) : new String(str3));
                return;
            }
            zzp.zzq(intent);
        }
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

    public static synchronized void zzd(Context context, Intent intent) {
        synchronized (zzl.class) {
            if (zzbfP == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                zzbfP = PendingIntent.getBroadcast(context, 0, intent2, 0);
            }
            intent.putExtra("app", zzbfP);
        }
    }

    private final void zzvN() {
        if (this.zzbfT == null) {
            zzbd(this.zzqD);
            this.zzbfT = new Messenger(new zzm(this, Looper.getMainLooper()));
        }
    }

    public static synchronized String zzvO() {
        String num;
        synchronized (zzl.class) {
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

    /* Access modifiers changed, original: final */
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

    /* Access modifiers changed, original: final */
    public final void zzi(Intent intent) {
        if (intent == null) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                Log.d("InstanceID/Rpc", "Unexpected response: null");
            }
            return;
        }
        String stringExtra;
        String valueOf;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            stringExtra = intent.getStringExtra(GCMManager.PROPERTY_REG_ID);
            if (stringExtra == null) {
                stringExtra = intent.getStringExtra("unregistered");
            }
            String str = null;
            String str2;
            if (stringExtra == null) {
                stringExtra = intent.getStringExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
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
                    str2 = "InstanceID/Rpc";
                    str3 = "Received InstanceID error ";
                    valueOf2 = String.valueOf(stringExtra);
                    Log.d(str2, valueOf2.length() != 0 ? str3.concat(valueOf2) : new String(str3));
                }
                if (stringExtra.startsWith("|")) {
                    String[] split = stringExtra.split("\\|");
                    if (!"ID".equals(split[1])) {
                        str3 = "InstanceID/Rpc";
                        valueOf2 = "Unexpected structured response ";
                        stringExtra = String.valueOf(stringExtra);
                        Log.w(str3, stringExtra.length() != 0 ? valueOf2.concat(stringExtra) : new String(valueOf2));
                    }
                    if (split.length > 2) {
                        stringExtra = split[2];
                        String str4 = split[3];
                        if (str4.startsWith(":")) {
                            str4 = str4.substring(1);
                        }
                        str = stringExtra;
                        stringExtra = str4;
                    } else {
                        stringExtra = "UNKNOWN";
                    }
                    intent.putExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, stringExtra);
                }
                zzah(str, stringExtra);
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
            if (stringExtra.startsWith("|")) {
                String[] split2 = stringExtra.split("\\|");
                if (!"ID".equals(split2[1])) {
                    String str5 = "InstanceID/Rpc";
                    str2 = "Unexpected structured response ";
                    stringExtra = String.valueOf(stringExtra);
                    Log.w(str5, stringExtra.length() != 0 ? str2.concat(stringExtra) : new String(str2));
                }
                stringExtra = split2[2];
                if (split2.length > 4) {
                    if ("SYNC".equals(split2[3])) {
                        FirebaseInstanceId.zzbG(this.zzqD);
                    } else if ("RST".equals(split2[3])) {
                        Context context = this.zzqD;
                        zzj.zzb(this.zzqD, null);
                        FirebaseInstanceId.zza(context, zzj.zzJT());
                        intent.removeExtra(GCMManager.PROPERTY_REG_ID);
                        zzb(stringExtra, intent);
                        return;
                    }
                }
                String str6 = split2[split2.length - 1];
                if (str6.startsWith(":")) {
                    str6 = str6.substring(1);
                }
                intent.putExtra(GCMManager.PROPERTY_REG_ID, str6);
            } else {
                stringExtra = null;
            }
            if (stringExtra == null) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Ignoring response without a request ID");
                }
                return;
            }
            zzb(stringExtra, intent);
            return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String str7 = "InstanceID/Rpc";
            stringExtra = "Unexpected response ";
            valueOf = String.valueOf(intent.getAction());
            Log.d(str7, valueOf.length() != 0 ? stringExtra.concat(valueOf) : new String(stringExtra));
        }
    }
}
