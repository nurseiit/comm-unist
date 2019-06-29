package com.google.android.gms.tagmanager;

import android.net.Uri;
import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class zzei {
    private static zzei zzbFF;
    private volatile String zzbDw = null;
    private volatile zza zzbFG = zza.NONE;
    private volatile String zzbFH = null;
    private volatile String zzbFI = null;

    enum zza {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    zzei() {
    }

    static zzei zzBD() {
        zzei zzei;
        synchronized (zzei.class) {
            if (zzbFF == null) {
                zzbFF = new zzei();
            }
            zzei = zzbFF;
        }
        return zzei;
    }

    private static String zzfq(String str) {
        return str.split("&")[0].split("=")[1];
    }

    /* Access modifiers changed, original: final */
    public final String getContainerId() {
        return this.zzbDw;
    }

    /* Access modifiers changed, original: final */
    public final zza zzBE() {
        return this.zzbFG;
    }

    /* Access modifiers changed, original: final */
    public final String zzBF() {
        return this.zzbFH;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized boolean zzr(Uri uri) {
        try {
            String decode = URLDecoder.decode(uri.toString(), Key.STRING_CHARSET_NAME);
            String str;
            String valueOf;
            if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                str = "Container preview url: ";
                String valueOf2 = String.valueOf(decode);
                zzdj.v(valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str));
                this.zzbFG = decode.matches(".*?&gtm_debug=x$") ? zza.CONTAINER_DEBUG : zza.CONTAINER;
                this.zzbFI = uri.getQuery().replace("&gtm_debug=x", "");
                if (this.zzbFG == zza.CONTAINER || this.zzbFG == zza.CONTAINER_DEBUG) {
                    valueOf = String.valueOf("/r?");
                    str = String.valueOf(this.zzbFI);
                    this.zzbFH = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
                }
                this.zzbDw = zzfq(this.zzbFI);
                return true;
            } else if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                valueOf = "Invalid preview uri: ";
                decode = String.valueOf(decode);
                zzdj.zzaT(decode.length() != 0 ? valueOf.concat(decode) : new String(valueOf));
                return false;
            } else if (!zzfq(uri.getQuery()).equals(this.zzbDw)) {
                return false;
            } else {
                valueOf = "Exit preview mode for container: ";
                str = String.valueOf(this.zzbDw);
                zzdj.v(str.length() != 0 ? valueOf.concat(str) : new String(valueOf));
                this.zzbFG = zza.NONE;
                this.zzbFH = null;
                return true;
            }
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }
}
