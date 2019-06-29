package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzafk implements zzags, zzgy {
    private Context mContext;
    private final Object mLock = new Object();
    private final String mSessionId = zzagz.zzhP();
    private String zzJP;
    private boolean zzVf = true;
    private boolean zzVg = true;
    private boolean zzVh = true;
    private boolean zzVp = false;
    private Boolean zzYA = null;
    private boolean zzYB = false;
    private boolean zzYC = false;
    private boolean zzYD = false;
    private String zzYE = "";
    private long zzYF = 0;
    private long zzYG = 0;
    private long zzYH = 0;
    private int zzYI = -1;
    private JSONObject zzYJ = new JSONObject();
    private int zzYK = 0;
    private final AtomicInteger zzYL = new AtomicInteger(0);
    private final zzafl zzYq = new zzafl(this.mSessionId);
    private BigInteger zzYr = BigInteger.ONE;
    private final HashSet<zzafh> zzYs = new HashSet();
    private final HashMap<String, zzafn> zzYt = new HashMap();
    private boolean zzYu = false;
    private int zzYv = 0;
    private zzmr zzYw = null;
    private zzgz zzYx = null;
    private String zzYy;
    private String zzYz;
    private zzfh zzsR;
    private zzaje zztW;
    private boolean zzuH = false;
    private zzgu zzyy = null;

    public zzafk(zzagz zzagz) {
    }

    private final Future zzj(long j) {
        Future zza;
        synchronized (this.mLock) {
            this.zzYG = j;
            zza = zzaft.zza(this.mContext, j);
        }
        return zza;
    }

    private final Future zzy(int i) {
        Future zzb;
        synchronized (this.mLock) {
            this.zzYI = i;
            zzb = zzaft.zzb(this.mContext, i);
        }
        return zzb;
    }

    public final Resources getResources() {
        if (this.zztW.zzaaQ) {
            return this.mContext.getResources();
        }
        try {
            DynamiteModule zza = DynamiteModule.zza(this.mContext, DynamiteModule.zzaSL, ModuleDescriptor.MODULE_ID);
            return zza != null ? zza.zztC().getResources() : null;
        } catch (zzc e) {
            zzajc.zzc("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final String getSessionId() {
        return this.mSessionId;
    }

    /* JADX WARNING: Missing block: B:30:0x007c, code skipped:
            return null;
     */
    public final com.google.android.gms.internal.zzgz zzA(android.content.Context r5) {
        /*
        r4 = this;
        r0 = com.google.android.gms.internal.zzmo.zzCT;
        r1 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r0 = r1.zzd(r0);
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        r1 = 0;
        if (r0 != 0) goto L_0x0014;
    L_0x0013:
        return r1;
    L_0x0014:
        r0 = com.google.android.gms.internal.zzmo.zzDb;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r0 = r2.zzd(r0);
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0039;
    L_0x0026:
        r0 = com.google.android.gms.internal.zzmo.zzCZ;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r0 = r2.zzd(r0);
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0039;
    L_0x0038:
        return r1;
    L_0x0039:
        r0 = r4.zzhn();
        if (r0 == 0) goto L_0x0046;
    L_0x003f:
        r0 = r4.zzho();
        if (r0 == 0) goto L_0x0046;
    L_0x0045:
        return r1;
    L_0x0046:
        r0 = r4.mLock;
        monitor-enter(r0);
        r2 = android.os.Looper.getMainLooper();	 Catch:{ all -> 0x007d }
        if (r2 == 0) goto L_0x007b;
    L_0x004f:
        if (r5 != 0) goto L_0x0052;
    L_0x0051:
        goto L_0x007b;
    L_0x0052:
        r5 = r4.zzyy;	 Catch:{ all -> 0x007d }
        if (r5 != 0) goto L_0x005d;
    L_0x0056:
        r5 = new com.google.android.gms.internal.zzgu;	 Catch:{ all -> 0x007d }
        r5.<init>();	 Catch:{ all -> 0x007d }
        r4.zzyy = r5;	 Catch:{ all -> 0x007d }
    L_0x005d:
        r5 = r4.zzYx;	 Catch:{ all -> 0x007d }
        if (r5 != 0) goto L_0x0072;
    L_0x0061:
        r5 = new com.google.android.gms.internal.zzgz;	 Catch:{ all -> 0x007d }
        r1 = r4.zzyy;	 Catch:{ all -> 0x007d }
        r2 = r4.mContext;	 Catch:{ all -> 0x007d }
        r3 = r4.zztW;	 Catch:{ all -> 0x007d }
        r2 = com.google.android.gms.internal.zzzi.zzc(r2, r3);	 Catch:{ all -> 0x007d }
        r5.<init>(r1, r2);	 Catch:{ all -> 0x007d }
        r4.zzYx = r5;	 Catch:{ all -> 0x007d }
    L_0x0072:
        r5 = r4.zzYx;	 Catch:{ all -> 0x007d }
        r5.zzcM();	 Catch:{ all -> 0x007d }
        r5 = r4.zzYx;	 Catch:{ all -> 0x007d }
        monitor-exit(r0);	 Catch:{ all -> 0x007d }
        return r5;
    L_0x007b:
        monitor-exit(r0);	 Catch:{ all -> 0x007d }
        return r1;
    L_0x007d:
        r5 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x007d }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzafk.zzA(android.content.Context):com.google.android.gms.internal.zzgz");
    }

    public final Bundle zza(Context context, zzafm zzafm, String str) {
        Bundle bundle;
        synchronized (this.mLock) {
            bundle = new Bundle();
            bundle.putBundle("app", this.zzYq.zzo(context, str));
            Bundle bundle2 = new Bundle();
            for (String str2 : this.zzYt.keySet()) {
                bundle2.putBundle(str2, ((zzafn) this.zzYt.get(str2)).toBundle());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzYs.iterator();
            while (it.hasNext()) {
                arrayList.add(((zzafh) it.next()).toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            zzafm.zza(this.zzYs);
            this.zzYs.clear();
        }
        return bundle;
    }

    public final void zza(zzafh zzafh) {
        synchronized (this.mLock) {
            this.zzYs.add(zzafh);
        }
    }

    public final void zza(Boolean bool) {
        synchronized (this.mLock) {
            this.zzYA = bool;
        }
    }

    public final void zza(String str, zzafn zzafn) {
        synchronized (this.mLock) {
            this.zzYt.put(str, zzafn);
        }
    }

    public final void zza(Throwable th, String str) {
        zzzi.zzc(this.mContext, this.zztW).zza(th, str);
    }

    public final Future zzaF(String str) {
        synchronized (this.mLock) {
            if (str != null) {
                try {
                    if (!str.equals(this.zzYy)) {
                        this.zzYy = str;
                        Future zzp = zzaft.zzp(this.mContext, str);
                        return zzp;
                    }
                } catch (Throwable th) {
                }
            }
            return null;
        }
    }

    public final Future zzaG(String str) {
        synchronized (this.mLock) {
            if (str != null) {
                try {
                    if (!str.equals(this.zzYz)) {
                        this.zzYz = str;
                        Future zzq = zzaft.zzq(this.mContext, str);
                        return zzq;
                    }
                } catch (Throwable th) {
                }
            }
            return null;
        }
    }

    public final Future zzb(Context context, String str, String str2, boolean z) {
        synchronized (this.mLock) {
            JSONArray optJSONArray = this.zzYJ.optJSONArray(str);
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            }
            int length = optJSONArray.length();
            int i = 0;
            while (i < optJSONArray.length()) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject == null || !str2.equals(optJSONObject.optString("template_id"))) {
                    i++;
                } else if (z && optJSONObject.optBoolean("uses_media_view", false) == z) {
                    return null;
                } else {
                    length = i;
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", zzbs.zzbF().currentTimeMillis());
                optJSONArray.put(length, jSONObject);
                this.zzYJ.put(str, optJSONArray);
            } catch (JSONException e) {
                zzajc.zzc("Could not update native advanced settings", e);
            }
            Future zzr = zzaft.zzr(this.mContext, this.zzYJ.toString());
            return zzr;
        }
    }

    public final void zzb(HashSet<zzafh> hashSet) {
        synchronized (this.mLock) {
            this.zzYs.addAll(hashSet);
        }
    }

    @TargetApi(23)
    public final void zzd(Context context, zzaje zzaje) {
        synchronized (this.mLock) {
            if (!this.zzuH) {
                this.mContext = context.getApplicationContext();
                this.zztW = zzaje;
                zzbs.zzbC().zza(this);
                zzaft.zza(context, (zzags) this);
                zzaft.zzb(context, (zzags) this);
                zzaft.zzh(context, (zzags) this);
                zzaft.zzf(context, this);
                zzaft.zzc(context, this);
                zzaft.zzd(context, this);
                zzaft.zze(context, (zzags) this);
                zzaft.zzg(context, (zzags) this);
                zzaft.zzi(context, this);
                zzaft.zzj(context, this);
                zzaft.zzk(context, this);
                zzzi.zzc(this.mContext, this.zztW);
                this.zzJP = zzbs.zzbz().zzs(context, zzaje.zzaP);
                if (VERSION.SDK_INT >= 23 && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    this.zzYC = true;
                }
                this.zzsR = new zzfh(context.getApplicationContext(), this.zztW, zzbs.zzbz().zze(context, zzaje));
                zzmq zzmq = new zzmq(this.mContext, this.zztW.zzaP);
                try {
                    zzbs.zzbG();
                    this.zzYw = zzmt.zza(zzmq);
                } catch (IllegalArgumentException e) {
                    zzajc.zzc("Cannot initialize CSI reporter.", e);
                }
                this.zzuH = true;
            }
        }
    }

    public final Future zze(Context context, boolean z) {
        synchronized (this.mLock) {
            if (z != this.zzVf) {
                this.zzVf = z;
                Future zze = zzaft.zze(context, z);
                return zze;
            }
            return null;
        }
    }

    public final Future zzf(Context context, boolean z) {
        synchronized (this.mLock) {
            if (z != this.zzVp) {
                this.zzVp = z;
                Future zzh = zzaft.zzh(context, z);
                return zzh;
            }
            return null;
        }
    }

    public final void zzf(Bundle bundle) {
        synchronized (this.mLock) {
            this.zzVf = bundle.getBoolean("use_https", this.zzVf);
            this.zzYv = bundle.getInt("webview_cache_version", this.zzYv);
            if (bundle.containsKey("content_url_opted_out")) {
                zzx(bundle.getBoolean("content_url_opted_out"));
            }
            if (bundle.containsKey("content_url_hashes")) {
                this.zzYy = bundle.getString("content_url_hashes");
            }
            this.zzVp = bundle.getBoolean("auto_collect_location", this.zzVp);
            if (bundle.containsKey("content_vertical_opted_out")) {
                zzy(bundle.getBoolean("content_vertical_opted_out"));
            }
            if (bundle.containsKey("content_vertical_hashes")) {
                this.zzYz = bundle.getString("content_vertical_hashes");
            }
            if (bundle.containsKey("native_advanced_settings")) {
                try {
                    this.zzYJ = new JSONObject(bundle.getString("native_advanced_settings"));
                } catch (JSONException e) {
                    zzajc.zzc("Could not convert native advanced settings to json object", e);
                }
            }
            if (bundle.containsKey("version_code")) {
                this.zzYK = bundle.getInt("version_code");
            }
            this.zzYE = bundle.containsKey("app_settings_json") ? bundle.getString("app_settings_json") : this.zzYE;
            this.zzYF = bundle.getLong("app_settings_last_update_ms", this.zzYF);
            this.zzYG = bundle.getLong("app_last_background_time_ms", this.zzYG);
            this.zzYI = bundle.getInt("request_in_session_count", this.zzYI);
            this.zzYH = bundle.getLong("first_ad_req_time_ms", this.zzYH);
        }
    }

    public final void zzf(boolean z) {
        long currentTimeMillis = zzbs.zzbF().currentTimeMillis();
        if (z) {
            if (currentTimeMillis - this.zzYG > ((Long) zzbs.zzbL().zzd(zzmo.zzDL)).longValue()) {
                this.zzYq.zzYI = -1;
                return;
            }
            this.zzYq.zzYI = this.zzYI;
            return;
        }
        zzj(currentTimeMillis);
        zzy(this.zzYq.zzYI);
    }

    public final int zzhA() {
        int i;
        synchronized (this.mLock) {
            i = this.zzYK;
        }
        return i;
    }

    /* Access modifiers changed, original: final */
    public final int zzhB() {
        int i;
        synchronized (this.mLock) {
            i = this.zzYI;
        }
        return i;
    }

    public final boolean zzhC() {
        return this.zzYD;
    }

    public final zzafj zzhD() {
        zzafj zzafj;
        synchronized (this.mLock) {
            zzafj = new zzafj(this.zzYE, this.zzYF);
        }
        return zzafj;
    }

    public final JSONObject zzhE() {
        JSONObject jSONObject;
        synchronized (this.mLock) {
            jSONObject = this.zzYJ;
        }
        return jSONObject;
    }

    public final Future zzhF() {
        Future zzC;
        synchronized (this.mLock) {
            zzC = zzaft.zzC(this.mContext);
        }
        return zzC;
    }

    public final zzfh zzhG() {
        return this.zzsR;
    }

    public final void zzhH() {
        this.zzYL.incrementAndGet();
    }

    public final void zzhI() {
        this.zzYL.decrementAndGet();
    }

    public final int zzhJ() {
        return this.zzYL.get();
    }

    public final boolean zzhn() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzVg;
        }
        return z;
    }

    public final boolean zzho() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzVh;
        }
        return z;
    }

    public final String zzhp() {
        String bigInteger;
        synchronized (this.mLock) {
            bigInteger = this.zzYr.toString();
            this.zzYr = this.zzYr.add(BigInteger.ONE);
        }
        return bigInteger;
    }

    public final zzafl zzhq() {
        zzafl zzafl;
        synchronized (this.mLock) {
            zzafl = this.zzYq;
        }
        return zzafl;
    }

    public final zzmr zzhr() {
        zzmr zzmr;
        synchronized (this.mLock) {
            zzmr = this.zzYw;
        }
        return zzmr;
    }

    public final boolean zzhs() {
        boolean z;
        synchronized (this.mLock) {
            if (!this.zzVf) {
                if (!this.zzYC) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public final String zzht() {
        String str;
        synchronized (this.mLock) {
            str = this.zzJP;
        }
        return str;
    }

    public final String zzhu() {
        String str;
        synchronized (this.mLock) {
            str = this.zzYy;
        }
        return str;
    }

    public final String zzhv() {
        String str;
        synchronized (this.mLock) {
            str = this.zzYz;
        }
        return str;
    }

    public final Boolean zzhw() {
        Boolean bool;
        synchronized (this.mLock) {
            bool = this.zzYA;
        }
        return bool;
    }

    public final boolean zzhx() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzVp;
        }
        return z;
    }

    /* Access modifiers changed, original: final */
    public final long zzhy() {
        long j;
        synchronized (this.mLock) {
            j = this.zzYG;
        }
        return j;
    }

    /* Access modifiers changed, original: final */
    public final long zzhz() {
        long j;
        synchronized (this.mLock) {
            j = this.zzYH;
        }
        return j;
    }

    /* Access modifiers changed, original: final */
    public final Future zzk(long j) {
        Future zzb;
        synchronized (this.mLock) {
            this.zzYH = j;
            zzb = zzaft.zzb(this.mContext, j);
        }
        return zzb;
    }

    public final Future zzn(Context context, String str) {
        this.zzYF = zzbs.zzbF().currentTimeMillis();
        synchronized (this.mLock) {
            if (str != null) {
                try {
                    if (!str.equals(this.zzYE)) {
                        this.zzYE = str;
                        Future zza = zzaft.zza(context, str, this.zzYF);
                        return zza;
                    }
                } catch (Throwable th) {
                }
            }
            return null;
        }
    }

    public final Future zzx(int i) {
        Future zza;
        synchronized (this.mLock) {
            this.zzYK = i;
            zza = zzaft.zza(this.mContext, i);
        }
        return zza;
    }

    public final void zzx(boolean z) {
        synchronized (this.mLock) {
            if (this.zzVg != z) {
                zzaft.zzg(this.mContext, z);
            }
            this.zzVg = z;
            zzgz zzA = zzA(this.mContext);
            if (!(zzA == null || zzA.isAlive())) {
                zzajc.zzaS("start fetching content...");
                zzA.zzcM();
            }
        }
    }

    public final void zzy(boolean z) {
        synchronized (this.mLock) {
            if (this.zzVh != z) {
                zzaft.zzg(this.mContext, z);
            }
            zzaft.zzg(this.mContext, z);
            this.zzVh = z;
            zzgz zzA = zzA(this.mContext);
            if (!(zzA == null || zzA.isAlive())) {
                zzajc.zzaS("start fetching content...");
                zzA.zzcM();
            }
        }
    }

    public final void zzz(boolean z) {
        this.zzYD = z;
    }
}
