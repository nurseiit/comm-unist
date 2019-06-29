package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

public class FirebaseInstanceId {
    private static Map<String, FirebaseInstanceId> zzbgQ = new ArrayMap();
    private static zzk zzckv;
    private final FirebaseApp zzckw;
    private final zzj zzckx;
    private final String zzcky;

    /* JADX WARNING: Missing block: B:8:0x003a, code skipped:
            if (r3.isEmpty() != false) goto L_0x0031;
     */
    private FirebaseInstanceId(com.google.firebase.FirebaseApp r3, com.google.firebase.iid.zzj r4) {
        /*
        r2 = this;
        r2.<init>();
        r2.zzckw = r3;
        r2.zzckx = r4;
        r3 = r2.zzckw;
        r3 = r3.getOptions();
        r3 = r3.getGcmSenderId();
        r4 = 0;
        if (r3 == 0) goto L_0x0015;
    L_0x0014:
        goto L_0x003d;
    L_0x0015:
        r3 = r2.zzckw;
        r3 = r3.getOptions();
        r3 = r3.getApplicationId();
        r0 = "1:";
        r0 = r3.startsWith(r0);
        if (r0 == 0) goto L_0x003d;
    L_0x0027:
        r0 = ":";
        r3 = r3.split(r0);
        r0 = r3.length;
        r1 = 2;
        if (r0 >= r1) goto L_0x0033;
    L_0x0031:
        r3 = r4;
        goto L_0x003d;
    L_0x0033:
        r0 = 1;
        r3 = r3[r0];
        r0 = r3.isEmpty();
        if (r0 == 0) goto L_0x003d;
    L_0x003c:
        goto L_0x0031;
    L_0x003d:
        r2.zzcky = r3;
        r3 = r2.zzcky;
        if (r3 != 0) goto L_0x004b;
    L_0x0043:
        r3 = new java.lang.IllegalStateException;
        r4 = "IID failing to initialize, FirebaseApp is missing project ID";
        r3.<init>(r4);
        throw r3;
    L_0x004b:
        r3 = r2.zzckw;
        r3 = r3.getApplicationContext();
        com.google.firebase.iid.FirebaseInstanceIdService.zza(r3, r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceId.<init>(com.google.firebase.FirebaseApp, com.google.firebase.iid.zzj):void");
    }

    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @Keep
    public static synchronized FirebaseInstanceId getInstance(@NonNull FirebaseApp firebaseApp) {
        FirebaseInstanceId firebaseInstanceId;
        synchronized (FirebaseInstanceId.class) {
            firebaseInstanceId = (FirebaseInstanceId) zzbgQ.get(firebaseApp.getOptions().getApplicationId());
            if (firebaseInstanceId == null) {
                zzj zzb = zzj.zzb(firebaseApp.getApplicationContext(), null);
                if (zzckv == null) {
                    zzckv = new zzk(zzj.zzJT());
                }
                FirebaseInstanceId firebaseInstanceId2 = new FirebaseInstanceId(firebaseApp, zzb);
                zzbgQ.put(firebaseApp.getOptions().getApplicationId(), firebaseInstanceId2);
                firebaseInstanceId = firebaseInstanceId2;
            }
        }
        return firebaseInstanceId;
    }

    private final void zzF(Bundle bundle) {
        bundle.putString("gmp_app_id", this.zzckw.getOptions().getApplicationId());
    }

    static zzk zzJS() {
        return zzckv;
    }

    static int zzO(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 23);
            stringBuilder.append("Failed to find package ");
            stringBuilder.append(valueOf);
            Log.w("FirebaseInstanceId", stringBuilder.toString());
            return 0;
        }
    }

    static String zza(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("FirebaseInstanceId", "Unexpected error, device missing required alghorithms");
            return null;
        }
    }

    static void zza(Context context, zzr zzr) {
        zzr.zzvP();
        Intent intent = new Intent();
        intent.putExtra("CMD", "RST");
        zzq.zzJX().zze(context, intent);
    }

    static int zzbF(Context context) {
        return zzO(context, context.getPackageName());
    }

    static void zzbG(Context context) {
        Intent intent = new Intent();
        intent.putExtra("CMD", "SYNC");
        zzq.zzJX().zze(context, intent);
    }

    static String zzbb(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 38);
            stringBuilder.append("Never happens: can't find own package ");
            stringBuilder.append(valueOf);
            Log.w("FirebaseInstanceId", stringBuilder.toString());
            return null;
        }
    }

    static String zzj(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public void deleteInstanceId() throws IOException {
        this.zzckx.zzb("*", "*", null);
        this.zzckx.zzvL();
    }

    @WorkerThread
    public void deleteToken(String str, String str2) throws IOException {
        Bundle bundle = new Bundle();
        zzF(bundle);
        this.zzckx.zzb(str, str2, bundle);
    }

    public long getCreationTime() {
        return this.zzckx.getCreationTime();
    }

    public String getId() {
        return zza(this.zzckx.zzvK());
    }

    @Nullable
    public String getToken() {
        zzs zzJQ = zzJQ();
        if (zzJQ == null || zzJQ.zzhp(zzj.zzbgW)) {
            FirebaseInstanceIdService.zzbI(this.zzckw.getApplicationContext());
        }
        return zzJQ != null ? zzJQ.zzbPJ : null;
    }

    @WorkerThread
    public String getToken(String str, String str2) throws IOException {
        Bundle bundle = new Bundle();
        zzF(bundle);
        return this.zzckx.getToken(str, str2, bundle);
    }

    /* Access modifiers changed, original: final */
    @Nullable
    public final zzs zzJQ() {
        return zzj.zzJT().zzp("", this.zzcky, "*");
    }

    /* Access modifiers changed, original: final */
    public final String zzJR() throws IOException {
        return getToken(this.zzcky, "*");
    }

    public final void zzhf(String str) {
        zzckv.zzhf(str);
        FirebaseInstanceIdService.zzbI(this.zzckw.getApplicationContext());
    }

    /* Access modifiers changed, original: final */
    public final void zzhg(String str) throws IOException {
        zzs zzJQ = zzJQ();
        if (zzJQ == null || zzJQ.zzhp(zzj.zzbgW)) {
            throw new IOException("token not available");
        }
        Bundle bundle = new Bundle();
        String str2 = "gcm.topic";
        String valueOf = String.valueOf("/topics/");
        String valueOf2 = String.valueOf(str);
        bundle.putString(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        String str3 = zzJQ.zzbPJ;
        str2 = String.valueOf("/topics/");
        str = String.valueOf(str);
        str = str.length() != 0 ? str2.concat(str) : new String(str2);
        zzF(bundle);
        this.zzckx.zzc(str3, str, bundle);
    }

    /* Access modifiers changed, original: final */
    public final void zzhh(String str) throws IOException {
        zzs zzJQ = zzJQ();
        if (zzJQ == null || zzJQ.zzhp(zzj.zzbgW)) {
            throw new IOException("token not available");
        }
        Bundle bundle = new Bundle();
        String str2 = "gcm.topic";
        String valueOf = String.valueOf("/topics/");
        String valueOf2 = String.valueOf(str);
        bundle.putString(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        zzj zzj = this.zzckx;
        String str3 = zzJQ.zzbPJ;
        valueOf = String.valueOf("/topics/");
        str = String.valueOf(str);
        zzj.zzb(str3, str.length() != 0 ? valueOf.concat(str) : new String(valueOf), bundle);
    }
}
