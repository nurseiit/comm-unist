package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement;

public final class zzcfl extends zzchj {
    private final String zzaIb = zzcem.zzxf();
    private final long zzboC = zzcem.zzwP();
    private final char zzbqL;
    private final zzcfn zzbqM;
    private final zzcfn zzbqN;
    private final zzcfn zzbqO;
    private final zzcfn zzbqP;
    private final zzcfn zzbqQ;
    private final zzcfn zzbqR;
    private final zzcfn zzbqS;
    private final zzcfn zzbqT;
    private final zzcfn zzbqU;

    zzcfl(zzcgl zzcgl) {
        char c;
        super(zzcgl);
        if (super.zzwH().zzln()) {
            zzcem.zzxE();
            c = 'C';
        } else {
            zzcem.zzxE();
            c = 'c';
        }
        this.zzbqL = c;
        this.zzbqM = new zzcfn(this, 6, false, false);
        this.zzbqN = new zzcfn(this, 6, true, false);
        this.zzbqO = new zzcfn(this, 6, false, true);
        this.zzbqP = new zzcfn(this, 5, false, false);
        this.zzbqQ = new zzcfn(this, 5, true, false);
        this.zzbqR = new zzcfn(this, 5, false, true);
        this.zzbqS = new zzcfn(this, 4, false, false);
        this.zzbqT = new zzcfn(this, 3, false, false);
        this.zzbqU = new zzcfn(this, 2, false, false);
    }

    private static String zza(boolean z, String str, Object obj, Object obj2, Object obj3) {
        CharSequence str2;
        if (str2 == null) {
            str2 = "";
        }
        String zzc = zzc(z, obj);
        String zzc2 = zzc(z, obj2);
        String zzc3 = zzc(z, obj3);
        StringBuilder stringBuilder = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            stringBuilder.append(str2);
            str3 = ": ";
        }
        if (!TextUtils.isEmpty(zzc)) {
            stringBuilder.append(str3);
            stringBuilder.append(zzc);
            str3 = ", ";
        }
        if (!TextUtils.isEmpty(zzc2)) {
            stringBuilder.append(str3);
            stringBuilder.append(zzc2);
            str3 = ", ";
        }
        if (!TextUtils.isEmpty(zzc3)) {
            stringBuilder.append(str3);
            stringBuilder.append(zzc3);
        }
        return stringBuilder.toString();
    }

    private static String zzc(boolean z, Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf((long) ((Integer) obj).intValue());
        }
        int i = 0;
        String valueOf;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            obj = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1)));
            long round2 = Math.round(Math.pow(10.0d, (double) valueOf.length()) - 1.0d);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(obj).length() + 43) + String.valueOf(obj).length());
            stringBuilder.append(obj);
            stringBuilder.append(round);
            stringBuilder.append("...");
            stringBuilder.append(obj);
            stringBuilder.append(round2);
            return stringBuilder.toString();
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            if (!(obj instanceof Throwable)) {
                return obj instanceof zzcfo ? ((zzcfo) obj).zzbqZ : z ? "-" : String.valueOf(obj);
            } else {
                Throwable th = (Throwable) obj;
                StringBuilder stringBuilder2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                valueOf = zzea(AppMeasurement.class.getCanonicalName());
                String zzea = zzea(zzcgl.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (i < length) {
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod()) {
                        String className = stackTraceElement.getClassName();
                        if (className != null) {
                            className = zzea(className);
                            if (className.equals(valueOf) || className.equals(zzea)) {
                                stringBuilder2.append(": ");
                                stringBuilder2.append(stackTraceElement);
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
                return stringBuilder2.toString();
            }
        }
    }

    protected static Object zzdZ(String str) {
        return str == null ? null : new zzcfo(str);
    }

    private static String zzea(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && zzz(i)) {
            zzk(i, zza(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            String str2;
            zzbo.zzu(str);
            zzcgg zzyR = this.zzboe.zzyR();
            if (zzyR == null) {
                str2 = "Scheduler not set. Not logging error/warn";
            } else if (zzyR.isInitialized()) {
                if (i < 0) {
                    i = 0;
                }
                if (i >= 9) {
                    i = 8;
                }
                String valueOf = String.valueOf("2");
                char charAt = "01VDIWEA?".charAt(i);
                char c = this.zzbqL;
                long j = this.zzboC;
                String valueOf2 = String.valueOf(zza(true, str, obj, obj2, obj3));
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 23) + String.valueOf(valueOf2).length());
                stringBuilder.append(valueOf);
                stringBuilder.append(charAt);
                stringBuilder.append(c);
                stringBuilder.append(j);
                stringBuilder.append(":");
                stringBuilder.append(valueOf2);
                str2 = stringBuilder.toString();
                if (str2.length() > 1024) {
                    str2 = str.substring(0, 1024);
                }
                zzyR.zzj(new zzcfm(this, str2));
            } else {
                str2 = "Scheduler not initialized. Not logging error/warn";
            }
            zzk(6, str2);
        }
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzk(int i, String str) {
        Log.println(i, this.zzaIb, str);
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
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

    public final zzcfn zzyA() {
        return this.zzbqR;
    }

    public final zzcfn zzyB() {
        return this.zzbqS;
    }

    public final zzcfn zzyC() {
        return this.zzbqT;
    }

    public final zzcfn zzyD() {
        return this.zzbqU;
    }

    public final String zzyE() {
        Pair zzmb = super.zzwG().zzbrj.zzmb();
        if (zzmb == null || zzmb == zzcfw.zzbri) {
            return null;
        }
        String valueOf = String.valueOf(String.valueOf(zzmb.second));
        String str = (String) zzmb.first;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(str).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(":");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public final zzcfn zzyx() {
        return this.zzbqM;
    }

    public final zzcfn zzyy() {
        return this.zzbqN;
    }

    public final zzcfn zzyz() {
        return this.zzbqP;
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzz(int i) {
        return Log.isLoggable(this.zzaIb, i);
    }
}
