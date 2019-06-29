package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Locale;

public final class zzalx extends zzamh {
    private static boolean zzafv;
    private Object zzafA = new Object();
    private Info zzafw;
    private final zzaoo zzafx;
    private String zzafy;
    private boolean zzafz = false;

    zzalx(zzamj zzamj) {
        super(zzamj);
        this.zzafx = new zzaoo(zzamj.zzkq());
    }

    private final boolean zza(Info info, Info info2) {
        Object obj = null;
        CharSequence id = info2 == null ? null : info2.getId();
        if (TextUtils.isEmpty(id)) {
            return true;
        }
        Object zzli = zzkz().zzli();
        synchronized (this.zzafA) {
            String valueOf;
            String valueOf2;
            boolean zzbn;
            String valueOf3;
            if (!this.zzafz) {
                this.zzafy = zzkj();
                this.zzafz = true;
            } else if (TextUtils.isEmpty(this.zzafy)) {
                if (info != null) {
                    obj = info.getId();
                }
                if (obj == null) {
                    valueOf = String.valueOf(id);
                    valueOf2 = String.valueOf(zzli);
                    zzbn = zzbn(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                    return zzbn;
                }
                valueOf = String.valueOf(obj);
                valueOf3 = String.valueOf(zzli);
                this.zzafy = zzbm(valueOf3.length() != 0 ? valueOf.concat(valueOf3) : new String(valueOf));
            }
            valueOf = String.valueOf(id);
            valueOf3 = String.valueOf(zzli);
            valueOf = zzbm(valueOf3.length() != 0 ? valueOf.concat(valueOf3) : new String(valueOf));
            if (TextUtils.isEmpty(valueOf)) {
                return false;
            } else if (valueOf.equals(this.zzafy)) {
                return true;
            } else {
                if (!TextUtils.isEmpty(this.zzafy)) {
                    zzbo("Resetting the client id because Advertising Id changed.");
                    zzli = zzkz().zzlj();
                    zza("New client Id", zzli);
                }
                valueOf = String.valueOf(id);
                valueOf2 = String.valueOf(zzli);
                zzbn = zzbn(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                return zzbn;
            }
        }
    }

    private static String zzbm(String str) {
        if (zzaos.zzbE("MD5") == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, zzaos.zzbE("MD5").digest(str.getBytes()))});
    }

    private final boolean zzbn(String str) {
        try {
            str = zzbm(str);
            zzbo("Storing hashed adid.");
            FileOutputStream openFileOutput = getContext().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(str.getBytes());
            openFileOutput.close();
            this.zzafy = str;
            return true;
        } catch (IOException e) {
            zze("Error creating hash file", e);
            return false;
        }
    }

    private final synchronized Info zzkh() {
        if (this.zzafx.zzu(1000)) {
            this.zzafx.start();
            Info zzki = zzki();
            if (!zza(this.zzafw, zzki)) {
                zzbs("Failed to reset client id on adid change. Not using adid");
                zzki = new Info("", false);
            }
            this.zzafw = zzki;
        }
        return this.zzafw;
    }

    private final Info zzki() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(getContext());
        } catch (IllegalStateException unused) {
            zzbr("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        } catch (Throwable th) {
            if (!zzafv) {
                zzafv = true;
                zzd("Error getting advertiser id", th);
            }
            return null;
        }
    }

    private final String zzkj() {
        Object e;
        String str = null;
        try {
            FileInputStream openFileInput = getContext().openFileInput("gaClientIdData");
            byte[] bArr = new byte[128];
            int read = openFileInput.read(bArr, 0, 128);
            if (openFileInput.available() > 0) {
                zzbr("Hash file seems corrupted, deleting it.");
                openFileInput.close();
                getContext().deleteFile("gaClientIdData");
                return null;
            } else if (read <= 0) {
                zzbo("Hash file is empty.");
                openFileInput.close();
                return null;
            } else {
                String str2 = new String(bArr, 0, read);
                try {
                    openFileInput.close();
                } catch (FileNotFoundException unused) {
                } catch (IOException e2) {
                    e = e2;
                    str = str2;
                    zzd("Error reading Hash file, deleting it", e);
                    getContext().deleteFile("gaClientIdData");
                    return str;
                }
                return str2;
            }
        } catch (FileNotFoundException unused2) {
            return str;
        } catch (IOException e3) {
            e = e3;
            zzd("Error reading Hash file, deleting it", e);
            getContext().deleteFile("gaClientIdData");
            return str;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    public final boolean zzjZ() {
        zzkD();
        Info zzkh = zzkh();
        return (zzkh == null || zzkh.isLimitAdTrackingEnabled()) ? false : true;
    }

    public final String zzkg() {
        zzkD();
        Info zzkh = zzkh();
        CharSequence id = zzkh != null ? zzkh.getId() : null;
        return TextUtils.isEmpty(id) ? null : id;
    }
}
