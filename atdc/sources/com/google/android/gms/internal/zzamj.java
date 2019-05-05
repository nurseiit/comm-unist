package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzl;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;

public class zzamj {
    private static volatile zzamj zzafM;
    private final Context mContext;
    private final Context zzafN;
    private final zzank zzafO = new zzank(this);
    private final zzaoc zzafP;
    private final zzl zzafQ;
    private final zzaly zzafR;
    private final zzanp zzafS;
    private final zzaot zzafT;
    private final zzaog zzafU;
    private final GoogleAnalytics zzafV;
    private final zzanb zzafW;
    private final zzalx zzafX;
    private final zzamu zzafY;
    private final zzano zzafZ;
    private final zze zzvw = zzi.zzrY();

    private zzamj(zzaml zzaml) {
        Object applicationContext = zzaml.getApplicationContext();
        zzbo.zzb(applicationContext, (Object) "Application context can't be null");
        Context zzkE = zzaml.zzkE();
        zzbo.zzu(zzkE);
        this.mContext = applicationContext;
        this.zzafN = zzkE;
        zzaoc zzaoc = new zzaoc(this);
        zzaoc.initialize();
        this.zzafP = zzaoc;
        zzaoc = zzkr();
        String str = zzami.VERSION;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 134);
        stringBuilder.append("Google Analytics ");
        stringBuilder.append(str);
        stringBuilder.append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4");
        zzaoc.zzbq(stringBuilder.toString());
        zzaog zzaog = new zzaog(this);
        zzaog.initialize();
        this.zzafU = zzaog;
        zzaot zzaot = new zzaot(this);
        zzaot.initialize();
        this.zzafT = zzaot;
        zzaly zzaly = new zzaly(this, zzaml);
        zzanb zzanb = new zzanb(this);
        zzalx zzalx = new zzalx(this);
        zzamu zzamu = new zzamu(this);
        zzano zzano = new zzano(this);
        zzl zzae = zzl.zzae(applicationContext);
        zzae.zza(new zzamk(this));
        this.zzafQ = zzae;
        GoogleAnalytics googleAnalytics = new GoogleAnalytics(this);
        zzanb.initialize();
        this.zzafW = zzanb;
        zzalx.initialize();
        this.zzafX = zzalx;
        zzamu.initialize();
        this.zzafY = zzamu;
        zzano.initialize();
        this.zzafZ = zzano;
        zzanp zzanp = new zzanp(this);
        zzanp.initialize();
        this.zzafS = zzanp;
        zzaly.initialize();
        this.zzafR = zzaly;
        googleAnalytics.initialize();
        this.zzafV = googleAnalytics;
        zzaly.start();
    }

    private static void zza(zzamh zzamh) {
        zzbo.zzb((Object) zzamh, (Object) "Analytics service not created/initialized");
        zzbo.zzb(zzamh.isInitialized(), (Object) "Analytics service not initialized");
    }

    public static zzamj zzaf(Context context) {
        zzbo.zzu(context);
        if (zzafM == null) {
            synchronized (zzamj.class) {
                if (zzafM == null) {
                    zze zzrY = zzi.zzrY();
                    long elapsedRealtime = zzrY.elapsedRealtime();
                    zzamj zzamj = new zzamj(new zzaml(context));
                    zzafM = zzamj;
                    GoogleAnalytics.zzjo();
                    long elapsedRealtime2 = zzrY.elapsedRealtime() - elapsedRealtime;
                    long longValue = ((Long) zzans.zzahU.get()).longValue();
                    if (elapsedRealtime2 > longValue) {
                        zzamj.zzkr().zzc("Slow initialization (ms)", Long.valueOf(elapsedRealtime2), Long.valueOf(longValue));
                    }
                }
            }
        }
        return zzafM;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final zzamu zzkB() {
        zza(this.zzafY);
        return this.zzafY;
    }

    public final zzano zzkC() {
        return this.zzafZ;
    }

    public final Context zzkE() {
        return this.zzafN;
    }

    public final zzaoc zzkF() {
        return this.zzafP;
    }

    public final GoogleAnalytics zzkG() {
        zzbo.zzu(this.zzafV);
        zzbo.zzb(this.zzafV.isInitialized(), (Object) "Analytics instance not initialized");
        return this.zzafV;
    }

    public final zzaog zzkH() {
        return (this.zzafU == null || !this.zzafU.isInitialized()) ? null : this.zzafU;
    }

    public final zzalx zzkI() {
        zza(this.zzafX);
        return this.zzafX;
    }

    public final zzanb zzkJ() {
        zza(this.zzafW);
        return this.zzafW;
    }

    public final zze zzkq() {
        return this.zzvw;
    }

    public final zzaoc zzkr() {
        zza(this.zzafP);
        return this.zzafP;
    }

    public final zzank zzks() {
        return this.zzafO;
    }

    public final zzl zzkt() {
        zzbo.zzu(this.zzafQ);
        return this.zzafQ;
    }

    public final zzaly zzkv() {
        zza(this.zzafR);
        return this.zzafR;
    }

    public final zzanp zzkw() {
        zza(this.zzafS);
        return this.zzafS;
    }

    public final zzaot zzkx() {
        zza(this.zzafT);
        return this.zzafT;
    }

    public final zzaog zzky() {
        zza(this.zzafU);
        return this.zzafU;
    }
}
