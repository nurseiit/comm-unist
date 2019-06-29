package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.google.android.gms.common.util.zzu;
import java.io.File;
import java.io.IOException;
import java.security.KeyPair;

final class zzr {
    SharedPreferences zzbho;
    private Context zzqD;

    public zzr(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    private zzr(Context context, String str) {
        this.zzqD = context;
        this.zzbho = context.getSharedPreferences(str, 0);
        String valueOf = String.valueOf(str);
        str = String.valueOf("-no-backup");
        File file = new File(zzu.getNoBackupFilesDir(this.zzqD), str.length() != 0 ? valueOf.concat(str) : new String(valueOf));
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !isEmpty()) {
                    Log.i("InstanceID/Store", "App restored, clearing state");
                    FirebaseInstanceId.zza(this.zzqD, this);
                }
            } catch (IOException e) {
                if (Log.isLoggable("InstanceID/Store", 3)) {
                    str = "InstanceID/Store";
                    String str2 = "Error creating file in no backup dir: ";
                    valueOf = String.valueOf(e.getMessage());
                    Log.d(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                }
            }
        }
    }

    private static String zzai(String str, String str2) {
        String valueOf = String.valueOf("|S|");
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + String.valueOf(valueOf).length()) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    private final void zzdq(String str) {
        Editor edit = this.zzbho.edit();
        for (String str2 : this.zzbho.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    private static String zzo(String str, String str2, String str3) {
        String valueOf = String.valueOf("|T|");
        StringBuilder stringBuilder = new StringBuilder((((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length()) + String.valueOf(str2).length()) + String.valueOf(str3).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        stringBuilder.append("|");
        stringBuilder.append(str3);
        return stringBuilder.toString();
    }

    public final synchronized boolean isEmpty() {
        return this.zzbho.getAll().isEmpty();
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        str4 = zzs.zzc(str4, str5, System.currentTimeMillis());
        if (str4 != null) {
            Editor edit = this.zzbho.edit();
            edit.putString(zzo(str, str2, str3), str4);
            edit.commit();
        }
    }

    public final synchronized void zzdr(String str) {
        zzdq(String.valueOf(str).concat("|T|"));
    }

    public final synchronized void zzg(String str, String str2, String str3) {
        str = zzo(str, str2, str3);
        Editor edit = this.zzbho.edit();
        edit.remove(str);
        edit.commit();
    }

    public final synchronized long zzhk(String str) {
        str = this.zzbho.getString(zzai(str, "cre"), null);
        if (str != null) {
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized KeyPair zzhl(String str) {
        KeyPair zzvJ;
        zzvJ = zza.zzvJ();
        long currentTimeMillis = System.currentTimeMillis();
        Editor edit = this.zzbho.edit();
        edit.putString(zzai(str, "|P|"), FirebaseInstanceId.zzj(zzvJ.getPublic().getEncoded()));
        edit.putString(zzai(str, "|K|"), FirebaseInstanceId.zzj(zzvJ.getPrivate().getEncoded()));
        edit.putString(zzai(str, "cre"), Long.toString(currentTimeMillis));
        edit.commit();
        return zzvJ;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized void zzhm(String str) {
        zzdq(String.valueOf(str).concat("|"));
    }

    /* JADX WARNING: Missing block: B:16:0x0075, code skipped:
            return null;
     */
    public final synchronized java.security.KeyPair zzhn(java.lang.String r5) {
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = r4.zzbho;	 Catch:{ all -> 0x0076 }
        r1 = "|P|";
        r1 = zzai(r5, r1);	 Catch:{ all -> 0x0076 }
        r2 = 0;
        r0 = r0.getString(r1, r2);	 Catch:{ all -> 0x0076 }
        r1 = r4.zzbho;	 Catch:{ all -> 0x0076 }
        r3 = "|K|";
        r5 = zzai(r5, r3);	 Catch:{ all -> 0x0076 }
        r5 = r1.getString(r5, r2);	 Catch:{ all -> 0x0076 }
        if (r0 == 0) goto L_0x0074;
    L_0x001c:
        if (r5 != 0) goto L_0x001f;
    L_0x001e:
        goto L_0x0074;
    L_0x001f:
        r1 = 8;
        r0 = android.util.Base64.decode(r0, r1);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r5 = android.util.Base64.decode(r5, r1);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r1 = "RSA";
        r1 = java.security.KeyFactory.getInstance(r1);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r3 = new java.security.spec.X509EncodedKeySpec;	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r3.<init>(r0);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r0 = r1.generatePublic(r3);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r3 = new java.security.spec.PKCS8EncodedKeySpec;	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r3.<init>(r5);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r5 = r1.generatePrivate(r3);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r1 = new java.security.KeyPair;	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        r1.<init>(r0, r5);	 Catch:{ NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048, NoSuchAlgorithmException | InvalidKeySpecException -> 0x0048 }
        monitor-exit(r4);
        return r1;
    L_0x0048:
        r5 = move-exception;
        r0 = "InstanceID/Store";
        r5 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x0076 }
        r1 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x0076 }
        r1 = r1.length();	 Catch:{ all -> 0x0076 }
        r1 = r1 + 19;
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0076 }
        r3.<init>(r1);	 Catch:{ all -> 0x0076 }
        r1 = "Invalid key stored ";
        r3.append(r1);	 Catch:{ all -> 0x0076 }
        r3.append(r5);	 Catch:{ all -> 0x0076 }
        r5 = r3.toString();	 Catch:{ all -> 0x0076 }
        android.util.Log.w(r0, r5);	 Catch:{ all -> 0x0076 }
        r5 = r4.zzqD;	 Catch:{ all -> 0x0076 }
        com.google.firebase.iid.FirebaseInstanceId.zza(r5, r4);	 Catch:{ all -> 0x0076 }
        monitor-exit(r4);
        return r2;
    L_0x0074:
        monitor-exit(r4);
        return r2;
    L_0x0076:
        r5 = move-exception;
        monitor-exit(r4);
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzr.zzhn(java.lang.String):java.security.KeyPair");
    }

    public final synchronized zzs zzp(String str, String str2, String str3) {
        return zzs.zzho(this.zzbho.getString(zzo(str, str2, str3), null));
    }

    public final synchronized void zzvP() {
        this.zzbho.edit().clear().commit();
    }
}
