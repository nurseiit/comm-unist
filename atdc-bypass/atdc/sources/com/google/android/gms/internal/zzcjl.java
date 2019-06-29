package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement.Event;
import com.google.android.gms.measurement.AppMeasurement.UserProperty;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.security.auth.x500.X500Principal;

public final class zzcjl extends zzchj {
    private static String[] zzbuD = new String[]{"firebase_"};
    private SecureRandom zzbuE;
    private final AtomicLong zzbuF = new AtomicLong(0);
    private int zzbuG;

    zzcjl(zzcgl zzcgl) {
        super(zzcgl);
    }

    public static Bundle[] zzC(Object obj) {
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        Object[] copyOf;
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            copyOf = Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        } else if (!(obj instanceof ArrayList)) {
            return null;
        } else {
            ArrayList arrayList = (ArrayList) obj;
            copyOf = arrayList.toArray(new Bundle[arrayList.size()]);
        }
        return (Bundle[]) copyOf;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0037 A:{Catch:{ IOException | ClassNotFoundException -> 0x0040 }} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003c A:{Catch:{ IOException | ClassNotFoundException -> 0x0040 }} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0037 A:{Catch:{ IOException | ClassNotFoundException -> 0x0040 }} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003c A:{Catch:{ IOException | ClassNotFoundException -> 0x0040 }} */
    public static java.lang.Object zzD(java.lang.Object r4) {
        /*
        r0 = 0;
        if (r4 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ all -> 0x0032 }
        r1.<init>();	 Catch:{ all -> 0x0032 }
        r2 = new java.io.ObjectOutputStream;	 Catch:{ all -> 0x0032 }
        r2.<init>(r1);	 Catch:{ all -> 0x0032 }
        r2.writeObject(r4);	 Catch:{ all -> 0x002f }
        r2.flush();	 Catch:{ all -> 0x002f }
        r4 = new java.io.ObjectInputStream;	 Catch:{ all -> 0x002f }
        r3 = new java.io.ByteArrayInputStream;	 Catch:{ all -> 0x002f }
        r1 = r1.toByteArray();	 Catch:{ all -> 0x002f }
        r3.<init>(r1);	 Catch:{ all -> 0x002f }
        r4.<init>(r3);	 Catch:{ all -> 0x002f }
        r1 = r4.readObject();	 Catch:{ all -> 0x002d }
        r2.close();	 Catch:{ IOException | ClassNotFoundException -> 0x0040, IOException | ClassNotFoundException -> 0x0040 }
        r4.close();	 Catch:{ IOException | ClassNotFoundException -> 0x0040, IOException | ClassNotFoundException -> 0x0040 }
        return r1;
    L_0x002d:
        r1 = move-exception;
        goto L_0x0035;
    L_0x002f:
        r1 = move-exception;
        r4 = r0;
        goto L_0x0035;
    L_0x0032:
        r1 = move-exception;
        r4 = r0;
        r2 = r4;
    L_0x0035:
        if (r2 == 0) goto L_0x003a;
    L_0x0037:
        r2.close();	 Catch:{ IOException | ClassNotFoundException -> 0x0040, IOException | ClassNotFoundException -> 0x0040 }
    L_0x003a:
        if (r4 == 0) goto L_0x003f;
    L_0x003c:
        r4.close();	 Catch:{ IOException | ClassNotFoundException -> 0x0040, IOException | ClassNotFoundException -> 0x0040 }
    L_0x003f:
        throw r1;	 Catch:{ IOException | ClassNotFoundException -> 0x0040, IOException | ClassNotFoundException -> 0x0040 }
    L_0x0040:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcjl.zzD(java.lang.Object):java.lang.Object");
    }

    private final boolean zzJ(Context context, String str) {
        Object e;
        zzcfn zzyx;
        String str2;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = zzbha.zzaP(context).getPackageInfo(str, 64);
            if (!(packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0)) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfo.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
        } catch (CertificateException e2) {
            e = e2;
            zzyx = super.zzwF().zzyx();
            str2 = "Error obtaining certificate";
            zzyx.zzj(str2, e);
            return true;
        } catch (NameNotFoundException e3) {
            e = e3;
            zzyx = super.zzwF().zzyx();
            str2 = "Package name not found";
            zzyx.zzj(str2, e);
            return true;
        }
        return true;
    }

    private final boolean zzP(String str, String str2) {
        if (str2 == null) {
            super.zzwF().zzyx().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            super.zzwF().zzyx().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt)) {
                int length = str2.length();
                codePointAt = Character.charCount(codePointAt);
                while (codePointAt < length) {
                    int codePointAt2 = str2.codePointAt(codePointAt);
                    if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                        codePointAt += Character.charCount(codePointAt2);
                    } else {
                        super.zzwF().zzyx().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            super.zzwF().zzyx().zze("Name must start with a letter. Type, name", str, str2);
            return false;
        }
    }

    private final boolean zzQ(String str, String str2) {
        if (str2 == null) {
            super.zzwF().zzyx().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            super.zzwF().zzyx().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt) || codePointAt == 95) {
                int length = str2.length();
                codePointAt = Character.charCount(codePointAt);
                while (codePointAt < length) {
                    int codePointAt2 = str2.codePointAt(codePointAt);
                    if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                        codePointAt += Character.charCount(codePointAt2);
                    } else {
                        super.zzwF().zzyx().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            super.zzwF().zzyx().zze("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
    }

    public static boolean zzR(String str, String str2) {
        return (str == null && str2 == null) ? true : str == null ? false : str.equals(str2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    private final int zza(java.lang.String r9, java.lang.Object r10, boolean r11) {
        /*
        r8 = this;
        r0 = 0;
        if (r11 == 0) goto L_0x0038;
    L_0x0003:
        r1 = "param";
        com.google.android.gms.internal.zzcem.zzxm();
        r2 = r10 instanceof android.os.Parcelable[];
        r3 = 1;
        if (r2 == 0) goto L_0x0012;
    L_0x000d:
        r2 = r10;
        r2 = (android.os.Parcelable[]) r2;
        r2 = r2.length;
        goto L_0x001d;
    L_0x0012:
        r2 = r10 instanceof java.util.ArrayList;
        if (r2 == 0) goto L_0x0033;
    L_0x0016:
        r2 = r10;
        r2 = (java.util.ArrayList) r2;
        r2 = r2.size();
    L_0x001d:
        r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        if (r2 <= r4) goto L_0x0033;
    L_0x0021:
        r3 = super.zzwF();
        r3 = r3.zzyz();
        r4 = "Parameter array is too long; discarded. Value kind, name, array length";
        r2 = java.lang.Integer.valueOf(r2);
        r3.zzd(r4, r1, r9, r2);
        r3 = 0;
    L_0x0033:
        if (r3 != 0) goto L_0x0038;
    L_0x0035:
        r9 = 17;
        return r9;
    L_0x0038:
        r1 = zzex(r9);
        if (r1 == 0) goto L_0x004d;
    L_0x003e:
        r3 = "param";
        r5 = com.google.android.gms.internal.zzcem.zzxl();
        r2 = r8;
        r4 = r9;
        r6 = r10;
        r7 = r11;
        r9 = r2.zza(r3, r4, r5, r6, r7);
        goto L_0x005b;
    L_0x004d:
        r2 = "param";
        r4 = com.google.android.gms.internal.zzcem.zzxk();
        r1 = r8;
        r3 = r9;
        r5 = r10;
        r6 = r11;
        r9 = r1.zza(r2, r3, r4, r5, r6);
    L_0x005b:
        if (r9 == 0) goto L_0x005e;
    L_0x005d:
        return r0;
    L_0x005e:
        r9 = 4;
        return r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcjl.zza(java.lang.String, java.lang.Object, boolean):int");
    }

    private static Object zza(int i, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf((long) ((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf((long) ((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf((long) ((Short) obj).shortValue());
        }
        if (!(obj instanceof Boolean)) {
            return obj instanceof Float ? Double.valueOf(((Float) obj).doubleValue()) : ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) ? zza(String.valueOf(obj), i, z) : null;
        } else {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
        }
    }

    public static String zza(String str, int i, boolean z) {
        if (str.codePointCount(0, str.length()) > i) {
            if (z) {
                return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
            }
            str = null;
        }
        return str;
    }

    @Nullable
    public static String zza(String str, String[] strArr, String[] strArr2) {
        zzbo.zzu(strArr);
        zzbo.zzu(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            if (zzR(str, strArr[i])) {
                return strArr2[i];
            }
        }
        return null;
    }

    public static boolean zza(Context context, String str, boolean z) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            ActivityInfo receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, str), 2);
            if (receiverInfo != null && receiverInfo.enabled) {
                return true;
            }
            return false;
        } catch (NameNotFoundException unused) {
        }
    }

    private final boolean zza(String str, String str2, int i, Object obj, boolean z) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) > i) {
                super.zzwF().zzyz().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                return false;
            }
            return true;
        } else if ((obj instanceof Bundle) && z) {
            return true;
        } else {
            int length;
            Object obj2;
            if ((obj instanceof Parcelable[]) && z) {
                Parcelable[] parcelableArr = (Parcelable[]) obj;
                length = parcelableArr.length;
                i = 0;
                while (i < length) {
                    obj2 = parcelableArr[i];
                    if (obj2 instanceof Bundle) {
                        i++;
                    } else {
                        super.zzwF().zzyz().zze("All Parcelable[] elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                        return false;
                    }
                }
                return true;
            } else if (!(obj instanceof ArrayList) || !z) {
                return false;
            } else {
                ArrayList arrayList = (ArrayList) obj;
                length = arrayList.size();
                i = 0;
                while (i < length) {
                    obj2 = arrayList.get(i);
                    i++;
                    if (!(obj2 instanceof Bundle)) {
                        super.zzwF().zzyz().zze("All ArrayList elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                        return false;
                    }
                }
                return true;
            }
        }
    }

    private final boolean zza(String str, String[] strArr, String str2) {
        if (str2 == null) {
            super.zzwF().zzyx().zzj("Name is required and can't be null. Type", str);
            return false;
        }
        Object obj;
        zzbo.zzu(str2);
        for (String startsWith : zzbuD) {
            if (str2.startsWith(startsWith)) {
                obj = 1;
                break;
            }
        }
        obj = null;
        if (obj != null) {
            super.zzwF().zzyx().zze("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        }
        if (strArr != null) {
            Object obj2;
            zzbo.zzu(strArr);
            for (String startsWith2 : strArr) {
                if (zzR(str2, startsWith2)) {
                    obj2 = 1;
                    break;
                }
            }
            obj2 = null;
            if (obj2 != null) {
                super.zzwF().zzyx().zze("Name is reserved. Type, name", str, str2);
                return false;
            }
        }
        return true;
    }

    public static boolean zza(long[] jArr, int i) {
        return i < (jArr.length << 6) && (jArr[i / 64] & (1 << (i % 64))) != 0;
    }

    static byte[] zza(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            byte[] marshall = obtain.marshall();
            return marshall;
        } finally {
            obtain.recycle();
        }
    }

    public static long[] zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    jArr[i] = jArr[i] | (1 << i2);
                }
            }
        }
        return jArr;
    }

    private static void zzb(Bundle bundle, Object obj) {
        zzbo.zzu(bundle);
        if (obj == null) {
            return;
        }
        if ((obj instanceof String) || (obj instanceof CharSequence)) {
            bundle.putLong("_el", (long) String.valueOf(obj).length());
        }
    }

    private final boolean zzb(String str, int i, String str2) {
        if (str2 == null) {
            super.zzwF().zzyx().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            super.zzwF().zzyx().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    static MessageDigest zzbE(String str) {
        int i = 0;
        while (i < 2) {
            try {
                MessageDigest instance = MessageDigest.getInstance(str);
                if (instance != null) {
                    return instance;
                }
                i++;
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    private static boolean zzd(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", (long) i);
        return true;
    }

    @WorkerThread
    static boolean zzd(zzcez zzcez, zzceh zzceh) {
        zzbo.zzu(zzcez);
        zzbo.zzu(zzceh);
        if (!TextUtils.isEmpty(zzceh.zzboQ)) {
            return true;
        }
        zzcem.zzxE();
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c A:{RETURN} */
    @android.support.annotation.WorkerThread
    static boolean zzeC(java.lang.String r4) {
        /*
        com.google.android.gms.common.internal.zzbo.zzcF(r4);
        r0 = r4.hashCode();
        r1 = 94660; // 0x171c4 float:1.32647E-40 double:4.67683E-319;
        r2 = 0;
        r3 = 1;
        if (r0 == r1) goto L_0x002d;
    L_0x000e:
        r1 = 95025; // 0x17331 float:1.33158E-40 double:4.69486E-319;
        if (r0 == r1) goto L_0x0023;
    L_0x0013:
        r1 = 95027; // 0x17333 float:1.33161E-40 double:4.69496E-319;
        if (r0 == r1) goto L_0x0019;
    L_0x0018:
        goto L_0x0037;
    L_0x0019:
        r0 = "_ui";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0037;
    L_0x0021:
        r4 = 1;
        goto L_0x0038;
    L_0x0023:
        r0 = "_ug";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0037;
    L_0x002b:
        r4 = 2;
        goto L_0x0038;
    L_0x002d:
        r0 = "_in";
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0037;
    L_0x0035:
        r4 = 0;
        goto L_0x0038;
    L_0x0037:
        r4 = -1;
    L_0x0038:
        switch(r4) {
            case 0: goto L_0x003c;
            case 1: goto L_0x003c;
            case 2: goto L_0x003c;
            default: goto L_0x003b;
        };
    L_0x003b:
        return r2;
    L_0x003c:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcjl.zzeC(java.lang.String):boolean");
    }

    static boolean zzeo(String str) {
        zzbo.zzcF(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    private final int zzet(String str) {
        return !zzP("event param", str) ? 3 : !zza("event param", null, str) ? 14 : !zzb("event param", zzcem.zzxj(), str) ? 3 : 0;
    }

    private final int zzeu(String str) {
        return !zzQ("event param", str) ? 3 : !zza("event param", null, str) ? 14 : !zzb("event param", zzcem.zzxj(), str) ? 3 : 0;
    }

    private static int zzew(String str) {
        return "_ldl".equals(str) ? zzcem.zzxo() : zzcem.zzxn();
    }

    public static boolean zzex(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    static boolean zzez(String str) {
        return str != null && str.matches("(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static boolean zzl(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    static long zzn(byte[] bArr) {
        zzbo.zzu(bArr);
        long j = null;
        zzbo.zzae(bArr.length > 0);
        long j2 = 0;
        int length = bArr.length - 1;
        while (length >= 0 && length >= bArr.length - 8) {
            j += 8;
            length--;
            j2 += (((long) bArr[length]) & 255) << j;
        }
        return j2;
    }

    public static boolean zzw(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 4);
            if (serviceInfo != null && serviceInfo.enabled) {
                return true;
            }
            return false;
        } catch (NameNotFoundException unused) {
        }
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* Access modifiers changed, original: final */
    public final Bundle zzB(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object zzk = zzk(str, bundle.get(str));
                if (zzk == null) {
                    super.zzwF().zzyz().zzj("Param value can't be null", super.zzwA().zzdX(str));
                } else {
                    zza(bundle2, str, zzk);
                }
            }
        }
        return bundle2;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final long zzI(Context context, String str) {
        super.zzjC();
        zzbo.zzu(context);
        zzbo.zzcF(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest zzbE = zzbE("MD5");
        if (zzbE == null) {
            super.zzwF().zzyx().log("Could not get MD5 instance");
            return -1;
        }
        if (packageManager != null) {
            try {
                if (!zzJ(context, str)) {
                    PackageInfo packageInfo = zzbha.zzaP(context).getPackageInfo(super.getContext().getPackageName(), 64);
                    if (packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                        return zzn(zzbE.digest(packageInfo.signatures[0].toByteArray()));
                    }
                    super.zzwF().zzyz().log("Could not get signatures");
                    return -1;
                }
            } catch (NameNotFoundException e) {
                super.zzwF().zzyx().zzj("Package name not found", e);
            }
        }
        return 0;
    }

    public final Bundle zza(String str, Bundle bundle, @Nullable List<String> list, boolean z, boolean z2) {
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        zzcem.zzxg();
        int i = 0;
        for (String str2 : bundle.keySet()) {
            int zzet;
            if (list == null || !list.contains(str2)) {
                zzet = z ? zzet(str2) : 0;
                if (zzet == 0) {
                    zzet = zzeu(str2);
                }
            } else {
                zzet = 0;
            }
            if (zzet == 0) {
                zzet = zza(str2, bundle.get(str2), z2);
                if (zzet == 0 || "_ev".equals(str2)) {
                    if (zzeo(str2)) {
                        i++;
                        if (i > 25) {
                            StringBuilder stringBuilder = new StringBuilder(48);
                            stringBuilder.append("Event can't contain more then 25 params");
                            super.zzwF().zzyx().zze(stringBuilder.toString(), super.zzwA().zzdW(str), super.zzwA().zzA(bundle));
                            zzd(bundle2, 5);
                        }
                    }
                } else if (zzd(bundle2, zzet)) {
                    bundle2.putString("_ev", zza(str2, zzcem.zzxj(), true));
                    zzb(bundle2, bundle.get(str2));
                }
            } else if (zzd(bundle2, zzet)) {
                bundle2.putString("_ev", zza(str2, zzcem.zzxj(), true));
                if (zzet == 3) {
                    zzb(bundle2, (Object) str2);
                }
            }
            bundle2.remove(str2);
        }
        return bundle2;
    }

    /* Access modifiers changed, original: final */
    public final zzcez zza(String str, Bundle bundle, String str2, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (zzeq(str) != 0) {
            super.zzwF().zzyx().zzj("Invalid conditional property event name", super.zzwA().zzdY(str));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        String str3 = str;
        return new zzcez(str3, new zzcew(zzB(zza(str3, bundle2, Collections.singletonList("_o"), false, false))), str2, j);
    }

    public final void zza(int i, String str, String str2, int i2) {
        zza(null, i, str, str2, i2);
    }

    public final void zza(Bundle bundle, String str, Object obj) {
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else {
                if (str != null) {
                    super.zzwF().zzyA().zze("Not putting event parameter. Invalid value type. name, type", super.zzwA().zzdX(str), obj != null ? obj.getClass().getSimpleName() : null);
                }
            }
        }
    }

    public final void zza(zzcjx zzcjx, Object obj) {
        zzbo.zzu(obj);
        zzcjx.zzaIF = null;
        zzcjx.zzbvA = null;
        zzcjx.zzbuB = null;
        if (obj instanceof String) {
            zzcjx.zzaIF = (String) obj;
        } else if (obj instanceof Long) {
            zzcjx.zzbvA = (Long) obj;
        } else if (obj instanceof Double) {
            zzcjx.zzbuB = (Double) obj;
        } else {
            super.zzwF().zzyx().zzj("Ignoring invalid (type) event param value", obj);
        }
    }

    public final void zza(zzckb zzckb, Object obj) {
        zzbo.zzu(obj);
        zzckb.zzaIF = null;
        zzckb.zzbvA = null;
        zzckb.zzbuB = null;
        if (obj instanceof String) {
            zzckb.zzaIF = (String) obj;
        } else if (obj instanceof Long) {
            zzckb.zzbvA = (Long) obj;
        } else if (obj instanceof Double) {
            zzckb.zzbuB = (Double) obj;
        } else {
            super.zzwF().zzyx().zzj("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void zza(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        zzd(bundle, i);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", (long) i2);
        }
        zzcem.zzxE();
        this.zzboe.zzwt().zzd("auto", "_err", bundle);
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001c */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:10:?, code skipped:
            super.zzwF().zzyx().log("Failed to load parcelable from buffer");
     */
    /* JADX WARNING: Missing block: B:11:0x002c, code skipped:
            return null;
     */
    /* JADX WARNING: Missing block: B:12:0x002d, code skipped:
            r1.recycle();
     */
    public final <T extends android.os.Parcelable> T zzb(byte[] r5, android.os.Parcelable.Creator<T> r6) {
        /*
        r4 = this;
        r0 = 0;
        if (r5 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = android.os.Parcel.obtain();
        r2 = r5.length;	 Catch:{ zzc -> 0x001c }
        r3 = 0;
        r1.unmarshall(r5, r3, r2);	 Catch:{ zzc -> 0x001c }
        r1.setDataPosition(r3);	 Catch:{ zzc -> 0x001c }
        r5 = r6.createFromParcel(r1);	 Catch:{ zzc -> 0x001c }
        r5 = (android.os.Parcelable) r5;	 Catch:{ zzc -> 0x001c }
        r1.recycle();
        return r5;
    L_0x001a:
        r5 = move-exception;
        goto L_0x002d;
    L_0x001c:
        r5 = super.zzwF();	 Catch:{ all -> 0x001a }
        r5 = r5.zzyx();	 Catch:{ all -> 0x001a }
        r6 = "Failed to load parcelable from buffer";
        r5.log(r6);	 Catch:{ all -> 0x001a }
        r1.recycle();
        return r0;
    L_0x002d:
        r1.recycle();
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcjl.zzb(byte[], android.os.Parcelable$Creator):android.os.Parcelable");
    }

    public final byte[] zzb(zzcjy zzcjy) {
        try {
            byte[] bArr = new byte[zzcjy.zzLV()];
            adh zzc = adh.zzc(bArr, 0, bArr.length);
            zzcjy.zza(zzc);
            zzc.zzLM();
            return bArr;
        } catch (IOException e) {
            super.zzwF().zzyx().zzj("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    @WorkerThread
    public final boolean zzbv(String str) {
        super.zzjC();
        if (zzbha.zzaP(super.getContext()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        super.zzwF().zzyC().zzj("Permission not granted", str);
        return false;
    }

    /* Access modifiers changed, original: final */
    public final boolean zzeA(String str) {
        return "1".equals(super.zzwC().zzM(str, "measurement.upload.blacklist_internal"));
    }

    /* Access modifiers changed, original: final */
    public final boolean zzeB(String str) {
        return "1".equals(super.zzwC().zzM(str, "measurement.upload.blacklist_public"));
    }

    public final int zzep(String str) {
        return !zzP("event", str) ? 2 : !zza("event", Event.zzbof, str) ? 13 : !zzb("event", zzcem.zzxh(), str) ? 2 : 0;
    }

    public final int zzeq(String str) {
        return !zzQ("event", str) ? 2 : !zza("event", Event.zzbof, str) ? 13 : !zzb("event", zzcem.zzxh(), str) ? 2 : 0;
    }

    public final int zzer(String str) {
        return !zzP("user property", str) ? 6 : !zza("user property", UserProperty.zzbom, str) ? 15 : !zzb("user property", zzcem.zzxi(), str) ? 6 : 0;
    }

    public final int zzes(String str) {
        return !zzQ("user property", str) ? 6 : !zza("user property", UserProperty.zzbom, str) ? 15 : !zzb("user property", zzcem.zzxi(), str) ? 6 : 0;
    }

    public final boolean zzev(String str) {
        if (TextUtils.isEmpty(str)) {
            super.zzwF().zzyx().log("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        zzbo.zzu(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        super.zzwF().zzyx().zzj("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", str);
        return false;
    }

    public final boolean zzey(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String zzya = super.zzwH().zzya();
        zzcem.zzxE();
        return zzya.equals(str);
    }

    public final boolean zzf(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(super.zzkq().currentTimeMillis() - j) > j2;
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                super.zzwF().zzyz().log("Utils falling back to Random for random id");
            }
        }
        this.zzbuF.set(nextLong);
    }

    public final Object zzk(String str, Object obj) {
        int zzxl;
        boolean z;
        if ("_ev".equals(str)) {
            zzxl = zzcem.zzxl();
            z = true;
        } else {
            zzxl = zzex(str) ? zzcem.zzxl() : zzcem.zzxk();
            z = false;
        }
        return zza(zzxl, obj, z);
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
    }

    public final int zzl(String str, Object obj) {
        return "_ldl".equals(str) ? zza("user property referrer", str, zzew(str), obj, false) : zza("user property", str, zzew(str), obj, false) ? 0 : 7;
    }

    public final byte[] zzl(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            super.zzwF().zzyx().zzj("Failed to gzip content", e);
            throw e;
        }
    }

    public final Object zzm(String str, Object obj) {
        int zzew;
        boolean z;
        if ("_ldl".equals(str)) {
            zzew = zzew(str);
            z = true;
        } else {
            zzew = zzew(str);
            z = false;
        }
        return zza(zzew, obj, z);
    }

    public final byte[] zzm(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            super.zzwF().zzyx().zzj("Failed to ungzip content", e);
            throw e;
        }
    }

    public final Bundle zzq(@NonNull Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            CharSequence queryParameter;
            CharSequence queryParameter2;
            CharSequence queryParameter3;
            CharSequence queryParameter4;
            if (uri.isHierarchical()) {
                queryParameter = uri.getQueryParameter("utm_campaign");
                queryParameter2 = uri.getQueryParameter("utm_source");
                queryParameter3 = uri.getQueryParameter("utm_medium");
                queryParameter4 = uri.getQueryParameter("gclid");
            } else {
                queryParameter = null;
                queryParameter2 = queryParameter;
                queryParameter3 = queryParameter2;
                queryParameter4 = queryParameter3;
            }
            if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString(Param.CAMPAIGN, queryParameter);
            }
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString(Param.SOURCE, queryParameter2);
            }
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString(Param.MEDIUM, queryParameter3);
            }
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("gclid", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString(Param.TERM, queryParameter5);
            }
            queryParameter5 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("content", queryParameter5);
            }
            queryParameter5 = uri.getQueryParameter(Param.ACLID);
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString(Param.ACLID, queryParameter5);
            }
            queryParameter5 = uri.getQueryParameter(Param.CP1);
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString(Param.CP1, queryParameter5);
            }
            String queryParameter6 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("anid", queryParameter6);
            }
            return bundle;
        } catch (UnsupportedOperationException e) {
            super.zzwF().zzyz().zzj("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    public final /* bridge */ /* synthetic */ zzcfj zzwA() {
        return super.zzwA();
    }

    public final /* bridge */ /* synthetic */ zzcjl zzwB() {
        return super.zzwB();
    }

    public final /* bridge */ /* synthetic */ zzcgf zzwC() {
        return super.zzwC();
    }

    public final /* bridge */ /* synthetic */ zzcja zzwD() {
        return super.zzwD();
    }

    public final /* bridge */ /* synthetic */ zzcgg zzwE() {
        return super.zzwE();
    }

    public final /* bridge */ /* synthetic */ zzcfl zzwF() {
        return super.zzwF();
    }

    public final /* bridge */ /* synthetic */ zzcfw zzwG() {
        return super.zzwG();
    }

    public final /* bridge */ /* synthetic */ zzcem zzwH() {
        return super.zzwH();
    }

    public final /* bridge */ /* synthetic */ void zzwo() {
        super.zzwo();
    }

    public final /* bridge */ /* synthetic */ void zzwp() {
        super.zzwp();
    }

    public final /* bridge */ /* synthetic */ void zzwq() {
        super.zzwq();
    }

    public final /* bridge */ /* synthetic */ zzcec zzwr() {
        return super.zzwr();
    }

    public final /* bridge */ /* synthetic */ zzcej zzws() {
        return super.zzws();
    }

    public final /* bridge */ /* synthetic */ zzchl zzwt() {
        return super.zzwt();
    }

    public final /* bridge */ /* synthetic */ zzcfg zzwu() {
        return super.zzwu();
    }

    public final /* bridge */ /* synthetic */ zzcet zzwv() {
        return super.zzwv();
    }

    public final /* bridge */ /* synthetic */ zzcid zzww() {
        return super.zzww();
    }

    public final /* bridge */ /* synthetic */ zzchz zzwx() {
        return super.zzwx();
    }

    public final /* bridge */ /* synthetic */ zzcfh zzwy() {
        return super.zzwy();
    }

    public final /* bridge */ /* synthetic */ zzcen zzwz() {
        return super.zzwz();
    }

    public final long zzzs() {
        long nextLong;
        if (this.zzbuF.get() == 0) {
            long j;
            synchronized (this.zzbuF) {
                nextLong = new Random(System.nanoTime() ^ super.zzkq().currentTimeMillis()).nextLong();
                int i = this.zzbuG + 1;
                this.zzbuG = i;
                j = nextLong + ((long) i);
            }
            return j;
        }
        synchronized (this.zzbuF) {
            this.zzbuF.compareAndSet(-1, 1);
            nextLong = this.zzbuF.getAndIncrement();
        }
        return nextLong;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final SecureRandom zzzt() {
        super.zzjC();
        if (this.zzbuE == null) {
            this.zzbuE = new SecureRandom();
        }
        return this.zzbuE;
    }
}
