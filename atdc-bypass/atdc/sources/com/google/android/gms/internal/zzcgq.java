package com.google.android.gms.internal;

import android.os.Binder;
import android.support.annotation.BinderThread;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzw;
import com.google.android.gms.common.zzo;
import com.google.android.gms.common.zzp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;

public final class zzcgq extends zzcfe {
    private final zzcgl zzboe;
    private Boolean zzbtc;
    @Nullable
    private String zzbtd;

    public zzcgq(zzcgl zzcgl) {
        this(zzcgl, null);
    }

    private zzcgq(zzcgl zzcgl, @Nullable String str) {
        zzbo.zzu(zzcgl);
        this.zzboe = zzcgl;
        this.zzbtd = null;
    }

    @BinderThread
    private final void zzb(zzceh zzceh, boolean z) {
        zzbo.zzu(zzceh);
        zzh(zzceh.packageName, false);
        this.zzboe.zzwB().zzev(zzceh.zzboQ);
    }

    @BinderThread
    private final void zzh(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.zzboe.zzwF().zzyx().log("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.zzbtc == null) {
                    if (!("com.google.android.gms".equals(this.zzbtd) || zzw.zzf(this.zzboe.getContext(), Binder.getCallingUid()))) {
                        if (!zzp.zzax(this.zzboe.getContext()).zza(this.zzboe.getContext().getPackageManager(), Binder.getCallingUid())) {
                            z = false;
                            this.zzbtc = Boolean.valueOf(z);
                        }
                    }
                    z = true;
                    this.zzbtc = Boolean.valueOf(z);
                }
                if (this.zzbtc.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.zzboe.zzwF().zzyx().zzj("Measurement Service called with invalid calling package. appId", zzcfl.zzdZ(str));
                throw e;
            }
        }
        if (this.zzbtd == null && zzo.zzb(this.zzboe.getContext(), Binder.getCallingUid(), str)) {
            this.zzbtd = str;
        }
        if (!str.equals(this.zzbtd)) {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[]{str}));
        }
    }

    @BinderThread
    public final List<zzcji> zza(zzceh zzceh, boolean z) {
        zzb(zzceh, false);
        try {
            List<zzcjk> list = (List) this.zzboe.zzwE().zze(new zzchf(this, zzceh)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzcjk zzcjk : list) {
                if (z || !zzcjl.zzex(zzcjk.mName)) {
                    arrayList.add(new zzcji(zzcjk));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzboe.zzwF().zzyx().zze("Failed to get user attributes. appId", zzcfl.zzdZ(zzceh.packageName), e);
            return null;
        }
    }

    @BinderThread
    public final List<zzcek> zza(String str, String str2, zzceh zzceh) {
        zzb(zzceh, false);
        try {
            return (List) this.zzboe.zzwE().zze(new zzcgy(this, zzceh, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzboe.zzwF().zzyx().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @BinderThread
    public final List<zzcji> zza(String str, String str2, String str3, boolean z) {
        zzh(str, true);
        try {
            List<zzcjk> list = (List) this.zzboe.zzwE().zze(new zzcgx(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzcjk zzcjk : list) {
                if (z || !zzcjl.zzex(zzcjk.mName)) {
                    arrayList.add(new zzcji(zzcjk));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzboe.zzwF().zzyx().zze("Failed to get user attributes. appId", zzcfl.zzdZ(str), e);
            return Collections.emptyList();
        }
    }

    @BinderThread
    public final List<zzcji> zza(String str, String str2, boolean z, zzceh zzceh) {
        zzb(zzceh, false);
        try {
            List<zzcjk> list = (List) this.zzboe.zzwE().zze(new zzcgw(this, zzceh, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzcjk zzcjk : list) {
                if (z || !zzcjl.zzex(zzcjk.mName)) {
                    arrayList.add(new zzcji(zzcjk));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzboe.zzwF().zzyx().zze("Failed to get user attributes. appId", zzcfl.zzdZ(zzceh.packageName), e);
            return Collections.emptyList();
        }
    }

    @BinderThread
    public final void zza(long j, String str, String str2, String str3) {
        this.zzboe.zzwE().zzj(new zzchh(this, str2, str3, str, j));
    }

    @BinderThread
    public final void zza(zzceh zzceh) {
        zzb(zzceh, false);
        zzchg zzchg = new zzchg(this, zzceh);
        if (this.zzboe.zzwE().zzyM()) {
            zzchg.run();
        } else {
            this.zzboe.zzwE().zzj(zzchg);
        }
    }

    @BinderThread
    public final void zza(zzcek zzcek, zzceh zzceh) {
        zzcgg zzwE;
        Runnable zzcgs;
        zzbo.zzu(zzcek);
        zzbo.zzu(zzcek.zzbpd);
        zzb(zzceh, false);
        zzcek zzcek2 = new zzcek(zzcek);
        zzcek2.packageName = zzceh.packageName;
        if (zzcek.zzbpd.getValue() == null) {
            zzwE = this.zzboe.zzwE();
            zzcgs = new zzcgs(this, zzcek2, zzceh);
        } else {
            zzwE = this.zzboe.zzwE();
            zzcgs = new zzcgt(this, zzcek2, zzceh);
        }
        zzwE.zzj(zzcgs);
    }

    @BinderThread
    public final void zza(zzcez zzcez, zzceh zzceh) {
        zzbo.zzu(zzcez);
        zzb(zzceh, false);
        this.zzboe.zzwE().zzj(new zzcha(this, zzcez, zzceh));
    }

    @BinderThread
    public final void zza(zzcez zzcez, String str, String str2) {
        zzbo.zzu(zzcez);
        zzbo.zzcF(str);
        zzh(str, true);
        this.zzboe.zzwE().zzj(new zzchb(this, zzcez, str));
    }

    @BinderThread
    public final void zza(zzcji zzcji, zzceh zzceh) {
        zzcgg zzwE;
        Runnable zzchd;
        zzbo.zzu(zzcji);
        zzb(zzceh, false);
        if (zzcji.getValue() == null) {
            zzwE = this.zzboe.zzwE();
            zzchd = new zzchd(this, zzcji, zzceh);
        } else {
            zzwE = this.zzboe.zzwE();
            zzchd = new zzche(this, zzcji, zzceh);
        }
        zzwE.zzj(zzchd);
    }

    @BinderThread
    public final byte[] zza(zzcez zzcez, String str) {
        zzbo.zzcF(str);
        zzbo.zzu(zzcez);
        zzh(str, true);
        this.zzboe.zzwF().zzyC().zzj("Log and bundle. event", this.zzboe.zzwA().zzdW(zzcez.name));
        long nanoTime = this.zzboe.zzkq().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zzboe.zzwE().zzf(new zzchc(this, zzcez, str)).get();
            if (bArr == null) {
                this.zzboe.zzwF().zzyx().zzj("Log and bundle returned null. appId", zzcfl.zzdZ(str));
                bArr = new byte[0];
            }
            this.zzboe.zzwF().zzyC().zzd("Log and bundle processed. event, size, time_ms", this.zzboe.zzwA().zzdW(zzcez.name), Integer.valueOf(bArr.length), Long.valueOf((this.zzboe.zzkq().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.zzboe.zzwF().zzyx().zzd("Failed to log and bundle. appId, event, error", zzcfl.zzdZ(str), this.zzboe.zzwA().zzdW(zzcez.name), e);
            return null;
        }
    }

    @BinderThread
    public final void zzb(zzceh zzceh) {
        zzb(zzceh, false);
        this.zzboe.zzwE().zzj(new zzcgr(this, zzceh));
    }

    @BinderThread
    public final void zzb(zzcek zzcek) {
        zzcgg zzwE;
        Runnable zzcgu;
        zzbo.zzu(zzcek);
        zzbo.zzu(zzcek.zzbpd);
        zzh(zzcek.packageName, true);
        zzcek zzcek2 = new zzcek(zzcek);
        if (zzcek.zzbpd.getValue() == null) {
            zzwE = this.zzboe.zzwE();
            zzcgu = new zzcgu(this, zzcek2);
        } else {
            zzwE = this.zzboe.zzwE();
            zzcgu = new zzcgv(this, zzcek2);
        }
        zzwE.zzj(zzcgu);
    }

    @BinderThread
    public final String zzc(zzceh zzceh) {
        zzb(zzceh, false);
        return this.zzboe.zzem(zzceh.packageName);
    }

    @BinderThread
    public final List<zzcek> zzk(String str, String str2, String str3) {
        zzh(str, true);
        try {
            return (List) this.zzboe.zzwE().zze(new zzcgz(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzboe.zzwF().zzyx().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }
}
