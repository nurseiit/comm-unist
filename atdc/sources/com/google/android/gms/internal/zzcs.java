package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzbs;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class zzcs extends zzcq {
    private static final String TAG = "zzcs";
    @VisibleForTesting
    private static boolean initialized = false;
    private static long startTime;
    private static volatile zzdb zzpJ;
    private static Object zzqj = new Object();
    protected boolean zzqk = false;
    private String zzql;
    private boolean zzqm = false;
    private boolean zzqn = false;

    protected zzcs(Context context, String str) {
        super(context);
        this.zzql = str;
        this.zzqk = false;
    }

    protected zzcs(Context context, String str, boolean z) {
        super(context);
        this.zzql = str;
        this.zzqk = z;
    }

    private static zzdf zza(zzdb zzdb, MotionEvent motionEvent, DisplayMetrics displayMetrics) throws zzcy {
        Method zzc = zzdb.zzc("7OKu9eBgadNAt0os6Yom9Fc4Z+g/QG9jOe+s+JAGcO8yKBHrGX1guBev/xXHxnY1", "oyXxJz1/0whZ1sjpKwx6gZrLwCk4v4rbcD6dwdNy6Cs=");
        if (zzc == null || motionEvent == null) {
            throw new zzcy();
        }
        try {
            return new zzdf((String) zzc.invoke(null, new Object[]{motionEvent, displayMetrics}));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzcy(e);
        }
    }

    protected static synchronized void zza(Context context, boolean z) {
        synchronized (zzcs.class) {
            if (!initialized) {
                startTime = zzdg.zzR().longValue() / 1000;
                zzpJ = zzb(context, z);
                initialized = true;
            }
        }
    }

    protected static void zza(List<Callable<Void>> list) {
        if (zzpJ != null) {
            ExecutorService zzC = zzpJ.zzC();
            if (!(zzC == null || list.isEmpty())) {
                try {
                    zzC.invokeAll(list, ((Long) zzbs.zzbL().zzd(zzmo.zzEN)).longValue(), TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    Log.d(TAG, String.format("class methods got exception: %s", new Object[]{zzdg.zza(e)}));
                }
            }
        }
    }

    private static zzdb zzb(Context context, boolean z) {
        if (zzpJ == null) {
            synchronized (zzqj) {
                if (zzpJ == null) {
                    zzdb zza = zzdb.zza(context, "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", z);
                    if (zza.isInitialized()) {
                        zza.zza("Ob9vkrYwqwLnJveTtaSWm/WWJCjo/9DRtOCY3btkKa6pJtjMu6sI0iK41HSh10io", "UrT94Dq3ubetC7rQ64nVjqMQ53po9X61geGgrP+ILCU=", Context.class);
                        zza.zza("3K8ELf0l97OoJkLZ8w0j1a7PyOLXhiU05fzwfJl+q5R78K5HrzBW+Y6Q9dHwMhs9", "b/KmM8qxPHQsR3T0CZ/F1d5gVFlEyl3WbrFOrFCfLkc=", Context.class);
                        zza.zza("y/7Ec+Kioax0ZYAEH/NiuXIsrXhfXjhFi2F/nP/uGkIQw7jUhBGY0W6baOqNedZ3", "0cd3YaSrpW7P/AkpW4/onj4SWvDEhcgrou0hv6tCD+s=", Context.class);
                        zza.zza("lzCo36nc7XBNxigvUEYksuBFsczDyb5Knn+0+OBVmAuGHrrIrxjgxEWtsLNUGdmh", "zUtdaly7f7RI0b3U/Ak3WbCr4NUUCFrNIppHHrQ+Up0=", Context.class);
                        zza.zza("Vd8F7XEjcopfPCqIo7UkH81gSF32pH8ICaByQHEDSARI1QZSSarfP6NUtOQ3X7FJ", "SC+voVwtFTxxanSuPBwO3gUspzEVAamsN8QrPnkhp0Y=", Context.class);
                        zza.zza("Oqhihr+ZvNwej7GnFvAZoFFN+/Dv8PoAOgFukKxDQRFkh0v6oq6svnLeRKh0PLMP", "7HSsIYWO+RMRoavsc1DDhaz46/CevFwPfCYPy/bWw2c=", Context.class);
                        zza.zza("+qJmoUGbbPFGT5cJqhcbMwFJCJD+zdsNFeU33HQsfBwCMUy52xVClKiKRlJSjJkA", "ZdvpwpF09ah9qMkbMMBkQbN3G9MUkP5Jgcz6nA07dkM=", Context.class);
                        zza.zza("NXaY56AtLwFcN+ekuuF2nJfd0TyeY8q5k/4jDq8aCw7dTKyZ2J/G7hTL+F9OtE+b", "IRJV9vmlQsYenNEwAJnRXRcX4jgQUq/mhLu9dLiWkF0=", Context.class);
                        zza.zza("7OKu9eBgadNAt0os6Yom9Fc4Z+g/QG9jOe+s+JAGcO8yKBHrGX1guBev/xXHxnY1", "oyXxJz1/0whZ1sjpKwx6gZrLwCk4v4rbcD6dwdNy6Cs=", MotionEvent.class, DisplayMetrics.class);
                        zza.zza("7KqrGXdk/af3XqeV7Kdf9PbIbh3C1JbHd2XfO7vMbAGonJ11eSDtjbVaiMZyTrse", "J+RI1JNo03xly9SRWO99cvEQhgdX6x+RL8PvxYQsPic=", MotionEvent.class, DisplayMetrics.class, Integer.TYPE);
                        zza.zza("wFR9IVBeC3DxjLUHG4VrPvC6sFnF3i6EXAzgF2FV6F/P1tVIxRsZCqzBo3bMqAjw", "FngGcM4uMQo5eKR2FwSlMJnWgsaWh19tKknwKd4tbUk=", new Class[0]);
                        zza.zza("poItj6KYBt5BdnGUyKVpTqoJe9uUrbj0v36XCagBsYjc7oBvjejRtfaJj7hby90a", "qrGvg6pF9No4qMDhGfUiE0qkqx8DIEI1ObOP4v8z9Vw=", new Class[0]);
                        zza.zza("WFWMehHtsFVdDUEDmR6QBWCVOt7vhsukeVfF7GyA4nJfn/HGydHkg9TxbsV2ogHJ", "anxhUuNThpd2uUrKqPFlUd7Xx/0GNeeVxwSMkxx8/S8=", new Class[0]);
                        zza.zza("D/UUEAj6b2Mlzt93EqUc0ecxuQkFtjBjbwXxowRDAJrg0neoMkyf1TZxyfD/n/R+", "XHiP8GJo+im4O4z0srsKg+iMpuUpknn3IyfTXGI6thg=", new Class[0]);
                        zza.zza("z4IUOMEUJJwo87MrwW0oo5MuoOqDlnlQo6iV4pjz2VLab+vfSTsypn6zr+NoPrYU", "L28yi1GnuU8llvgZA5ti7bBAlAb8V1oFU13C+ZO3hWQ=", new Class[0]);
                        zza.zza("8e8MBQUUwetJXHXD+OHa6GoKdEoeWcCKvJd/0LAqmt67vps6BIKdZS4FehPCaFQs", "SqEbpmL0PRd8OMIcAaTW+Qm/eIldjoaBC5+hIpZQMKI=", new Class[0]);
                        zza.zza("ljgMduD5kKPhK6qoocDB5WikkD/CX1UhLGscwfIdkLacCDlfdaQLvcdlCLYlVWEY", "PQw299M+gyZAcirIo44nMA1T6aZFSbwBV2vuW7mK5no=", Context.class, Boolean.TYPE);
                        zza.zza("93FZcx3TGairtssuo4NaSvmwhnBdBRfmG43cez1s4nHLHJg1A/3UR3k+fui87zaI", "8yXffwi9xD4yRk9s3bzlCsp78O1cQWIN/y7cfZ1O0xQ=", StackTraceElement[].class);
                        zza.zza("085nDtgvdnF/9q+L3rbTJRP85nBeHpWsnwPQ5NbQuGUMVoHq922oSf9teCh818O7", "U6RyofmU5fe6F6Q76ZqotRxwCpQcx2ZA3KAIkgaYO1E=", View.class, DisplayMetrics.class, Boolean.TYPE);
                    }
                    zzpJ = zza;
                }
            }
        }
        return zzpJ;
    }

    /* Access modifiers changed, original: protected|final */
    public final long zza(StackTraceElement[] stackTraceElementArr) throws zzcy {
        Method zzc = zzpJ.zzc("93FZcx3TGairtssuo4NaSvmwhnBdBRfmG43cez1s4nHLHJg1A/3UR3k+fui87zaI", "8yXffwi9xD4yRk9s3bzlCsp78O1cQWIN/y7cfZ1O0xQ=");
        if (zzc == null || stackTraceElementArr == null) {
            throw new zzcy();
        }
        try {
            return new zzcz((String) zzc.invoke(null, new Object[]{stackTraceElementArr})).zzqy.longValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzcy(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public zzax zza(Context context, View view) {
        List list;
        zzax zzax = new zzax();
        if (!TextUtils.isEmpty(this.zzql)) {
            zzax.zzaP = this.zzql;
        }
        zzdb zzb = zzb(context, this.zzqk);
        zzb.zzP();
        int i = 0;
        if (zzb.isInitialized()) {
            try {
                zzdf zza = zza(zzb, this.zzpP, this.zzqh);
                zzax.zzbk = zza.zzqZ;
                zzax.zzbl = zza.zzra;
                zzax.zzbm = zza.zzrb;
                if (this.zzqg) {
                    zzax.zzby = zza.zzcd;
                    zzax.zzbz = zza.zzcb;
                }
            } catch (zzcy unused) {
            }
            zzay zzay = new zzay();
            if (this.zzpR > 0) {
                int intValue = ((Integer) zzbs.zzbL().zzd(zzmo.zzET)).intValue();
                if (!(this.zzqh == null || this.zzqh.density == 0.0f)) {
                    if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEU)).booleanValue()) {
                        zzay.zzcl = Long.valueOf(Math.round((this.zzpY * ((double) intValue)) / ((double) this.zzqh.density)));
                    }
                }
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEV)).booleanValue()) {
                    float f = (float) intValue;
                    zzay.zzcm = Long.valueOf(Math.round((double) ((this.zzqd - this.zzqb) * f)));
                    zzay.zzcn = Long.valueOf(Math.round((double) ((this.zzqe - this.zzqc) * f)));
                    zzay.zzcq = Long.valueOf((long) Math.round(this.zzqb * f));
                    zzay.zzcr = Long.valueOf((long) Math.round(this.zzqc * f));
                }
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEX)).booleanValue() && this.zzqg && this.zzpP != null) {
                    float f2 = (float) intValue;
                    long round = (long) Math.round((((this.zzqb - this.zzqd) + this.zzpP.getRawX()) - this.zzpP.getX()) * f2);
                    if (round != 0) {
                        zzay.zzco = Long.valueOf(round);
                    }
                    long round2 = (long) Math.round((((this.zzqc - this.zzqe) + this.zzpP.getRawY()) - this.zzpP.getY()) * f2);
                    if (round2 != 0) {
                        zzay.zzcp = Long.valueOf(round2);
                    }
                }
            }
            try {
                zzdf zzb2 = zzb(this.zzpP);
                zzay.zzbk = zzb2.zzqZ;
                zzay.zzbl = zzb2.zzra;
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEW)).booleanValue()) {
                    zzay.zzcs = zzb2.zzrg;
                    zzay.zzct = zzb2.zzrh;
                }
                zzay.zzcg = zzb2.zzrb;
                if (this.zzqg) {
                    zzay.zzcb = zzb2.zzcb;
                    zzay.zzcd = zzb2.zzcd;
                    zzay.zzcf = Integer.valueOf(zzb2.zzrc.longValue() != 0 ? 1 : 0);
                    if (this.zzpS > 0) {
                        zzay.zzcc = this.zzqh != null ? Long.valueOf(Math.round(((double) this.zzpX) / ((double) this.zzpS))) : null;
                        zzay.zzce = Long.valueOf(Math.round(((double) this.zzpW) / ((double) this.zzpS)));
                    }
                    zzay.zzci = zzb2.zzci;
                    zzay.zzch = zzb2.zzch;
                    zzay.zzcj = Integer.valueOf(zzb2.zzrf.longValue() != 0 ? 1 : 0);
                }
            } catch (zzcy unused2) {
            }
            if (this.zzpV > 0) {
                zzay.zzck = Long.valueOf(this.zzpV);
            }
            zzax.zzbP = zzay;
            if (this.zzpR > 0) {
                zzax.zzbD = Long.valueOf(this.zzpR);
            }
            if (this.zzpS > 0) {
                zzax.zzbC = Long.valueOf(this.zzpS);
            }
            if (this.zzpT > 0) {
                zzax.zzbB = Long.valueOf(this.zzpT);
            }
            if (this.zzpU > 0) {
                zzax.zzbE = Long.valueOf(this.zzpU);
            }
            try {
                int size = this.zzpQ.size() - 1;
                if (size > 0) {
                    zzax.zzbQ = new zzay[size];
                    while (i < size) {
                        zzdf zza2 = zza(zzpJ, (MotionEvent) this.zzpQ.get(i), this.zzqh);
                        zzay zzay2 = new zzay();
                        zzay2.zzbk = zza2.zzqZ;
                        zzay2.zzbl = zza2.zzra;
                        zzax.zzbQ[i] = zzay2;
                        i++;
                    }
                }
            } catch (zzcy unused3) {
                zzax.zzbQ = null;
            }
            ArrayList arrayList = new ArrayList();
            if (zzb.zzC() != null) {
                int zzy = zzb.zzy();
                arrayList.add(new zzdq(zzb, zzax));
                zzdb zzdb = zzb;
                zzax zzax2 = zzax;
                arrayList.add(new zzdt(zzdb, "WFWMehHtsFVdDUEDmR6QBWCVOt7vhsukeVfF7GyA4nJfn/HGydHkg9TxbsV2ogHJ", "anxhUuNThpd2uUrKqPFlUd7Xx/0GNeeVxwSMkxx8/S8=", zzax2, zzy, 1));
                arrayList.add(new zzdo(zzdb, "wFR9IVBeC3DxjLUHG4VrPvC6sFnF3i6EXAzgF2FV6F/P1tVIxRsZCqzBo3bMqAjw", "FngGcM4uMQo5eKR2FwSlMJnWgsaWh19tKknwKd4tbUk=", zzax2, startTime, zzy, 25));
                arrayList.add(new zzdn(zzdb, "D/UUEAj6b2Mlzt93EqUc0ecxuQkFtjBjbwXxowRDAJrg0neoMkyf1TZxyfD/n/R+", "XHiP8GJo+im4O4z0srsKg+iMpuUpknn3IyfTXGI6thg=", zzax2, zzy, 44));
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzES)).booleanValue()) {
                    arrayList.add(new zzds(zzb, "Vd8F7XEjcopfPCqIo7UkH81gSF32pH8ICaByQHEDSARI1QZSSarfP6NUtOQ3X7FJ", "SC+voVwtFTxxanSuPBwO3gUspzEVAamsN8QrPnkhp0Y=", zzax, zzy, 12));
                }
                zzdb = zzb;
                zzax2 = zzax;
                int i2 = zzy;
                arrayList.add(new zzdi(zzdb, "Oqhihr+ZvNwej7GnFvAZoFFN+/Dv8PoAOgFukKxDQRFkh0v6oq6svnLeRKh0PLMP", "7HSsIYWO+RMRoavsc1DDhaz46/CevFwPfCYPy/bWw2c=", zzax2, i2, 3));
                arrayList.add(new zzdr(zzdb, "z4IUOMEUJJwo87MrwW0oo5MuoOqDlnlQo6iV4pjz2VLab+vfSTsypn6zr+NoPrYU", "L28yi1GnuU8llvgZA5ti7bBAlAb8V1oFU13C+ZO3hWQ=", zzax2, i2, 22));
                arrayList.add(new zzdm(zzdb, "lzCo36nc7XBNxigvUEYksuBFsczDyb5Knn+0+OBVmAuGHrrIrxjgxEWtsLNUGdmh", "zUtdaly7f7RI0b3U/Ak3WbCr4NUUCFrNIppHHrQ+Up0=", zzax2, i2, 5));
                arrayList.add(new zzdy(zzdb, "+qJmoUGbbPFGT5cJqhcbMwFJCJD+zdsNFeU33HQsfBwCMUy52xVClKiKRlJSjJkA", "ZdvpwpF09ah9qMkbMMBkQbN3G9MUkP5Jgcz6nA07dkM=", zzax2, i2, 48));
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEQ)).booleanValue()) {
                    arrayList.add(new zzdj(zzb, "NXaY56AtLwFcN+ekuuF2nJfd0TyeY8q5k/4jDq8aCw7dTKyZ2J/G7hTL+F9OtE+b", "IRJV9vmlQsYenNEwAJnRXRcX4jgQUq/mhLu9dLiWkF0=", zzax, zzy, 49));
                }
                zzdb = zzb;
                zzax2 = zzax;
                i2 = zzy;
                arrayList.add(new zzdw(zzdb, "8e8MBQUUwetJXHXD+OHa6GoKdEoeWcCKvJd/0LAqmt67vps6BIKdZS4FehPCaFQs", "SqEbpmL0PRd8OMIcAaTW+Qm/eIldjoaBC5+hIpZQMKI=", zzax2, i2, 51));
                arrayList.add(new zzdv(zzdb, "93FZcx3TGairtssuo4NaSvmwhnBdBRfmG43cez1s4nHLHJg1A/3UR3k+fui87zaI", "8yXffwi9xD4yRk9s3bzlCsp78O1cQWIN/y7cfZ1O0xQ=", zzax2, i2, 45, new Throwable().getStackTrace()));
                arrayList.add(new zzdz(zzdb, "085nDtgvdnF/9q+L3rbTJRP85nBeHpWsnwPQ5NbQuGUMVoHq922oSf9teCh818O7", "U6RyofmU5fe6F6Q76ZqotRxwCpQcx2ZA3KAIkgaYO1E=", zzax2, i2, 57, view));
            }
            list = arrayList;
        } else {
            zzax.zzbq = Long.valueOf(PlaybackStateCompat.ACTION_PREPARE);
            list = Arrays.asList(new Callable[]{new zzdq(zzb, zzax)});
        }
        zza(list);
        zzb.zzQ();
        return zzax;
    }

    /* Access modifiers changed, original: protected|final */
    public final zzax zza(Context context, zzau zzau) {
        zzax zzax = new zzax();
        if (!TextUtils.isEmpty(this.zzql)) {
            zzax.zzaP = this.zzql;
        }
        zzdb zzb = zzb(context, this.zzqk);
        zzb.zzP();
        zza(zzb, zzax, zzau);
        zzb.zzQ();
        return zzax;
    }

    /* Access modifiers changed, original: protected */
    public void zza(zzdb zzdb, zzax zzax, zzau zzau) {
        if (zzdb.zzC() != null) {
            zza(zzb(zzdb, zzax, zzau));
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final zzdf zzb(MotionEvent motionEvent) throws zzcy {
        Method zzc = zzpJ.zzc("7KqrGXdk/af3XqeV7Kdf9PbIbh3C1JbHd2XfO7vMbAGonJ11eSDtjbVaiMZyTrse", "J+RI1JNo03xly9SRWO99cvEQhgdX6x+RL8PvxYQsPic=");
        if (zzc == null || motionEvent == null) {
            throw new zzcy();
        }
        try {
            Object[] objArr = new Object[3];
            objArr[0] = motionEvent;
            objArr[1] = this.zzqh;
            objArr[2] = zzbs.zzbL().zzd(zzmo.zzET);
            return new zzdf((String) zzc.invoke(null, objArr));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzcy(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public List<Callable<Void>> zzb(zzdb zzdb, zzax zzax, zzau zzau) {
        int zzy = zzdb.zzy();
        ArrayList arrayList = new ArrayList();
        if (zzdb.isInitialized()) {
            zzdb zzdb2 = zzdb;
            zzax zzax2 = zzax;
            arrayList.add(new zzdl(zzdb2, "ljgMduD5kKPhK6qoocDB5WikkD/CX1UhLGscwfIdkLacCDlfdaQLvcdlCLYlVWEY", "PQw299M+gyZAcirIo44nMA1T6aZFSbwBV2vuW7mK5no=", zzax2, zzy, 27, zzau));
            arrayList.add(new zzdo(zzdb2, "wFR9IVBeC3DxjLUHG4VrPvC6sFnF3i6EXAzgF2FV6F/P1tVIxRsZCqzBo3bMqAjw", "FngGcM4uMQo5eKR2FwSlMJnWgsaWh19tKknwKd4tbUk=", zzax2, startTime, zzy, 25));
            int i = zzy;
            arrayList.add(new zzdt(zzdb2, "WFWMehHtsFVdDUEDmR6QBWCVOt7vhsukeVfF7GyA4nJfn/HGydHkg9TxbsV2ogHJ", "anxhUuNThpd2uUrKqPFlUd7Xx/0GNeeVxwSMkxx8/S8=", zzax2, i, 1));
            arrayList.add(new zzdu(zzdb2, "y/7Ec+Kioax0ZYAEH/NiuXIsrXhfXjhFi2F/nP/uGkIQw7jUhBGY0W6baOqNedZ3", "0cd3YaSrpW7P/AkpW4/onj4SWvDEhcgrou0hv6tCD+s=", zzax2, i, 31));
            arrayList.add(new zzdx(zzdb2, "poItj6KYBt5BdnGUyKVpTqoJe9uUrbj0v36XCagBsYjc7oBvjejRtfaJj7hby90a", "qrGvg6pF9No4qMDhGfUiE0qkqx8DIEI1ObOP4v8z9Vw=", zzax2, i, 33));
            arrayList.add(new zzdk(zzdb2, "3K8ELf0l97OoJkLZ8w0j1a7PyOLXhiU05fzwfJl+q5R78K5HrzBW+Y6Q9dHwMhs9", "b/KmM8qxPHQsR3T0CZ/F1d5gVFlEyl3WbrFOrFCfLkc=", zzax2, i, 29));
            arrayList.add(new zzdm(zzdb2, "lzCo36nc7XBNxigvUEYksuBFsczDyb5Knn+0+OBVmAuGHrrIrxjgxEWtsLNUGdmh", "zUtdaly7f7RI0b3U/Ak3WbCr4NUUCFrNIppHHrQ+Up0=", zzax2, i, 5));
            arrayList.add(new zzds(zzdb2, "Vd8F7XEjcopfPCqIo7UkH81gSF32pH8ICaByQHEDSARI1QZSSarfP6NUtOQ3X7FJ", "SC+voVwtFTxxanSuPBwO3gUspzEVAamsN8QrPnkhp0Y=", zzax2, i, 12));
            arrayList.add(new zzdi(zzdb2, "Oqhihr+ZvNwej7GnFvAZoFFN+/Dv8PoAOgFukKxDQRFkh0v6oq6svnLeRKh0PLMP", "7HSsIYWO+RMRoavsc1DDhaz46/CevFwPfCYPy/bWw2c=", zzax2, i, 3));
            arrayList.add(new zzdn(zzdb2, "D/UUEAj6b2Mlzt93EqUc0ecxuQkFtjBjbwXxowRDAJrg0neoMkyf1TZxyfD/n/R+", "XHiP8GJo+im4O4z0srsKg+iMpuUpknn3IyfTXGI6thg=", zzax2, i, 44));
            arrayList.add(new zzdr(zzdb2, "z4IUOMEUJJwo87MrwW0oo5MuoOqDlnlQo6iV4pjz2VLab+vfSTsypn6zr+NoPrYU", "L28yi1GnuU8llvgZA5ti7bBAlAb8V1oFU13C+ZO3hWQ=", zzax2, i, 22));
            arrayList.add(new zzdy(zzdb2, "+qJmoUGbbPFGT5cJqhcbMwFJCJD+zdsNFeU33HQsfBwCMUy52xVClKiKRlJSjJkA", "ZdvpwpF09ah9qMkbMMBkQbN3G9MUkP5Jgcz6nA07dkM=", zzax2, i, 48));
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEP)).booleanValue()) {
                arrayList.add(new zzdj(zzdb, "NXaY56AtLwFcN+ekuuF2nJfd0TyeY8q5k/4jDq8aCw7dTKyZ2J/G7hTL+F9OtE+b", "IRJV9vmlQsYenNEwAJnRXRcX4jgQUq/mhLu9dLiWkF0=", zzax, zzy, 49));
            }
            arrayList.add(new zzdw(zzdb, "8e8MBQUUwetJXHXD+OHa6GoKdEoeWcCKvJd/0LAqmt67vps6BIKdZS4FehPCaFQs", "SqEbpmL0PRd8OMIcAaTW+Qm/eIldjoaBC5+hIpZQMKI=", zzax, zzy, 51));
            return arrayList;
        }
        zzax.zzbq = Long.valueOf(PlaybackStateCompat.ACTION_PREPARE);
        return arrayList;
    }
}
