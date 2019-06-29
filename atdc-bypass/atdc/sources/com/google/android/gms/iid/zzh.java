package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.zzu;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

public final class zzh {
    private SharedPreferences zzbho;
    private Context zzqD;

    public zzh(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    private zzh(Context context, String str) {
        this.zzqD = context;
        this.zzbho = context.getSharedPreferences(str, 0);
        String valueOf = String.valueOf(str);
        str = String.valueOf("-no-backup");
        File file = new File(zzu.getNoBackupFilesDir(this.zzqD), str.length() != 0 ? valueOf.concat(str) : new String(valueOf));
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !isEmpty()) {
                    Log.i("InstanceID/Store", "App restored, clearing state");
                    InstanceIDListenerService.zza(this.zzqD, this);
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

    private final synchronized void zza(Editor editor, String str, String str2, String str3) {
        String valueOf = String.valueOf("|S|");
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + String.valueOf(valueOf).length()) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        editor.putString(stringBuilder.toString(), str3);
    }

    private static String zze(String str, String str2, String str3) {
        String valueOf = String.valueOf("|T|");
        StringBuilder stringBuilder = new StringBuilder((((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length()) + String.valueOf(str2).length()) + String.valueOf(str3).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        stringBuilder.append("|");
        stringBuilder.append(str3);
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized String get(String str) {
        return this.zzbho.getString(str, null);
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized String get(String str, String str2) {
        SharedPreferences sharedPreferences;
        StringBuilder stringBuilder;
        sharedPreferences = this.zzbho;
        String valueOf = String.valueOf("|S|");
        stringBuilder = new StringBuilder((String.valueOf(str).length() + String.valueOf(valueOf).length()) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        return sharedPreferences.getString(stringBuilder.toString(), null);
    }

    public final boolean isEmpty() {
        return this.zzbho.getAll().isEmpty();
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        str = zze(str, str2, str3);
        Editor edit = this.zzbho.edit();
        edit.putString(str, str4);
        edit.putString("appVersion", str5);
        edit.putString("lastToken", Long.toString(System.currentTimeMillis() / 1000));
        edit.commit();
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized KeyPair zzc(String str, long j) {
        KeyPair zzvJ;
        zzvJ = zza.zzvJ();
        Editor edit = this.zzbho.edit();
        zza(edit, str, "|P|", InstanceID.zzj(zzvJ.getPublic().getEncoded()));
        zza(edit, str, "|K|", InstanceID.zzj(zzvJ.getPrivate().getEncoded()));
        zza(edit, str, "cre", Long.toString(j));
        edit.commit();
        return zzvJ;
    }

    public final synchronized void zzdq(String str) {
        Editor edit = this.zzbho.edit();
        for (String str2 : this.zzbho.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    public final void zzdr(String str) {
        zzdq(String.valueOf(str).concat("|T|"));
    }

    /* Access modifiers changed, original: final */
    public final KeyPair zzds(String str) {
        String str2 = get(str, "|P|");
        str = get(str, "|K|");
        if (str2 == null || str == null) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str2, 8);
            byte[] decode2 = Base64.decode(str, 8);
            KeyFactory instance = KeyFactory.getInstance("RSA");
            return new KeyPair(instance.generatePublic(new X509EncodedKeySpec(decode)), instance.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            str = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 19);
            stringBuilder.append("Invalid key stored ");
            stringBuilder.append(str);
            Log.w("InstanceID/Store", stringBuilder.toString());
            InstanceIDListenerService.zza(this.zzqD, this);
            return null;
        }
    }

    public final synchronized String zzf(String str, String str2, String str3) {
        return this.zzbho.getString(zze(str, str2, str3), null);
    }

    public final synchronized void zzg(String str, String str2, String str3) {
        str = zze(str, str2, str3);
        Editor edit = this.zzbho.edit();
        edit.remove(str);
        edit.commit();
    }

    public final synchronized void zzvP() {
        this.zzbho.edit().clear().commit();
    }
}
