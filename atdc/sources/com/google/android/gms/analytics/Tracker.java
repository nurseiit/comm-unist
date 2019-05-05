package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzamh;
import com.google.android.gms.internal.zzamj;
import com.google.android.gms.internal.zzaoa;
import com.google.android.gms.internal.zzaor;
import com.google.android.gms.internal.zzaos;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;

public class Tracker extends zzamh {
    private final Map<String, String> zzHa = new HashMap();
    private boolean zzaeo;
    private final Map<String, String> zzaep = new HashMap();
    private final zzaoa zzaeq;
    private final zza zzaer;
    private ExceptionReporter zzaes;
    private zzaor zzaet;

    class zza extends zzamh implements zza {
        private boolean zzaeC;
        private int zzaeD;
        private long zzaeE = -1;
        private boolean zzaeF;
        private long zzaeG;

        protected zza(zzamj zzamj) {
            super(zzamj);
        }

        private final void zzjF() {
            if (this.zzaeE >= 0 || this.zzaeC) {
                zzku().zza(Tracker.this.zzaer);
            } else {
                zzku().zzb(Tracker.this.zzaer);
            }
        }

        public final void enableAutoActivityTracking(boolean z) {
            this.zzaeC = z;
            zzjF();
        }

        public final void setSessionTimeout(long j) {
            this.zzaeE = j;
            zzjF();
        }

        /* Access modifiers changed, original: protected|final */
        public final void zzjD() {
        }

        public final synchronized boolean zzjE() {
            boolean z;
            z = this.zzaeF;
            this.zzaeF = false;
            return z;
        }

        public final void zzl(Activity activity) {
            if (this.zzaeD == 0) {
                if ((zzkq().elapsedRealtime() >= this.zzaeG + Math.max(1000, this.zzaeE) ? 1 : null) != null) {
                    this.zzaeF = true;
                }
            }
            this.zzaeD++;
            if (this.zzaeC) {
                String canonicalName;
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Tracker.this.setCampaignParamsOnNextHit(intent.getData());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("&t", "screenview");
                Tracker tracker = Tracker.this;
                String str = "&cd";
                if (Tracker.this.zzaet != null) {
                    zzaor zzk = Tracker.this.zzaet;
                    canonicalName = activity.getClass().getCanonicalName();
                    String str2 = (String) zzk.zzaiN.get(canonicalName);
                    if (str2 != null) {
                        canonicalName = str2;
                    }
                } else {
                    canonicalName = activity.getClass().getCanonicalName();
                }
                tracker.set(str, canonicalName);
                if (TextUtils.isEmpty((CharSequence) hashMap.get("&dr"))) {
                    zzbo.zzu(activity);
                    Intent intent2 = activity.getIntent();
                    CharSequence charSequence = null;
                    if (intent2 != null) {
                        String stringExtra = intent2.getStringExtra("android.intent.extra.REFERRER_NAME");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            charSequence = stringExtra;
                        }
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        hashMap.put("&dr", charSequence);
                    }
                }
                Tracker.this.send(hashMap);
            }
        }

        public final void zzm(Activity activity) {
            this.zzaeD--;
            this.zzaeD = Math.max(0, this.zzaeD);
            if (this.zzaeD == 0) {
                this.zzaeG = zzkq().elapsedRealtime();
            }
        }
    }

    Tracker(zzamj zzamj, String str, zzaoa zzaoa) {
        super(zzamj);
        if (str != null) {
            this.zzHa.put("&tid", str);
        }
        this.zzHa.put("useSecure", "1");
        this.zzHa.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        this.zzaeq = new zzaoa("tracking", zzkq());
        this.zzaer = new zza(zzamj);
    }

    private static String zza(Entry<String, String> entry) {
        String str = (String) entry.getKey();
        entry.getValue();
        Object obj = (!str.startsWith("&") || str.length() < 2) ? null : 1;
        return obj == null ? null : ((String) entry.getKey()).substring(1);
    }

    private static void zzb(Map<String, String> map, Map<String, String> map2) {
        zzbo.zzu(map2);
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String zza = zza(entry);
                if (zza != null) {
                    map2.put(zza, (String) entry.getValue());
                }
            }
        }
    }

    private static void zzc(Map<String, String> map, Map<String, String> map2) {
        zzbo.zzu(map2);
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String zza = zza(entry);
                if (!(zza == null || map2.containsKey(zza))) {
                    map2.put(zza, (String) entry.getValue());
                }
            }
        }
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzaeo = z;
    }

    public void enableAutoActivityTracking(boolean z) {
        this.zzaer.enableAutoActivityTracking(z);
    }

    public void enableExceptionReporting(boolean z) {
        synchronized (this) {
            if ((this.zzaes != null) == z) {
                return;
            }
            String str;
            if (z) {
                this.zzaes = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), getContext());
                Thread.setDefaultUncaughtExceptionHandler(this.zzaes);
                str = "Uncaught exceptions will be reported to Google Analytics";
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this.zzaes.zzjn());
                str = "Uncaught exceptions will not be reported to Google Analytics";
            }
            zzbo(str);
        }
    }

    public String get(String str) {
        zzkD();
        return TextUtils.isEmpty(str) ? null : this.zzHa.containsKey(str) ? (String) this.zzHa.get(str) : str.equals("&ul") ? zzaos.zza(Locale.getDefault()) : str.equals("&cid") ? zzkz().zzli() : str.equals("&sr") ? zzkC().zzlB() : str.equals("&aid") ? zzkB().zzkW().zzhl() : str.equals("&an") ? zzkB().zzkW().zzjG() : str.equals("&av") ? zzkB().zzkW().zzjH() : str.equals("&aiid") ? zzkB().zzkW().zzjI() : null;
    }

    public void send(Map<String, String> map) {
        long currentTimeMillis = zzkq().currentTimeMillis();
        if (zzku().getAppOptOut()) {
            zzbp("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        boolean isDryRunEnabled = zzku().isDryRunEnabled();
        HashMap hashMap = new HashMap();
        zzb(this.zzHa, hashMap);
        zzb(map, hashMap);
        boolean zzf = zzaos.zzf((String) this.zzHa.get("useSecure"), true);
        zzc(this.zzaep, hashMap);
        this.zzaep.clear();
        String str = (String) hashMap.get("t");
        if (TextUtils.isEmpty(str)) {
            zzkr().zze(hashMap, "Missing hit type parameter");
            return;
        }
        String str2 = (String) hashMap.get("tid");
        if (TextUtils.isEmpty(str2)) {
            zzkr().zze(hashMap, "Missing tracking id parameter");
            return;
        }
        boolean z = this.zzaeo;
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int parseInt = Integer.parseInt((String) this.zzHa.get("&a")) + 1;
                if (parseInt >= Integer.MAX_VALUE) {
                    parseInt = 1;
                }
                this.zzHa.put("&a", Integer.toString(parseInt));
            }
        }
        zzkt().zzf(new zzp(this, hashMap, z, str, currentTimeMillis, isDryRunEnabled, zzf, str2));
    }

    public void set(String str, String str2) {
        zzbo.zzb((Object) str, (Object) "Key should be non-null");
        if (!TextUtils.isEmpty(str)) {
            this.zzHa.put(str, str2);
        }
    }

    public void setAnonymizeIp(boolean z) {
        set("&aip", zzaos.zzI(z));
    }

    public void setAppId(String str) {
        set("&aid", str);
    }

    public void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public void setAppName(String str) {
        set("&an", str);
    }

    public void setAppVersion(String str) {
        set("&av", str);
    }

    public void setCampaignParamsOnNextHit(Uri uri) {
        if (uri != null && !uri.isOpaque()) {
            String queryParameter = uri.getQueryParameter("referrer");
            if (!TextUtils.isEmpty(queryParameter)) {
                String str = "http://hostname/?";
                queryParameter = String.valueOf(queryParameter);
                uri = Uri.parse(queryParameter.length() != 0 ? str.concat(queryParameter) : new String(str));
                str = uri.getQueryParameter("utm_id");
                if (str != null) {
                    this.zzaep.put("&ci", str);
                }
                str = uri.getQueryParameter("anid");
                if (str != null) {
                    this.zzaep.put("&anid", str);
                }
                str = uri.getQueryParameter("utm_campaign");
                if (str != null) {
                    this.zzaep.put("&cn", str);
                }
                str = uri.getQueryParameter("utm_content");
                if (str != null) {
                    this.zzaep.put("&cc", str);
                }
                str = uri.getQueryParameter("utm_medium");
                if (str != null) {
                    this.zzaep.put("&cm", str);
                }
                str = uri.getQueryParameter("utm_source");
                if (str != null) {
                    this.zzaep.put("&cs", str);
                }
                str = uri.getQueryParameter("utm_term");
                if (str != null) {
                    this.zzaep.put("&ck", str);
                }
                str = uri.getQueryParameter("dclid");
                if (str != null) {
                    this.zzaep.put("&dclid", str);
                }
                str = uri.getQueryParameter("gclid");
                if (str != null) {
                    this.zzaep.put("&gclid", str);
                }
                queryParameter = uri.getQueryParameter(Param.ACLID);
                if (queryParameter != null) {
                    this.zzaep.put("&aclid", queryParameter);
                }
            }
        }
    }

    public void setClientId(String str) {
        set("&cid", str);
    }

    public void setEncoding(String str) {
        set("&de", str);
    }

    public void setHostname(String str) {
        set("&dh", str);
    }

    public void setLanguage(String str) {
        set("&ul", str);
    }

    public void setLocation(String str) {
        set("&dl", str);
    }

    public void setPage(String str) {
        set("&dp", str);
    }

    public void setReferrer(String str) {
        set("&dr", str);
    }

    public void setSampleRate(double d) {
        set("&sf", Double.toString(d));
    }

    public void setScreenColors(String str) {
        set("&sd", str);
    }

    public void setScreenName(String str) {
        set("&cd", str);
    }

    public void setScreenResolution(int i, int i2) {
        if (i >= 0 || i2 >= 0) {
            StringBuilder stringBuilder = new StringBuilder(23);
            stringBuilder.append(i);
            stringBuilder.append("x");
            stringBuilder.append(i2);
            set("&sr", stringBuilder.toString());
            return;
        }
        zzbr("Invalid width or height. The values should be non-negative.");
    }

    public void setSessionTimeout(long j) {
        this.zzaer.setSessionTimeout(j * 1000);
    }

    public void setTitle(String str) {
        set("&dt", str);
    }

    public void setUseSecure(boolean z) {
        set("useSecure", zzaos.zzI(z));
    }

    public void setViewportSize(String str) {
        set("&vp", str);
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzaor zzaor) {
        String str;
        boolean z;
        zzbo("Loading Tracker config values");
        this.zzaet = zzaor;
        boolean z2 = false;
        if ((this.zzaet.zzado != null ? 1 : null) != null) {
            str = this.zzaet.zzado;
            set("&tid", str);
            zza("trackingId loaded", str);
        }
        if ((this.zzaet.zzaiI >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : null) != null) {
            str = Double.toString(this.zzaet.zzaiI);
            set("&sf", str);
            zza("Sample frequency loaded", str);
        }
        if ((this.zzaet.zzaiJ >= 0 ? 1 : null) != null) {
            int i = this.zzaet.zzaiJ;
            setSessionTimeout((long) i);
            zza("Session timeout loaded", Integer.valueOf(i));
        }
        if (this.zzaet.zzaiK != -1) {
            z = this.zzaet.zzaiK == 1;
            enableAutoActivityTracking(z);
            zza("Auto activity tracking loaded", Boolean.valueOf(z));
        }
        if (this.zzaet.zzaiL != -1) {
            z = this.zzaet.zzaiL == 1;
            if (z) {
                set("&aip", "1");
            }
            zza("Anonymize ip loaded", Boolean.valueOf(z));
        }
        if (this.zzaet.zzaiM == 1) {
            z2 = true;
        }
        enableExceptionReporting(z2);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        this.zzaer.initialize();
        String zzjG = zzkx().zzjG();
        if (zzjG != null) {
            set("&an", zzjG);
        }
        zzjG = zzkx().zzjH();
        if (zzjG != null) {
            set("&av", zzjG);
        }
    }
}
