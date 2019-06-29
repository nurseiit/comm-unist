package com.google.firebase.database.connection.idl;

import android.os.RemoteException;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.pe;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class zzac implements oo {
    private /* synthetic */ zzw zzcch;

    zzac(zzw zzw) {
        this.zzcch = zzw;
    }

    public final void onDisconnect() {
        try {
            this.zzcch.onDisconnect();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zzB(Map<String, Object> map) {
        try {
            this.zzcch.zzN(zzn.zzw(map));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zzGb() {
        try {
            this.zzcch.zzGb();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zza(List<String> list, Object obj, boolean z, Long l) {
        try {
            this.zzcch.zza((List) list, zzn.zzw(obj), z, IPersistentConnectionImpl.zza(l));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zza(List<String> list, List<pe> list2, Long l) {
        List arrayList = new ArrayList(list2.size());
        ArrayList arrayList2 = new ArrayList(list2.size());
        for (pe peVar : list2) {
            arrayList.add(new zzak(peVar.zzGs(), peVar.zzGt()));
            arrayList2.add(peVar.zzGu());
        }
        try {
            this.zzcch.zza((List) list, arrayList, zzn.zzw(arrayList2), IPersistentConnectionImpl.zza(l));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zzaB(boolean z) {
        try {
            this.zzcch.zzaB(z);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
