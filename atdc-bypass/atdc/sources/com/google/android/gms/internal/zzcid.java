package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.stats.zza;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement.zzb;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class zzcid extends zzchj {
    private final zzciq zzbtT;
    private zzcfd zzbtU;
    private Boolean zzbtV;
    private final zzcer zzbtW;
    private final zzcjf zzbtX;
    private final List<Runnable> zzbtY = new ArrayList();
    private final zzcer zzbtZ;

    protected zzcid(zzcgl zzcgl) {
        super(zzcgl);
        this.zzbtX = new zzcjf(zzcgl.zzkq());
        this.zzbtT = new zzciq(this);
        this.zzbtW = new zzcie(this, zzcgl);
        this.zzbtZ = new zzcii(this, zzcgl);
    }

    @WorkerThread
    private final void onServiceDisconnected(ComponentName componentName) {
        super.zzjC();
        if (this.zzbtU != null) {
            this.zzbtU = null;
            super.zzwF().zzyD().zzj("Disconnected from device MeasurementService", componentName);
            super.zzjC();
            zzla();
        }
    }

    @WorkerThread
    private final void zzkP() {
        super.zzjC();
        this.zzbtX.start();
        this.zzbtW.zzs(zzcem.zzxB());
    }

    @WorkerThread
    private final void zzkQ() {
        super.zzjC();
        if (isConnected()) {
            super.zzwF().zzyD().log("Inactivity, disconnecting from the service");
            disconnect();
        }
    }

    @WorkerThread
    private final void zzm(Runnable runnable) throws IllegalStateException {
        super.zzjC();
        if (isConnected()) {
            runnable.run();
        } else if (((long) this.zzbtY.size()) >= zzcem.zzxJ()) {
            super.zzwF().zzyx().log("Discarding data. Max runnable queue size reached");
        } else {
            this.zzbtY.add(runnable);
            this.zzbtZ.zzs(60000);
            zzla();
        }
    }

    @WorkerThread
    private final void zzzl() {
        super.zzjC();
        super.zzwF().zzyD().zzj("Processing queued up service tasks", Integer.valueOf(this.zzbtY.size()));
        for (Runnable run : this.zzbtY) {
            try {
                run.run();
            } catch (Throwable th) {
                super.zzwF().zzyx().zzj("Task exception while flushing queue", th);
            }
        }
        this.zzbtY.clear();
        this.zzbtZ.cancel();
    }

    @WorkerThread
    public final void disconnect() {
        super.zzjC();
        zzkD();
        try {
            zza.zzrU();
            super.getContext().unbindService(this.zzbtT);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzbtU = null;
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @WorkerThread
    public final boolean isConnected() {
        super.zzjC();
        zzkD();
        return this.zzbtU != null;
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zza(zzcfd zzcfd) {
        super.zzjC();
        zzbo.zzu(zzcfd);
        this.zzbtU = zzcfd;
        zzkP();
        zzzl();
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zza(zzcfd zzcfd, com.google.android.gms.common.internal.safeparcel.zza zza) {
        zzcfn zzyx;
        String str;
        super.zzjC();
        super.zzwp();
        zzkD();
        zzcem.zzxE();
        ArrayList arrayList = new ArrayList();
        zzcem.zzxN();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            List zzbp = super.zzwy().zzbp(100);
            if (zzbp != null) {
                arrayList.addAll(zzbp);
                i = zzbp.size();
            } else {
                i = 0;
            }
            if (zza != null && i < 100) {
                arrayList.add(zza);
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                com.google.android.gms.common.internal.safeparcel.zza zza2 = (com.google.android.gms.common.internal.safeparcel.zza) obj;
                if (zza2 instanceof zzcez) {
                    try {
                        zzcfd.zza((zzcez) zza2, super.zzwu().zzdV(super.zzwF().zzyE()));
                    } catch (RemoteException e) {
                        obj = e;
                        zzyx = super.zzwF().zzyx();
                        str = "Failed to send event to the service";
                        zzyx.zzj(str, obj);
                    }
                } else if (zza2 instanceof zzcji) {
                    try {
                        zzcfd.zza((zzcji) zza2, super.zzwu().zzdV(super.zzwF().zzyE()));
                    } catch (RemoteException e2) {
                        obj = e2;
                        zzyx = super.zzwF().zzyx();
                        str = "Failed to send attribute to the service";
                        zzyx.zzj(str, obj);
                    }
                } else if (zza2 instanceof zzcek) {
                    try {
                        zzcfd.zza((zzcek) zza2, super.zzwu().zzdV(super.zzwF().zzyE()));
                    } catch (RemoteException e3) {
                        obj = e3;
                        zzyx = super.zzwF().zzyx();
                        str = "Failed to send conditional property to the service";
                        zzyx.zzj(str, obj);
                    }
                } else {
                    super.zzwF().zzyx().log("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zza(zzb zzb) {
        super.zzjC();
        zzkD();
        zzm(new zzcih(this, zzb));
    }

    @WorkerThread
    public final void zza(AtomicReference<String> atomicReference) {
        super.zzjC();
        zzkD();
        zzm(new zzcif(this, atomicReference));
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zza(AtomicReference<List<zzcek>> atomicReference, String str, String str2, String str3) {
        super.zzjC();
        zzkD();
        zzm(new zzcim(this, atomicReference, str, str2, str3));
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zza(AtomicReference<List<zzcji>> atomicReference, String str, String str2, String str3, boolean z) {
        super.zzjC();
        zzkD();
        zzm(new zzcin(this, atomicReference, str, str2, str3, z));
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zza(AtomicReference<List<zzcji>> atomicReference, boolean z) {
        super.zzjC();
        zzkD();
        zzm(new zzcip(this, atomicReference, z));
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zzb(zzcji zzcji) {
        super.zzjC();
        zzkD();
        zzcem.zzxE();
        zzm(new zzcio(this, super.zzwy().zza(zzcji), zzcji));
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zzc(zzcez zzcez, String str) {
        zzbo.zzu(zzcez);
        super.zzjC();
        zzkD();
        zzcem.zzxE();
        zzm(new zzcik(this, true, super.zzwy().zza(zzcez), zzcez, str));
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zzf(zzcek zzcek) {
        zzbo.zzu(zzcek);
        super.zzjC();
        zzkD();
        zzcem.zzxE();
        zzm(new zzcil(this, true, super.zzwy().zzc(zzcek), new zzcek(zzcek), zzcek));
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzla() {
        super.zzjC();
        zzkD();
        if (!isConnected()) {
            Object obj = null;
            if (this.zzbtV == null) {
                this.zzbtV = super.zzwG().zzyI();
                if (this.zzbtV == null) {
                    zzcfn zzyD;
                    String str;
                    boolean z;
                    super.zzwF().zzyD().log("State of service unknown");
                    super.zzjC();
                    zzkD();
                    zzcem.zzxE();
                    super.zzwF().zzyD().log("Checking service availability");
                    int isGooglePlayServicesAvailable = com.google.android.gms.common.zze.zzoW().isGooglePlayServicesAvailable(super.getContext());
                    if (isGooglePlayServicesAvailable != 9) {
                        if (isGooglePlayServicesAvailable != 18) {
                            switch (isGooglePlayServicesAvailable) {
                                case 0:
                                    zzyD = super.zzwF().zzyD();
                                    str = "Service available";
                                    break;
                                case 1:
                                    zzyD = super.zzwF().zzyD();
                                    str = "Service missing";
                                    break;
                                case 2:
                                    zzyD = super.zzwF().zzyC();
                                    str = "Service container out of date";
                                    break;
                                case 3:
                                    zzyD = super.zzwF().zzyz();
                                    str = "Service disabled";
                                    break;
                            }
                        }
                        zzyD = super.zzwF().zzyz();
                        str = "Service updating";
                        zzyD.log(str);
                        z = true;
                        this.zzbtV = Boolean.valueOf(z);
                        super.zzwG().zzak(this.zzbtV.booleanValue());
                    } else {
                        zzyD = super.zzwF().zzyz();
                        str = "Service invalid";
                    }
                    zzyD.log(str);
                    z = false;
                    this.zzbtV = Boolean.valueOf(z);
                    super.zzwG().zzak(this.zzbtV.booleanValue());
                }
            }
            if (this.zzbtV.booleanValue()) {
                super.zzwF().zzyD().log("Using measurement service");
                this.zzbtT.zzzm();
                return;
            }
            zzcem.zzxE();
            List queryIntentServices = super.getContext().getPackageManager().queryIntentServices(new Intent().setClassName(super.getContext(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                obj = 1;
            }
            if (obj != null) {
                super.zzwF().zzyD().log("Using local app measurement service");
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                Context context = super.getContext();
                zzcem.zzxE();
                intent.setComponent(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
                this.zzbtT.zzk(intent);
                return;
            }
            super.zzwF().zzyx().log("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
        }
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

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zzzj() {
        super.zzjC();
        zzkD();
        zzm(new zzcij(this));
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zzzk() {
        super.zzjC();
        zzkD();
        zzm(new zzcig(this));
    }
}
