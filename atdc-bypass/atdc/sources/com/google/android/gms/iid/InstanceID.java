package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

public class InstanceID {
    public static final String ERROR_BACKOFF = "RETRY_LATER";
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_MISSING_INSTANCEID_SERVICE = "MISSING_INSTANCEID_SERVICE";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String ERROR_TIMEOUT = "TIMEOUT";
    private static Map<String, InstanceID> zzbgQ = new HashMap();
    private static zzh zzbgR;
    private static zze zzbgS;
    private static String zzbgW;
    private Context mContext;
    private KeyPair zzbgT;
    private String zzbgU = "";
    private long zzbgV;

    private InstanceID(Context context, String str, Bundle bundle) {
        this.mContext = context.getApplicationContext();
        this.zzbgU = str;
    }

    public static InstanceID getInstance(Context context) {
        return zza(context, null);
    }

    public static synchronized InstanceID zza(Context context, Bundle bundle) {
        InstanceID instanceID;
        synchronized (InstanceID.class) {
            Object obj;
            if (bundle == null) {
                try {
                    obj = "";
                } catch (Throwable th) {
                }
            } else {
                obj = bundle.getString("subtype");
            }
            if (obj == null) {
                obj = "";
            }
            context = context.getApplicationContext();
            if (zzbgR == null) {
                zzbgR = new zzh(context);
                zzbgS = new zze(context);
            }
            zzbgW = Integer.toString(zzba(context));
            instanceID = (InstanceID) zzbgQ.get(obj);
            if (instanceID == null) {
                instanceID = new InstanceID(context, obj, bundle);
                zzbgQ.put(obj, instanceID);
            }
        }
        return instanceID;
    }

    static String zza(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("InstanceID", "Unexpected error, device missing required alghorithms");
            return null;
        }
    }

    static int zzba(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 38);
            stringBuilder.append("Never happens: can't find own package ");
            stringBuilder.append(valueOf);
            Log.w("InstanceID", stringBuilder.toString());
            return 0;
        }
    }

    static String zzbb(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 38);
            stringBuilder.append("Never happens: can't find own package ");
            stringBuilder.append(valueOf);
            Log.w("InstanceID", stringBuilder.toString());
            return null;
        }
    }

    static String zzj(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private final KeyPair zzvK() {
        if (this.zzbgT == null) {
            this.zzbgT = zzbgR.zzds(this.zzbgU);
        }
        if (this.zzbgT == null) {
            this.zzbgV = System.currentTimeMillis();
            this.zzbgT = zzbgR.zzc(this.zzbgU, this.zzbgV);
        }
        return this.zzbgT;
    }

    public static zzh zzvM() {
        return zzbgR;
    }

    public void deleteInstanceID() throws IOException {
        zzb("*", "*", null);
        zzvL();
    }

    public void deleteToken(String str, String str2) throws IOException {
        zzb(str, str2, null);
    }

    public long getCreationTime() {
        if (this.zzbgV == 0) {
            String str = zzbgR.get(this.zzbgU, "cre");
            if (str != null) {
                this.zzbgV = Long.parseLong(str);
            }
        }
        return this.zzbgV;
    }

    public String getId() {
        return zza(zzvK());
    }

    public String getToken(String str, String str2) throws IOException {
        return getToken(str, str2, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0060 A:{RETURN} */
    public java.lang.String getToken(java.lang.String r10, java.lang.String r11, android.os.Bundle r12) throws java.io.IOException {
        /*
        r9 = this;
        r0 = android.os.Looper.getMainLooper();
        r1 = android.os.Looper.myLooper();
        if (r0 != r1) goto L_0x0012;
    L_0x000a:
        r10 = new java.io.IOException;
        r11 = "MAIN_THREAD";
        r10.<init>(r11);
        throw r10;
    L_0x0012:
        r0 = zzbgR;
        r1 = "appVersion";
        r0 = r0.get(r1);
        r1 = 0;
        r2 = 1;
        if (r0 == 0) goto L_0x0051;
    L_0x001e:
        r3 = zzbgW;
        r0 = r0.equals(r3);
        if (r0 != 0) goto L_0x0027;
    L_0x0026:
        goto L_0x0051;
    L_0x0027:
        r0 = zzbgR;
        r3 = "lastToken";
        r0 = r0.get(r3);
        if (r0 != 0) goto L_0x0032;
    L_0x0031:
        goto L_0x0051;
    L_0x0032:
        r3 = java.lang.Long.parseLong(r0);
        r0 = java.lang.Long.valueOf(r3);
        r3 = java.lang.System.currentTimeMillis();
        r5 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r3 = r3 / r5;
        r5 = r0.longValue();
        r7 = r3 - r5;
        r3 = 604800; // 0x93a80 float:8.47505E-40 double:2.98811E-318;
        r0 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1));
        if (r0 <= 0) goto L_0x004f;
    L_0x004e:
        goto L_0x0051;
    L_0x004f:
        r0 = 0;
        goto L_0x0052;
    L_0x0051:
        r0 = 1;
    L_0x0052:
        if (r0 == 0) goto L_0x0056;
    L_0x0054:
        r0 = 0;
        goto L_0x005e;
    L_0x0056:
        r0 = zzbgR;
        r3 = r9.zzbgU;
        r0 = r0.zzf(r3, r10, r11);
    L_0x005e:
        if (r0 == 0) goto L_0x0061;
    L_0x0060:
        return r0;
    L_0x0061:
        if (r12 != 0) goto L_0x0068;
    L_0x0063:
        r12 = new android.os.Bundle;
        r12.<init>();
    L_0x0068:
        r0 = "ttl";
        r0 = r12.getString(r0);
        if (r0 == 0) goto L_0x0071;
    L_0x0070:
        r2 = 0;
    L_0x0071:
        r0 = "jwt";
        r3 = "type";
        r3 = r12.getString(r3);
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x0080;
    L_0x007f:
        goto L_0x0081;
    L_0x0080:
        r1 = r2;
    L_0x0081:
        r12 = r9.zzc(r10, r11, r12);
        if (r12 == 0) goto L_0x0095;
    L_0x0087:
        if (r1 == 0) goto L_0x0095;
    L_0x0089:
        r2 = zzbgR;
        r3 = r9.zzbgU;
        r7 = zzbgW;
        r4 = r10;
        r5 = r11;
        r6 = r12;
        r2.zza(r3, r4, r5, r6, r7);
    L_0x0095:
        return r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.iid.InstanceID.getToken(java.lang.String, java.lang.String, android.os.Bundle):java.lang.String");
    }

    public final void zzb(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zzbgR.zzg(this.zzbgU, str, str2);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("sender", str);
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("subscription", str);
        bundle.putString("delete", "1");
        bundle.putString("X-delete", "1");
        bundle.putString("subtype", "".equals(this.zzbgU) ? str : this.zzbgU);
        str2 = "X-subtype";
        if (!"".equals(this.zzbgU)) {
            str = this.zzbgU;
        }
        bundle.putString(str2, str);
        zze.zzh(zzbgS.zza(bundle, zzvK()));
    }

    public final String zzc(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        str2 = "".equals(this.zzbgU) ? str : this.zzbgU;
        if (!bundle.containsKey("legacy.register")) {
            bundle.putString("subscription", str);
            bundle.putString("subtype", str2);
            bundle.putString("X-subscription", str);
            bundle.putString("X-subtype", str2);
        }
        return zze.zzh(zzbgS.zza(bundle, zzvK()));
    }

    public final void zzvL() {
        this.zzbgV = 0;
        zzbgR.zzdq(String.valueOf(this.zzbgU).concat("|"));
        this.zzbgT = null;
    }
}
