package com.google.android.gms.fitness.service;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.zzbvy;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbzo;
import com.google.android.gms.internal.zzbzq;
import com.google.android.gms.internal.zzbzt;
import java.util.List;

public abstract class FitnessSensorService extends Service {
    public static final String SERVICE_INTERFACE = "com.google.android.gms.fitness.service.FitnessSensorService";
    private zza zzaXC;

    static class zza extends zzbzt {
        private final FitnessSensorService zzaXD;

        private zza(FitnessSensorService fitnessSensorService) {
            this.zzaXD = fitnessSensorService;
        }

        /* synthetic */ zza(FitnessSensorService fitnessSensorService, zza zza) {
            this(fitnessSensorService);
        }

        public final void zza(FitnessSensorServiceRequest fitnessSensorServiceRequest, zzbxg zzbxg) throws RemoteException {
            this.zzaXD.zztZ();
            zzbxg.zzu(this.zzaXD.onRegister(fitnessSensorServiceRequest) ? Status.zzaBm : new Status(13));
        }

        public final void zza(zzbzo zzbzo, zzbvy zzbvy) throws RemoteException {
            this.zzaXD.zztZ();
            zzbvy.zza(new DataSourcesResult(this.zzaXD.onFindDataSources(zzbzo.getDataTypes()), Status.zzaBm));
        }

        public final void zza(zzbzq zzbzq, zzbxg zzbxg) throws RemoteException {
            this.zzaXD.zztZ();
            zzbxg.zzu(this.zzaXD.onUnregister(zzbzq.getDataSource()) ? Status.zzaBm : new Status(13));
        }
    }

    @CallSuper
    public IBinder onBind(Intent intent) {
        if (!SERVICE_INTERFACE.equals(intent.getAction())) {
            return null;
        }
        if (Log.isLoggable("FitnessSensorService", 3)) {
            String valueOf = String.valueOf(intent);
            String valueOf2 = String.valueOf(getClass().getName());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 20) + String.valueOf(valueOf2).length());
            stringBuilder.append("Intent ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" received by ");
            stringBuilder.append(valueOf2);
            Log.d("FitnessSensorService", stringBuilder.toString());
        }
        return this.zzaXC.asBinder();
    }

    @CallSuper
    public void onCreate() {
        super.onCreate();
        this.zzaXC = new zza(this, null);
    }

    public abstract List<DataSource> onFindDataSources(List<DataType> list);

    public abstract boolean onRegister(FitnessSensorServiceRequest fitnessSensorServiceRequest);

    public abstract boolean onUnregister(DataSource dataSource);

    /* Access modifiers changed, original: protected|final */
    @TargetApi(19)
    public final void zztZ() throws SecurityException {
        int callingUid = Binder.getCallingUid();
        if (zzq.zzsc()) {
            ((AppOpsManager) getSystemService("appops")).checkPackage(callingUid, "com.google.android.gms");
            return;
        }
        String[] packagesForUid = getPackageManager().getPackagesForUid(callingUid);
        if (packagesForUid != null) {
            int length = packagesForUid.length;
            int i = 0;
            while (i < length) {
                if (!packagesForUid[i].equals("com.google.android.gms")) {
                    i++;
                } else {
                    return;
                }
            }
        }
        throw new SecurityException("Unauthorized caller");
    }
}
