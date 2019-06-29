package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import com.bumptech.glide.load.Key;
import com.google.android.gms.internal.ado;
import com.google.android.gms.internal.adp;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.eo;
import com.google.android.gms.internal.zzbn;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

final class zzey implements zzah {
    private final Context mContext;
    private final String zzbDw;
    private zzdi<ee> zzbFV;
    private final ExecutorService zzbrV = Executors.newSingleThreadExecutor();

    zzey(Context context, String str) {
        this.mContext = context;
        this.zzbDw = str;
    }

    private final File zzBJ() {
        String valueOf = String.valueOf("resource_");
        String valueOf2 = String.valueOf(this.zzbDw);
        return new File(this.mContext.getDir("google_tagmanager", 0), valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    private static ek zza(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            return zzdb.zzfo(byteArrayOutputStream.toString(Key.STRING_CHARSET_NAME));
        } catch (UnsupportedEncodingException unused) {
            zzdj.zzaC("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        } catch (JSONException unused2) {
            zzdj.zzaT("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private static ek zzu(byte[] bArr) {
        try {
            ek zza = eg.zza((zzbn) adp.zza(new zzbn(), bArr));
            if (zza != null) {
                zzdj.v("The container was successfully loaded from the resource (using binary file)");
            }
            return zza;
        } catch (ado unused) {
            zzdj.e("The resource file is corrupted. The container cannot be extracted from the binary file");
            return null;
        } catch (eo unused2) {
            zzdj.zzaT("The resource file is invalid. The container from the binary file is invalid");
            return null;
        }
    }

    public final synchronized void release() {
        this.zzbrV.shutdown();
    }

    public final void zzAR() {
        this.zzbrV.execute(new zzez(this));
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x0089 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0079 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:23:0x0079, B:27:0x0089] */
    /* JADX WARNING: Missing block: B:24:?, code skipped:
            r3.zzbFV.zzbw(com.google.android.gms.tagmanager.zzda.zzbFi);
            com.google.android.gms.tagmanager.zzdj.zzaT("Failed to read the resource from disk. The resource is inconsistent");
     */
    /* JADX WARNING: Missing block: B:28:?, code skipped:
            r3.zzbFV.zzbw(com.google.android.gms.tagmanager.zzda.zzbFi);
            com.google.android.gms.tagmanager.zzdj.zzaT("Failed to read the resource from disk");
     */
    /* JADX WARNING: Missing block: B:34:?, code skipped:
            r0.close();
     */
    /* JADX WARNING: Missing block: B:35:0x00a5, code skipped:
            com.google.android.gms.tagmanager.zzdj.zzaT("Error closing stream for reading resource from disk");
     */
    public final void zzBI() {
        /*
        r3 = this;
        r0 = r3.zzbFV;
        if (r0 != 0) goto L_0x000c;
    L_0x0004:
        r0 = new java.lang.IllegalStateException;
        r1 = "Callback must be set before execute";
        r0.<init>(r1);
        throw r0;
    L_0x000c:
        r0 = "Attempting to load resource from disk";
        com.google.android.gms.tagmanager.zzdj.v(r0);
        r0 = com.google.android.gms.tagmanager.zzei.zzBD();
        r0 = r0.zzBE();
        r1 = com.google.android.gms.tagmanager.zzei.zza.CONTAINER;
        if (r0 == r1) goto L_0x0029;
    L_0x001d:
        r0 = com.google.android.gms.tagmanager.zzei.zzBD();
        r0 = r0.zzBE();
        r1 = com.google.android.gms.tagmanager.zzei.zza.CONTAINER_DEBUG;
        if (r0 != r1) goto L_0x0041;
    L_0x0029:
        r0 = r3.zzbDw;
        r1 = com.google.android.gms.tagmanager.zzei.zzBD();
        r1 = r1.getContainerId();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0041;
    L_0x0039:
        r0 = r3.zzbFV;
        r1 = com.google.android.gms.tagmanager.zzda.zzbFh;
        r0.zzbw(r1);
        return;
    L_0x0041:
        r0 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x00ab }
        r1 = r3.zzBJ();	 Catch:{ FileNotFoundException -> 0x00ab }
        r0.<init>(r1);	 Catch:{ FileNotFoundException -> 0x00ab }
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r1.<init>();	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        com.google.android.gms.internal.eg.zzb(r0, r1);	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r1 = r1.toByteArray();	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r2 = new com.google.android.gms.internal.ee;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r2.<init>();	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r1 = com.google.android.gms.internal.adp.zza(r2, r1);	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r1 = (com.google.android.gms.internal.ee) r1;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r2 = r1.zzlB;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        if (r2 != 0) goto L_0x0071;
    L_0x0065:
        r2 = r1.zzbLH;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        if (r2 != 0) goto L_0x0071;
    L_0x0069:
        r1 = new java.lang.IllegalArgumentException;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r2 = "Resource and SupplementedResource are NULL.";
        r1.<init>(r2);	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        throw r1;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
    L_0x0071:
        r2 = r3.zzbFV;	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        r2.onSuccess(r1);	 Catch:{ IOException -> 0x0089, IllegalArgumentException -> 0x0079 }
        goto L_0x0085;
    L_0x0077:
        r1 = move-exception;
        goto L_0x00a1;
    L_0x0079:
        r1 = r3.zzbFV;	 Catch:{ all -> 0x0077 }
        r2 = com.google.android.gms.tagmanager.zzda.zzbFi;	 Catch:{ all -> 0x0077 }
        r1.zzbw(r2);	 Catch:{ all -> 0x0077 }
        r1 = "Failed to read the resource from disk. The resource is inconsistent";
        com.google.android.gms.tagmanager.zzdj.zzaT(r1);	 Catch:{ all -> 0x0077 }
    L_0x0085:
        r0.close();	 Catch:{ IOException -> 0x0096 }
        goto L_0x009b;
    L_0x0089:
        r1 = r3.zzbFV;	 Catch:{ all -> 0x0077 }
        r2 = com.google.android.gms.tagmanager.zzda.zzbFi;	 Catch:{ all -> 0x0077 }
        r1.zzbw(r2);	 Catch:{ all -> 0x0077 }
        r1 = "Failed to read the resource from disk";
        com.google.android.gms.tagmanager.zzdj.zzaT(r1);	 Catch:{ all -> 0x0077 }
        goto L_0x0085;
    L_0x0096:
        r0 = "Error closing stream for reading resource from disk";
        com.google.android.gms.tagmanager.zzdj.zzaT(r0);
    L_0x009b:
        r0 = "The Disk resource was successfully read.";
        com.google.android.gms.tagmanager.zzdj.v(r0);
        return;
    L_0x00a1:
        r0.close();	 Catch:{ IOException -> 0x00a5 }
        goto L_0x00aa;
    L_0x00a5:
        r0 = "Error closing stream for reading resource from disk";
        com.google.android.gms.tagmanager.zzdj.zzaT(r0);
    L_0x00aa:
        throw r1;
    L_0x00ab:
        r0 = "Failed to find the resource in the disk";
        com.google.android.gms.tagmanager.zzdj.zzaC(r0);
        r0 = r3.zzbFV;
        r1 = com.google.android.gms.tagmanager.zzda.zzbFh;
        r0.zzbw(r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzey.zzBI():void");
    }

    public final void zza(ee eeVar) {
        this.zzbrV.execute(new zzfa(this, eeVar));
    }

    public final void zza(zzdi<ee> zzdi) {
        this.zzbFV = zzdi;
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x001e */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:12|13|14|24|15) */
    /* JADX WARNING: Missing block: B:13:?, code skipped:
            com.google.android.gms.tagmanager.zzdj.zzaT("Error writing resource to disk. Removing resource from disk.");
            r0.delete();
     */
    /* JADX WARNING: Missing block: B:15:0x0029, code skipped:
            return false;
     */
    /* JADX WARNING: Missing block: B:17:?, code skipped:
            r2.close();
     */
    /* JADX WARNING: Missing block: B:18:0x0034, code skipped:
            com.google.android.gms.tagmanager.zzdj.zzaT("error closing stream for writing resource to disk");
     */
    public final boolean zzb(com.google.android.gms.internal.ee r4) {
        /*
        r3 = this;
        r0 = r3.zzBJ();
        r1 = 0;
        r2 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x003a }
        r2.<init>(r0);	 Catch:{ FileNotFoundException -> 0x003a }
        r4 = com.google.android.gms.internal.adp.zzc(r4);	 Catch:{ IOException -> 0x001e }
        r2.write(r4);	 Catch:{ IOException -> 0x001e }
        r2.close();	 Catch:{ IOException -> 0x0015 }
        goto L_0x001a;
    L_0x0015:
        r4 = "error closing stream for writing resource to disk";
        com.google.android.gms.tagmanager.zzdj.zzaT(r4);
    L_0x001a:
        r4 = 1;
        return r4;
    L_0x001c:
        r4 = move-exception;
        goto L_0x0030;
    L_0x001e:
        r4 = "Error writing resource to disk. Removing resource from disk.";
        com.google.android.gms.tagmanager.zzdj.zzaT(r4);	 Catch:{ all -> 0x001c }
        r0.delete();	 Catch:{ all -> 0x001c }
        r2.close();	 Catch:{ IOException -> 0x002a }
        return r1;
    L_0x002a:
        r4 = "error closing stream for writing resource to disk";
        com.google.android.gms.tagmanager.zzdj.zzaT(r4);
        return r1;
    L_0x0030:
        r2.close();	 Catch:{ IOException -> 0x0034 }
        goto L_0x0039;
    L_0x0034:
        r0 = "error closing stream for writing resource to disk";
        com.google.android.gms.tagmanager.zzdj.zzaT(r0);
    L_0x0039:
        throw r4;
    L_0x003a:
        r4 = "Error opening resource file for writing";
        com.google.android.gms.tagmanager.zzdj.e(r4);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzey.zzb(com.google.android.gms.internal.ee):boolean");
    }

    public final ek zzbx(int i) {
        String stringBuilder;
        try {
            InputStream openRawResource = this.mContext.getResources().openRawResource(i);
            String valueOf = String.valueOf(this.mContext.getResources().getResourceName(i));
            StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 66);
            stringBuilder2.append("Attempting to load a container from the resource ID ");
            stringBuilder2.append(i);
            stringBuilder2.append(" (");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(")");
            zzdj.v(stringBuilder2.toString());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                eg.zzb(openRawResource, byteArrayOutputStream);
                ek zza = zza(byteArrayOutputStream);
                if (zza == null) {
                    return zzu(byteArrayOutputStream.toByteArray());
                }
                zzdj.v("The container was successfully loaded from the resource (using JSON file format)");
                return zza;
            } catch (IOException unused) {
                String valueOf2 = String.valueOf(this.mContext.getResources().getResourceName(i));
                StringBuilder stringBuilder3 = new StringBuilder(String.valueOf(valueOf2).length() + 67);
                stringBuilder3.append("Error reading the default container with resource ID ");
                stringBuilder3.append(i);
                stringBuilder3.append(" (");
                stringBuilder3.append(valueOf2);
                stringBuilder3.append(")");
                stringBuilder = stringBuilder3.toString();
                zzdj.zzaT(stringBuilder);
                return null;
            }
        } catch (NotFoundException unused2) {
            StringBuilder stringBuilder4 = new StringBuilder(98);
            stringBuilder4.append("Failed to load the container. No default container resource found with the resource ID ");
            stringBuilder4.append(i);
            stringBuilder = stringBuilder4.toString();
            zzdj.zzaT(stringBuilder);
            return null;
        }
    }
}
