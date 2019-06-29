package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.R;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzby;

@Deprecated
public final class zzbdm {
    private static zzbdm zzaEB;
    private static final Object zzuF = new Object();
    private final String mAppId;
    private final Status zzaEC;
    private final boolean zzaED;
    private final boolean zzaEE;

    private zzbdm(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue));
        boolean z = true;
        if (identifier != 0) {
            if (resources.getInteger(identifier) == 0) {
                z = false;
            }
            this.zzaEE = z ^ 1;
        } else {
            this.zzaEE = false;
        }
        this.zzaED = z;
        CharSequence zzaD = zzbd.zzaD(context);
        if (zzaD == null) {
            zzaD = new zzby(context).getString("google_app_id");
        }
        if (TextUtils.isEmpty(zzaD)) {
            this.zzaEC = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.mAppId = null;
            return;
        }
        this.mAppId = zzaD;
        this.zzaEC = Status.zzaBm;
    }

    public static Status zzaz(Context context) {
        Status status;
        zzbo.zzb((Object) context, (Object) "Context must not be null.");
        synchronized (zzuF) {
            if (zzaEB == null) {
                zzaEB = new zzbdm(context);
            }
            status = zzaEB.zzaEC;
        }
        return status;
    }

    private static zzbdm zzcu(String str) {
        zzbdm zzbdm;
        synchronized (zzuF) {
            if (zzaEB == null) {
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 34);
                stringBuilder.append("Initialize must be called before ");
                stringBuilder.append(str);
                stringBuilder.append(".");
                throw new IllegalStateException(stringBuilder.toString());
            }
            zzbdm = zzaEB;
        }
        return zzbdm;
    }

    public static String zzqA() {
        return zzcu("getGoogleAppId").mAppId;
    }

    public static boolean zzqB() {
        return zzcu("isMeasurementExplicitlyDisabled").zzaEE;
    }
}
