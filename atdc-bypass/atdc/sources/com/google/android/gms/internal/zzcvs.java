package com.google.android.gms.internal;

import android.net.Uri;
import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class zzcvs {
    private static zzcvs zzbID;
    private volatile String zzbDw = null;
    private volatile String zzbFI = null;
    private volatile int zzbIE = zza.zzbIF;

    enum zza {
        public static final int zzbIF = 1;
        public static final int zzbIG = 2;
        private static final /* synthetic */ int[] zzbIH = new int[]{1, 2};
    }

    zzcvs() {
    }

    public static zzcvs zzCw() {
        zzcvs zzcvs;
        synchronized (zzcvs.class) {
            if (zzbID == null) {
                zzbID = new zzcvs();
            }
            zzcvs = zzbID;
        }
        return zzcvs;
    }

    public final String getContainerId() {
        return this.zzbDw;
    }

    public final boolean isPreview() {
        return this.zzbIE == zza.zzbIG;
    }

    public final String zzCx() {
        return this.zzbFI;
    }

    public final synchronized boolean zzc(String str, Uri uri) {
        try {
            String decode = URLDecoder.decode(uri.toString(), Key.STRING_CHARSET_NAME);
            String valueOf;
            if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\S+")) {
                String queryParameter = uri.getQueryParameter("id");
                String queryParameter2 = uri.getQueryParameter("gtm_auth");
                String queryParameter3 = uri.getQueryParameter("gtm_preview");
                if (str.equals(queryParameter)) {
                    if (queryParameter != null) {
                        if (queryParameter.length() > 0) {
                            if (queryParameter3 == null || queryParameter3.length() != 0) {
                                if (queryParameter3 != null) {
                                    if (queryParameter3.length() > 0 && queryParameter2 != null && queryParameter2.length() > 0) {
                                        this.zzbIE = zza.zzbIG;
                                        this.zzbFI = uri.getQuery();
                                        this.zzbDw = queryParameter;
                                    }
                                }
                                str = "Bad preview url: ";
                                valueOf = String.valueOf(decode);
                                zzcvk.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                                return false;
                            }
                            if (queryParameter.equals(this.zzbDw)) {
                                if (this.zzbIE != zza.zzbIF) {
                                    str = "Exit preview mode for container: ";
                                    valueOf = String.valueOf(this.zzbDw);
                                    zzcvk.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                                    this.zzbIE = zza.zzbIF;
                                    this.zzbDw = null;
                                    this.zzbFI = null;
                                }
                            }
                            zzcvk.zzaT("Error in exiting preview mode. The container is not in preview.");
                            return false;
                            return true;
                        }
                    }
                    str = "Bad preview url: ";
                    valueOf = String.valueOf(decode);
                    zzcvk.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                    return false;
                }
                zzcvk.zzaT("Preview fails (container doesn't match the container specified by the asset)");
                return false;
            }
            str = "Bad preview url: ";
            valueOf = String.valueOf(decode);
            zzcvk.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            return false;
        } catch (UnsupportedEncodingException e) {
            str = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 32);
            stringBuilder.append("Error decoding the preview url: ");
            stringBuilder.append(str);
            zzcvk.zzaT(stringBuilder.toString());
            return false;
        }
    }

    public final boolean zzfG(String str) {
        return isPreview() && this.zzbDw.equals(str);
    }
}
