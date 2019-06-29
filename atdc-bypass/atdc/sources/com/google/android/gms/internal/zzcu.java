package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

public final class zzcu {
    private static final String[] zzqs = new String[]{"/aclk", "/pcs/click"};
    private String zzqo = "googleads.g.doubleclick.net";
    private String zzqp = "/pagead/ads";
    private String zzqq = "ad.doubleclick.net";
    private String[] zzqr = new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private zzcp zzqt;

    public zzcu(zzcp zzcp) {
        this.zzqt = zzcp;
    }

    private final Uri zza(Uri uri, Context context, String str, boolean z, View view) throws zzcv {
        try {
            boolean zzb = zzb(uri);
            if (zzb) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzcv("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzcv("Query parameter already exists: ms");
            }
            String zza = z ? this.zzqt.zza(context, str, view) : this.zzqt.zza(context);
            String str2;
            String uri2;
            int indexOf;
            StringBuilder stringBuilder;
            if (zzb) {
                str2 = "dc_ms";
                uri2 = uri.toString();
                indexOf = uri2.indexOf(";adurl");
                if (indexOf != -1) {
                    indexOf++;
                    stringBuilder = new StringBuilder(uri2.substring(0, indexOf));
                    stringBuilder.append(str2);
                    stringBuilder.append("=");
                    stringBuilder.append(zza);
                    stringBuilder.append(";");
                    stringBuilder.append(uri2.substring(indexOf));
                    return Uri.parse(stringBuilder.toString());
                }
                String encodedPath = uri.getEncodedPath();
                int indexOf2 = uri2.indexOf(encodedPath);
                StringBuilder stringBuilder2 = new StringBuilder(uri2.substring(0, encodedPath.length() + indexOf2));
                stringBuilder2.append(";");
                stringBuilder2.append(str2);
                stringBuilder2.append("=");
                stringBuilder2.append(zza);
                stringBuilder2.append(";");
                stringBuilder2.append(uri2.substring(indexOf2 + encodedPath.length()));
                return Uri.parse(stringBuilder2.toString());
            }
            str2 = "ms";
            uri2 = uri.toString();
            indexOf = uri2.indexOf("&adurl");
            if (indexOf == -1) {
                indexOf = uri2.indexOf("?adurl");
            }
            if (indexOf == -1) {
                return uri.buildUpon().appendQueryParameter(str2, zza).build();
            }
            indexOf++;
            stringBuilder = new StringBuilder(uri2.substring(0, indexOf));
            stringBuilder.append(str2);
            stringBuilder.append("=");
            stringBuilder.append(zza);
            stringBuilder.append("&");
            stringBuilder.append(uri2.substring(indexOf));
            return Uri.parse(stringBuilder.toString());
        } catch (UnsupportedOperationException unused) {
            throw new zzcv("Provided Uri is not in a valid state");
        }
    }

    private final boolean zzb(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzqq);
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final zzcp zzB() {
        return this.zzqt;
    }

    public final Uri zza(Uri uri, Context context) throws zzcv {
        return zza(uri, context, null, false, null);
    }

    public final Uri zza(Uri uri, Context context, View view) throws zzcv {
        try {
            return zza(uri, context, uri.getQueryParameter("ai"), true, view);
        } catch (UnsupportedOperationException unused) {
            throw new zzcv("Provided Uri is not in a valid state");
        }
    }

    public final void zza(MotionEvent motionEvent) {
        this.zzqt.zza(motionEvent);
    }

    public final boolean zza(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            if (uri.getHost().equals(this.zzqo) && uri.getPath().equals(this.zzqp)) {
                return true;
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final void zzb(String str, String str2) {
        this.zzqo = str;
        this.zzqp = str2;
    }

    public final boolean zzc(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String endsWith : this.zzqr) {
                if (host.endsWith(endsWith)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final boolean zzd(Uri uri) {
        if (zzc(uri)) {
            for (String endsWith : zzqs) {
                if (uri.getPath().endsWith(endsWith)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void zzk(String str) {
        this.zzqr = str.split(",");
    }
}
