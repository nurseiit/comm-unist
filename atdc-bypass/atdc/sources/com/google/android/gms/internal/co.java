package com.google.android.gms.internal;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class co {
    private final Context mContext;
    private final ct zzbKL;
    private final ExecutorService zzbrV;

    public co(Context context) {
        this(context, Executors.newSingleThreadExecutor(), new cp(context));
    }

    private co(Context context, ExecutorService executorService, ct ctVar) {
        this.mContext = context;
        this.zzbrV = executorService;
        this.zzbKL = ctVar;
    }

    private final File zzfS(String str) {
        return new File(this.mContext.getDir("google_tagmanager", 0), zzfT(str));
    }

    private static String zzfT(String str) {
        String valueOf = String.valueOf("resource_");
        str = String.valueOf(str);
        return str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0016 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:9|10) */
    /* JADX WARNING: Missing block: B:10:?, code skipped:
            com.google.android.gms.internal.zzcvk.zzaT("Failed to read the resource from disk");
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r3.close();
     */
    private static byte[] zzj(java.io.InputStream r3) {
        /*
        r0 = new java.io.ByteArrayOutputStream;
        r0.<init>();
        r1 = 0;
        r2 = 0;
        com.google.android.gms.common.util.zzn.zza(r3, r0, r1);	 Catch:{ IOException -> 0x0016 }
    L_0x000a:
        r3.close();	 Catch:{ IOException -> 0x000e }
        goto L_0x001c;
    L_0x000e:
        r3 = "Error closing stream for reading resource from disk";
        com.google.android.gms.internal.zzcvk.zzaT(r3);
        return r2;
    L_0x0014:
        r0 = move-exception;
        goto L_0x0021;
    L_0x0016:
        r1 = "Failed to read the resource from disk";
        com.google.android.gms.internal.zzcvk.zzaT(r1);	 Catch:{ all -> 0x0014 }
        goto L_0x000a;
    L_0x001c:
        r3 = r0.toByteArray();
        return r3;
    L_0x0021:
        r3.close();	 Catch:{ IOException -> 0x000e }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.co.zzj(java.io.InputStream):byte[]");
    }

    public final void zza(String str, cc ccVar) {
        this.zzbrV.execute(new cq(this, str, ccVar));
    }

    public final void zza(String str, String str2, cc ccVar) {
        this.zzbrV.execute(new cr(this, str, str2, ccVar));
    }

    /* Access modifiers changed, original: final */
    public final void zzb(String str, cc ccVar) {
        zzcvk.v("Starting to load a saved resource file from Disk.");
        try {
            ccVar.zzv(zzj(new FileInputStream(zzfS(str))));
        } catch (FileNotFoundException unused) {
            String str2 = "Saved resource not found: ";
            str = String.valueOf(zzfT(str));
            zzcvk.e(str.length() != 0 ? str2.concat(str) : new String(str2));
            ccVar.zzk(0, 1);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzb(String str, String str2, cc ccVar) {
        zzcvk.v("Starting to load a default asset file from Disk.");
        if (str2 == null) {
            zzcvk.v("Default asset file is not specified. Not proceeding with the loading");
        } else {
            try {
                InputStream open = this.zzbKL.open(str2);
                if (open != null) {
                    ccVar.zzv(zzj(open));
                    return;
                } else {
                    ccVar.zzk(0, 2);
                    return;
                }
            } catch (IOException unused) {
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 42) + String.valueOf(str2).length());
                stringBuilder.append("Default asset file not found. ");
                stringBuilder.append(str);
                stringBuilder.append(". Filename: ");
                stringBuilder.append(str2);
                zzcvk.e(stringBuilder.toString());
            }
        }
        ccVar.zzk(0, 2);
    }

    public final void zzd(String str, byte[] bArr) {
        this.zzbrV.execute(new cs(this, str, bArr));
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x003b */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            com.google.android.gms.internal.zzcvk.e("Error writing resource to disk. Removing resource from disk");
            r0.delete();
     */
    /* JADX WARNING: Missing block: B:16:0x0069, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:18:?, code skipped:
            r1.close();
            r1 = new java.lang.StringBuilder(java.lang.String.valueOf(r3).length() + 24);
            r1.append("Resource ");
            r1.append(r3);
            r1.append(" saved on Disk.");
            com.google.android.gms.internal.zzcvk.v(r1.toString());
     */
    /* JADX WARNING: Missing block: B:19:0x0091, code skipped:
            com.google.android.gms.internal.zzcvk.e("Error closing stream for writing resource to disk");
     */
    public final void zze(java.lang.String r3, byte[] r4) {
        /*
        r2 = this;
        r0 = r2.zzfS(r3);
        r1 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x0097 }
        r1.<init>(r0);	 Catch:{ FileNotFoundException -> 0x0097 }
        r1.write(r4);	 Catch:{ IOException -> 0x003b }
        r1.close();	 Catch:{ IOException -> 0x0033 }
        r4 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0033 }
        r4 = r4.length();	 Catch:{ IOException -> 0x0033 }
        r4 = r4 + 24;
        r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0033 }
        r0.<init>(r4);	 Catch:{ IOException -> 0x0033 }
        r4 = "Resource ";
        r0.append(r4);	 Catch:{ IOException -> 0x0033 }
        r0.append(r3);	 Catch:{ IOException -> 0x0033 }
        r3 = " saved on Disk.";
        r0.append(r3);	 Catch:{ IOException -> 0x0033 }
        r3 = r0.toString();	 Catch:{ IOException -> 0x0033 }
        com.google.android.gms.internal.zzcvk.v(r3);	 Catch:{ IOException -> 0x0033 }
        return;
    L_0x0033:
        r3 = "Error closing stream for writing resource to disk";
    L_0x0035:
        com.google.android.gms.internal.zzcvk.e(r3);
        return;
    L_0x0039:
        r4 = move-exception;
        goto L_0x006a;
    L_0x003b:
        r4 = "Error writing resource to disk. Removing resource from disk";
        com.google.android.gms.internal.zzcvk.e(r4);	 Catch:{ all -> 0x0039 }
        r0.delete();	 Catch:{ all -> 0x0039 }
        r1.close();	 Catch:{ IOException -> 0x0033 }
        r4 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0033 }
        r4 = r4.length();	 Catch:{ IOException -> 0x0033 }
        r4 = r4 + 24;
        r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0033 }
        r0.<init>(r4);	 Catch:{ IOException -> 0x0033 }
        r4 = "Resource ";
        r0.append(r4);	 Catch:{ IOException -> 0x0033 }
        r0.append(r3);	 Catch:{ IOException -> 0x0033 }
        r3 = " saved on Disk.";
        r0.append(r3);	 Catch:{ IOException -> 0x0033 }
        r3 = r0.toString();	 Catch:{ IOException -> 0x0033 }
        com.google.android.gms.internal.zzcvk.v(r3);	 Catch:{ IOException -> 0x0033 }
        return;
    L_0x006a:
        r1.close();	 Catch:{ IOException -> 0x0091 }
        r0 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0091 }
        r0 = r0.length();	 Catch:{ IOException -> 0x0091 }
        r0 = r0 + 24;
        r1 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0091 }
        r1.<init>(r0);	 Catch:{ IOException -> 0x0091 }
        r0 = "Resource ";
        r1.append(r0);	 Catch:{ IOException -> 0x0091 }
        r1.append(r3);	 Catch:{ IOException -> 0x0091 }
        r3 = " saved on Disk.";
        r1.append(r3);	 Catch:{ IOException -> 0x0091 }
        r3 = r1.toString();	 Catch:{ IOException -> 0x0091 }
        com.google.android.gms.internal.zzcvk.v(r3);	 Catch:{ IOException -> 0x0091 }
        goto L_0x0096;
    L_0x0091:
        r3 = "Error closing stream for writing resource to disk";
        com.google.android.gms.internal.zzcvk.e(r3);
    L_0x0096:
        throw r4;
    L_0x0097:
        r3 = "Error opening resource file for writing";
        goto L_0x0035;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.co.zze(java.lang.String, byte[]):void");
    }

    public final long zzfR(String str) {
        File zzfS = zzfS(str);
        return zzfS.exists() ? zzfS.lastModified() : 0;
    }
}
