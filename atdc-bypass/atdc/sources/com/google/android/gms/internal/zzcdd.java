package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.zzj;
import com.google.android.gms.location.zzm;
import java.util.HashMap;
import java.util.Map;

public final class zzcdd {
    private final Context mContext;
    private final Map<zzbdy<LocationListener>, zzcdh> zzaWU = new HashMap();
    private final zzcdt<zzccz> zzbiB;
    private ContentProviderClient zzbiM = null;
    private boolean zzbiN = false;
    private final Map<zzbdy<LocationCallback>, zzcde> zzbiO = new HashMap();

    public zzcdd(Context context, zzcdt<zzccz> zzcdt) {
        this.mContext = context;
        this.zzbiB = zzcdt;
    }

    private final zzcdh zzf(zzbdw<LocationListener> zzbdw) {
        Object obj;
        synchronized (this.zzaWU) {
            obj = (zzcdh) this.zzaWU.get(zzbdw.zzqG());
            if (obj == null) {
                obj = new zzcdh(zzbdw);
            }
            this.zzaWU.put(zzbdw.zzqG(), obj);
        }
        return obj;
    }

    private final zzcde zzg(zzbdw<LocationCallback> zzbdw) {
        Object obj;
        synchronized (this.zzbiO) {
            obj = (zzcde) this.zzbiO.get(zzbdw.zzqG());
            if (obj == null) {
                obj = new zzcde(zzbdw);
            }
            this.zzbiO.put(zzbdw.zzqG(), obj);
        }
        return obj;
    }

    public final Location getLastLocation() {
        this.zzbiB.zzre();
        try {
            return ((zzccz) this.zzbiB.zzrf()).zzdv(this.mContext.getPackageName());
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public final void removeAllListeners() {
        try {
            synchronized (this.zzaWU) {
                for (zzm zzm : this.zzaWU.values()) {
                    if (zzm != null) {
                        ((zzccz) this.zzbiB.zzrf()).zza(zzcdp.zza(zzm, null));
                    }
                }
                this.zzaWU.clear();
            }
            synchronized (this.zzbiO) {
                for (zzj zzj : this.zzbiO.values()) {
                    if (zzj != null) {
                        ((zzccz) this.zzbiB.zzrf()).zza(zzcdp.zza(zzj, null));
                    }
                }
                this.zzbiO.clear();
            }
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public final void zza(PendingIntent pendingIntent, zzccu zzccu) throws RemoteException {
        this.zzbiB.zzre();
        ((zzccz) this.zzbiB.zzrf()).zza(new zzcdp(2, null, null, pendingIntent, null, zzccu != null ? zzccu.asBinder() : null));
    }

    public final void zza(zzbdy<LocationListener> zzbdy, zzccu zzccu) throws RemoteException {
        this.zzbiB.zzre();
        zzbo.zzb((Object) zzbdy, (Object) "Invalid null listener key");
        synchronized (this.zzaWU) {
            zzm zzm = (zzcdh) this.zzaWU.remove(zzbdy);
            if (zzm != null) {
                zzm.release();
                ((zzccz) this.zzbiB.zzrf()).zza(zzcdp.zza(zzm, zzccu));
            }
        }
    }

    public final void zza(zzccu zzccu) throws RemoteException {
        this.zzbiB.zzre();
        ((zzccz) this.zzbiB.zzrf()).zza(zzccu);
    }

    public final void zza(zzcdn zzcdn, zzbdw<LocationCallback> zzbdw, zzccu zzccu) throws RemoteException {
        this.zzbiB.zzre();
        ((zzccz) this.zzbiB.zzrf()).zza(new zzcdp(1, zzcdn, null, null, zzg(zzbdw).asBinder(), zzccu != null ? zzccu.asBinder() : null));
    }

    public final void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzccu zzccu) throws RemoteException {
        this.zzbiB.zzre();
        ((zzccz) this.zzbiB.zzrf()).zza(new zzcdp(1, zzcdn.zza(locationRequest), null, pendingIntent, null, zzccu != null ? zzccu.asBinder() : null));
    }

    public final void zza(LocationRequest locationRequest, zzbdw<LocationListener> zzbdw, zzccu zzccu) throws RemoteException {
        this.zzbiB.zzre();
        ((zzccz) this.zzbiB.zzrf()).zza(new zzcdp(1, zzcdn.zza(locationRequest), zzf(zzbdw).asBinder(), null, null, zzccu != null ? zzccu.asBinder() : null));
    }

    public final void zzai(boolean z) throws RemoteException {
        this.zzbiB.zzre();
        ((zzccz) this.zzbiB.zzrf()).zzai(z);
        this.zzbiN = z;
    }

    public final void zzb(zzbdy<LocationCallback> zzbdy, zzccu zzccu) throws RemoteException {
        this.zzbiB.zzre();
        zzbo.zzb((Object) zzbdy, (Object) "Invalid null listener key");
        synchronized (this.zzbiO) {
            zzj zzj = (zzcde) this.zzbiO.remove(zzbdy);
            if (zzj != null) {
                zzj.release();
                ((zzccz) this.zzbiB.zzrf()).zza(zzcdp.zza(zzj, zzccu));
            }
        }
    }

    public final void zzc(Location location) throws RemoteException {
        this.zzbiB.zzre();
        ((zzccz) this.zzbiB.zzrf()).zzc(location);
    }

    public final LocationAvailability zzvQ() {
        this.zzbiB.zzre();
        try {
            return ((zzccz) this.zzbiB.zzrf()).zzdw(this.mContext.getPackageName());
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public final void zzvR() {
        if (this.zzbiN) {
            try {
                zzai(false);
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        }
    }
}
