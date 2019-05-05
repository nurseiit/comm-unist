package com.google.firebase.database.connection.idl;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.firebase_database.ModuleDescriptor;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.oj;
import com.google.android.gms.internal.ol;
import com.google.android.gms.internal.on;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.wi;
import com.google.android.gms.internal.wn;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

@DynamiteApi
public class IPersistentConnectionImpl extends zzu {
    private on zzccd;

    public static zzt loadDynamic(Context context, zzc zzc, oh ohVar, ScheduledExecutorService scheduledExecutorService, oo ooVar) {
        try {
            zzt asInterface = zzu.asInterface(DynamiteModule.zza(context, DynamiteModule.zzaSO, ModuleDescriptor.MODULE_ID).zzcV("com.google.firebase.database.connection.idl.IPersistentConnectionImpl"));
            asInterface.setup(zzc, new zzad(ohVar), zzn.zzw(scheduledExecutorService), new zzab(ooVar));
            return asInterface;
        } catch (zzc e) {
            throw new RuntimeException(e);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static long zza(Long l) {
        if (l == null) {
            return -1;
        }
        if (l.longValue() != -1) {
            return l.longValue();
        }
        throw new IllegalArgumentException("Tag parameter clashed with NO_TAG value");
    }

    private static pf zza(zzah zzah) {
        return new zzaa(zzah);
    }

    private static Long zzaq(long j) {
        return j == -1 ? null : Long.valueOf(j);
    }

    public void compareAndPut(List<String> list, IObjectWrapper iObjectWrapper, String str, zzah zzah) {
        this.zzccd.zza(list, zzn.zzE(iObjectWrapper), str, zza(zzah));
    }

    public void initialize() {
        this.zzccd.initialize();
    }

    public void interrupt(String str) {
        this.zzccd.interrupt(str);
    }

    public boolean isInterrupted(String str) {
        return this.zzccd.isInterrupted(str);
    }

    public void listen(List<String> list, IObjectWrapper iObjectWrapper, zzq zzq, long j, zzah zzah) {
        Long zzaq = zzaq(j);
        List<String> list2 = list;
        this.zzccd.zza(list2, (Map) zzn.zzE(iObjectWrapper), new zzz(this, zzq), zzaq, zza(zzah));
    }

    public void merge(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) {
        this.zzccd.zza((List) list, (Map) zzn.zzE(iObjectWrapper), zza(zzah));
    }

    public void onDisconnectCancel(List<String> list, zzah zzah) {
        this.zzccd.zza((List) list, zza(zzah));
    }

    public void onDisconnectMerge(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) {
        this.zzccd.zzb((List) list, (Map) zzn.zzE(iObjectWrapper), zza(zzah));
    }

    public void onDisconnectPut(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) {
        this.zzccd.zzb((List) list, zzn.zzE(iObjectWrapper), zza(zzah));
    }

    public void purgeOutstandingWrites() {
        this.zzccd.purgeOutstandingWrites();
    }

    public void put(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) {
        this.zzccd.zza((List) list, zzn.zzE(iObjectWrapper), zza(zzah));
    }

    public void refreshAuthToken() {
        this.zzccd.refreshAuthToken();
    }

    public void refreshAuthToken2(String str) {
        this.zzccd.zzgH(str);
    }

    public void resume(String str) {
        this.zzccd.resume(str);
    }

    public void setup(zzc zzc, zzk zzk, IObjectWrapper iObjectWrapper, zzw zzw) {
        wn wnVar;
        ol zza = zzi.zza(zzc.zzcbV);
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzn.zzE(iObjectWrapper);
        zzac zzac = new zzac(zzw);
        switch (zzc.zzcbW) {
            case 1:
                wnVar = wn.DEBUG;
                break;
            case 2:
                wnVar = wn.INFO;
                break;
            case 3:
                wnVar = wn.WARN;
                break;
            case 4:
                wnVar = wn.ERROR;
                break;
            default:
                wnVar = wn.NONE;
                break;
        }
        this.zzccd = new op(new oj(new wi(wnVar, zzc.zzcbX), new zzaf(zzk), scheduledExecutorService, zzc.zzcaE, zzc.zzcbY, zzc.zzcaG), zza, zzac);
    }

    public void shutdown() {
        this.zzccd.shutdown();
    }

    public void unlisten(List<String> list, IObjectWrapper iObjectWrapper) {
        this.zzccd.zza((List) list, (Map) zzn.zzE(iObjectWrapper));
    }
}
