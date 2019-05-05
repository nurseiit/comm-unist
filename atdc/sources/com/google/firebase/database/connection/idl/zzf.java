package com.google.firebase.database.connection.idl;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.oj;
import com.google.android.gms.internal.om;
import com.google.android.gms.internal.on;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.pf;
import java.util.List;
import java.util.Map;

public final class zzf implements on {
    private final zzt zzcca;

    private zzf(zzt zzt) {
        this.zzcca = zzt;
    }

    private static zzah zza(pf pfVar) {
        return new zzh(pfVar);
    }

    public static zzf zza(Context context, zzc zzc, oj ojVar, oo ooVar) {
        return new zzf(IPersistentConnectionImpl.loadDynamic(context, zzc, ojVar.zzFU(), ojVar.zzFV(), ooVar));
    }

    public final void initialize() {
        try {
            this.zzcca.initialize();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void interrupt(String str) {
        try {
            this.zzcca.interrupt(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final boolean isInterrupted(String str) {
        try {
            return this.zzcca.isInterrupted(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void purgeOutstandingWrites() {
        try {
            this.zzcca.purgeOutstandingWrites();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void refreshAuthToken() {
        try {
            this.zzcca.refreshAuthToken();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void resume(String str) {
        try {
            this.zzcca.resume(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void shutdown() {
        try {
            this.zzcca.shutdown();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zza(List<String> list, pf pfVar) {
        try {
            this.zzcca.onDisconnectCancel(list, zza(pfVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zza(List<String> list, Object obj, pf pfVar) {
        try {
            this.zzcca.put(list, zzn.zzw(obj), zza(pfVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zza(List<String> list, Object obj, String str, pf pfVar) {
        try {
            this.zzcca.compareAndPut(list, zzn.zzw(obj), str, zza(pfVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zza(List<String> list, Map<String, Object> map) {
        try {
            this.zzcca.unlisten(list, zzn.zzw(map));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zza(List<String> list, Map<String, Object> map, om omVar, Long l, pf pfVar) {
        long longValue;
        zzg zzg = new zzg(this, omVar);
        if (l != null) {
            try {
                longValue = l.longValue();
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }
        longValue = -1;
        List<String> list2 = list;
        this.zzcca.listen(list2, zzn.zzw(map), zzg, longValue, zza(pfVar));
    }

    public final void zza(List<String> list, Map<String, Object> map, pf pfVar) {
        try {
            this.zzcca.merge(list, zzn.zzw(map), zza(pfVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zzb(List<String> list, Object obj, pf pfVar) {
        try {
            this.zzcca.onDisconnectPut(list, zzn.zzw(obj), zza(pfVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zzb(List<String> list, Map<String, Object> map, pf pfVar) {
        try {
            this.zzcca.onDisconnectMerge(list, zzn.zzw(map), zza(pfVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zzgH(String str) {
        try {
            this.zzcca.refreshAuthToken2(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
