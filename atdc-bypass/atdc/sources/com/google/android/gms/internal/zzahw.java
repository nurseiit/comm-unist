package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.androidnetworking.common.ANConstants;
import com.google.android.gms.ads.internal.zzbs;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzahw {
    private final Object mLock = new Object();
    private String zzZK = "";
    private String zzZL = "";
    private boolean zzZM = false;
    private String zzZN = "";

    private final String zzT(Context context) {
        String str;
        synchronized (this.mLock) {
            if (TextUtils.isEmpty(this.zzZK)) {
                zzbs.zzbz();
                this.zzZK = zzagz.zzt(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.zzZK)) {
                    zzbs.zzbz();
                    this.zzZK = zzagz.zzhO();
                    zzbs.zzbz();
                    zzagz.zze(context, "debug_signals_id.txt", this.zzZK);
                }
            }
            str = this.zzZK;
        }
        return str;
    }

    private final void zza(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzagz.zzZr.post(new zzahx(this, context, str, z, z2));
        } else {
            zzajc.zzaS("Can not create dialog without Activity Context");
        }
    }

    private final Uri zzb(Context context, String str, String str2, String str3) {
        Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", zzT(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    private final boolean zzh(Context context, String str, String str2) {
        String zzj = zzj(context, zzb(context, (String) zzbs.zzbL().zzd(zzmo.zzGu), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzj)) {
            zzajc.zzaC("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzj.trim());
            zzj = jSONObject.optString("gct");
            this.zzZN = jSONObject.optString("status");
            synchronized (this.mLock) {
                this.zzZL = zzj;
            }
            return true;
        } catch (JSONException e) {
            zzajc.zzc("Fail to get in app preview response json.", e);
            return false;
        }
    }

    private final boolean zzi(Context context, String str, String str2) {
        String zzj = zzj(context, zzb(context, (String) zzbs.zzbL().zzd(zzmo.zzGv), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzj)) {
            zzajc.zzaC("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzj.trim()).optString("debug_mode"));
            synchronized (this.mLock) {
                this.zzZM = equals;
            }
            return equals;
        } catch (JSONException e) {
            zzajc.zzc("Fail to get debug mode response json.", e);
            return false;
        }
    }

    private static String zzj(Context context, String str, String str2) {
        Throwable e;
        String str3;
        HashMap hashMap = new HashMap();
        hashMap.put(ANConstants.USER_AGENT, zzbs.zzbz().zzs(context, str2));
        zzajm zzb = new zzaie(context).zzb(str, hashMap);
        try {
            return (String) zzb.get((long) ((Integer) zzbs.zzbL().zzd(zzmo.zzGx)).intValue(), TimeUnit.MILLISECONDS);
        } catch (TimeoutException e2) {
            e = e2;
            str3 = "Timeout while retriving a response from: ";
            str = String.valueOf(str);
            if (str.length() == 0) {
                str = new String(str3);
                zzajc.zzb(str, e);
                zzb.cancel(true);
                return null;
            }
            str = str3.concat(str);
            zzajc.zzb(str, e);
            zzb.cancel(true);
            return null;
        } catch (InterruptedException e3) {
            e = e3;
            str3 = "Interrupted while retriving a response from: ";
            str = String.valueOf(str);
            if (str.length() == 0) {
                str = new String(str3);
                zzajc.zzb(str, e);
                zzb.cancel(true);
                return null;
            }
            str = str3.concat(str);
            zzajc.zzb(str, e);
            zzb.cancel(true);
            return null;
        } catch (Exception e4) {
            str2 = "Error retriving a response from: ";
            str = String.valueOf(str);
            zzajc.zzb(str.length() != 0 ? str2.concat(str) : new String(str2), e4);
            return null;
        }
    }

    private final void zzk(Context context, String str, String str2) {
        zzbs.zzbz();
        zzagz.zza(context, zzb(context, (String) zzbs.zzbL().zzd(zzmo.zzGt), str, str2));
    }

    public final void zza(Context context, String str, String str2, String str3) {
        Builder buildUpon = zzb(context, (String) zzbs.zzbL().zzd(zzmo.zzGw), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzbs.zzbz();
        zzagz.zzd(context, str, buildUpon.build().toString());
    }

    public final void zzf(Context context, String str, String str2) {
        if (!zzh(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(this.zzZN)) {
            zzajc.zzaC("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.zzZN)) {
            zzajc.zzaC("The app is not linked for creative preview.");
            zzk(context, str, str2);
        } else {
            if ("0".equals(this.zzZN)) {
                zzajc.zzaC("Device is linked for in app preview.");
                zza(context, "The device is successfully linked for creative preview.", false, true);
            }
        }
    }

    public final void zzg(Context context, String str, String str2) {
        if (zzi(context, str, str2)) {
            zzajc.zzaC("Device is linked for debug signals.");
            zza(context, "The device is successfully linked for troubleshooting.", false, true);
            return;
        }
        zzk(context, str, str2);
    }

    public final String zzib() {
        String str;
        synchronized (this.mLock) {
            str = this.zzZL;
        }
        return str;
    }

    public final boolean zzic() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzZM;
        }
        return z;
    }
}
