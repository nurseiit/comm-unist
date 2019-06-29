package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzr;
import com.google.android.gms.common.zze;
import java.lang.reflect.InvocationTargetException;

public final class zzcem extends zzchi {
    private static String zzbpm = String.valueOf(zze.GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    private Boolean zzagU;

    zzcem(zzcgl zzcgl) {
        super(zzcgl);
    }

    public static boolean zzqB() {
        return zzbdm.zzqB();
    }

    public static long zzwP() {
        return 11020;
    }

    static long zzxA() {
        return 61000;
    }

    static long zzxB() {
        return ((Long) zzcfb.zzbqB.get()).longValue();
    }

    public static String zzxC() {
        return "google_app_measurement.db";
    }

    static String zzxD() {
        return "google_app_measurement_local.db";
    }

    public static boolean zzxE() {
        return false;
    }

    public static long zzxG() {
        return ((Long) zzcfb.zzbqy.get()).longValue();
    }

    public static long zzxH() {
        return ((Long) zzcfb.zzbqt.get()).longValue();
    }

    public static long zzxI() {
        return ((Long) zzcfb.zzbqu.get()).longValue();
    }

    public static long zzxJ() {
        return 1000;
    }

    public static long zzxK() {
        return Math.max(0, ((Long) zzcfb.zzbpX.get()).longValue());
    }

    public static int zzxL() {
        return Math.max(0, ((Integer) zzcfb.zzbqd.get()).intValue());
    }

    public static int zzxM() {
        return Math.max(1, ((Integer) zzcfb.zzbqe.get()).intValue());
    }

    public static int zzxN() {
        return 100000;
    }

    public static String zzxO() {
        return (String) zzcfb.zzbql.get();
    }

    public static long zzxP() {
        return ((Long) zzcfb.zzbpY.get()).longValue();
    }

    public static long zzxQ() {
        return Math.max(0, ((Long) zzcfb.zzbqm.get()).longValue());
    }

    public static long zzxR() {
        return Math.max(0, ((Long) zzcfb.zzbqo.get()).longValue());
    }

    public static long zzxS() {
        return Math.max(0, ((Long) zzcfb.zzbqp.get()).longValue());
    }

    public static long zzxT() {
        return Math.max(0, ((Long) zzcfb.zzbqq.get()).longValue());
    }

    public static long zzxU() {
        return Math.max(0, ((Long) zzcfb.zzbqr.get()).longValue());
    }

    public static long zzxV() {
        return Math.max(0, ((Long) zzcfb.zzbqs.get()).longValue());
    }

    public static long zzxW() {
        return ((Long) zzcfb.zzbqn.get()).longValue();
    }

    public static long zzxX() {
        return Math.max(0, ((Long) zzcfb.zzbqv.get()).longValue());
    }

    public static long zzxY() {
        return Math.max(0, ((Long) zzcfb.zzbqw.get()).longValue());
    }

    public static int zzxZ() {
        return Math.min(20, Math.max(0, ((Integer) zzcfb.zzbqx.get()).intValue()));
    }

    static String zzxf() {
        return (String) zzcfb.zzbpV.get();
    }

    public static int zzxg() {
        return 25;
    }

    public static int zzxh() {
        return 40;
    }

    public static int zzxi() {
        return 24;
    }

    static int zzxj() {
        return 40;
    }

    static int zzxk() {
        return 100;
    }

    static int zzxl() {
        return 256;
    }

    static int zzxm() {
        return 1000;
    }

    public static int zzxn() {
        return 36;
    }

    public static int zzxo() {
        return 2048;
    }

    static int zzxp() {
        return 500;
    }

    public static long zzxq() {
        return (long) ((Integer) zzcfb.zzbqf.get()).intValue();
    }

    public static long zzxr() {
        return (long) ((Integer) zzcfb.zzbqh.get()).intValue();
    }

    static int zzxs() {
        return 25;
    }

    static int zzxt() {
        return 1000;
    }

    static int zzxu() {
        return 25;
    }

    static int zzxv() {
        return 1000;
    }

    static long zzxw() {
        return 15552000000L;
    }

    static long zzxx() {
        return 15552000000L;
    }

    static long zzxy() {
        return 3600000;
    }

    static long zzxz() {
        return 60000;
    }

    public static boolean zzyb() {
        return ((Boolean) zzcfb.zzbpU.get()).booleanValue();
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final long zza(String str, zzcfc<Long> zzcfc) {
        if (str != null) {
            str = super.zzwC().zzM(str, zzcfc.getKey());
            if (!TextUtils.isEmpty(str)) {
                try {
                    return ((Long) zzcfc.get(Long.valueOf(Long.valueOf(str).longValue()))).longValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return ((Long) zzcfc.get()).longValue();
    }

    public final int zzb(String str, zzcfc<Integer> zzcfc) {
        if (str != null) {
            str = super.zzwC().zzM(str, zzcfc.getKey());
            if (!TextUtils.isEmpty(str)) {
                try {
                    return ((Integer) zzcfc.get(Integer.valueOf(Integer.valueOf(str).intValue()))).intValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return ((Integer) zzcfc.get()).intValue();
    }

    public final int zzdM(@Size(min = 1) String str) {
        return zzb(str, zzcfb.zzbqj);
    }

    /* Access modifiers changed, original: final */
    @Nullable
    public final Boolean zzdN(@Size(min = 1) String str) {
        zzbo.zzcF(str);
        try {
            if (super.getContext().getPackageManager() == null) {
                super.zzwF().zzyx().log("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = zzbha.zzaP(super.getContext()).getApplicationInfo(super.getContext().getPackageName(), 128);
            if (applicationInfo == null) {
                super.zzwF().zzyx().log("Failed to load metadata: ApplicationInfo is null");
                return null;
            } else if (applicationInfo.metaData != null) {
                return !applicationInfo.metaData.containsKey(str) ? null : Boolean.valueOf(applicationInfo.metaData.getBoolean(str));
            } else {
                super.zzwF().zzyx().log("Failed to load metadata: Metadata bundle is null");
                return null;
            }
        } catch (NameNotFoundException e) {
            super.zzwF().zzyx().zzj("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final boolean zzdO(String str) {
        return "1".equals(super.zzwC().zzM(str, "gaia_collection_enabled"));
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zzkq() {
        return super.zzkq();
    }

    public final boolean zzln() {
        if (this.zzagU == null) {
            synchronized (this) {
                if (this.zzagU == null) {
                    ApplicationInfo applicationInfo = super.getContext().getApplicationInfo();
                    String zzsf = zzr.zzsf();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = str != null && str.equals(zzsf);
                        this.zzagU = Boolean.valueOf(z);
                    }
                    if (this.zzagU == null) {
                        this.zzagU = Boolean.TRUE;
                        super.zzwF().zzyx().log("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzagU.booleanValue();
    }

    public final /* bridge */ /* synthetic */ zzcfj zzwA() {
        return super.zzwA();
    }

    public final /* bridge */ /* synthetic */ zzcjl zzwB() {
        return super.zzwB();
    }

    public final /* bridge */ /* synthetic */ zzcgf zzwC() {
        return super.zzwC();
    }

    public final /* bridge */ /* synthetic */ zzcja zzwD() {
        return super.zzwD();
    }

    public final /* bridge */ /* synthetic */ zzcgg zzwE() {
        return super.zzwE();
    }

    public final /* bridge */ /* synthetic */ zzcfl zzwF() {
        return super.zzwF();
    }

    public final /* bridge */ /* synthetic */ zzcfw zzwG() {
        return super.zzwG();
    }

    public final /* bridge */ /* synthetic */ zzcem zzwH() {
        return super.zzwH();
    }

    public final /* bridge */ /* synthetic */ void zzwo() {
        super.zzwo();
    }

    public final /* bridge */ /* synthetic */ void zzwp() {
        super.zzwp();
    }

    public final /* bridge */ /* synthetic */ void zzwq() {
        super.zzwq();
    }

    public final /* bridge */ /* synthetic */ zzcec zzwr() {
        return super.zzwr();
    }

    public final /* bridge */ /* synthetic */ zzcej zzws() {
        return super.zzws();
    }

    public final /* bridge */ /* synthetic */ zzchl zzwt() {
        return super.zzwt();
    }

    public final /* bridge */ /* synthetic */ zzcfg zzwu() {
        return super.zzwu();
    }

    public final /* bridge */ /* synthetic */ zzcet zzwv() {
        return super.zzwv();
    }

    public final /* bridge */ /* synthetic */ zzcid zzww() {
        return super.zzww();
    }

    public final /* bridge */ /* synthetic */ zzchz zzwx() {
        return super.zzwx();
    }

    public final /* bridge */ /* synthetic */ zzcfh zzwy() {
        return super.zzwy();
    }

    public final /* bridge */ /* synthetic */ zzcen zzwz() {
        return super.zzwz();
    }

    public final boolean zzxF() {
        Boolean zzdN = zzdN("firebase_analytics_collection_deactivated");
        return zzdN != null && zzdN.booleanValue();
    }

    public final String zzya() {
        Object e;
        zzcfn zzyx;
        String str;
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{"debug.firebase.analytics.app", ""});
        } catch (ClassNotFoundException e2) {
            e = e2;
            zzyx = super.zzwF().zzyx();
            str = "Could not find SystemProperties class";
            zzyx.zzj(str, e);
            return "";
        } catch (NoSuchMethodException e3) {
            e = e3;
            zzyx = super.zzwF().zzyx();
            str = "Could not find SystemProperties.get() method";
            zzyx.zzj(str, e);
            return "";
        } catch (IllegalAccessException e4) {
            e = e4;
            zzyx = super.zzwF().zzyx();
            str = "Could not access SystemProperties.get()";
            zzyx.zzj(str, e);
            return "";
        } catch (InvocationTargetException e5) {
            e = e5;
            zzyx = super.zzwF().zzyx();
            str = "SystemProperties.get() threw an exception";
            zzyx.zzj(str, e);
            return "";
        }
    }
}
