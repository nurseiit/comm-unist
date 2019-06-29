package com.google.android.gms.plus.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzao;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzcri;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;

public final class zzh extends zzz<zzf> {
    private Person zzbAA;
    private final zzn zzbAB;

    public zzh(Context context, Looper looper, zzq zzq, zzn zzn, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 2, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzbAB = zzn;
    }

    public final String getAccountName() {
        zzre();
        try {
            return ((zzf) zzrf()).getAccountName();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public final void zzAe() {
        zzre();
        try {
            this.zzbAA = null;
            ((zzf) zzrf()).zzAe();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public final Person zzAf() {
        zzre();
        return this.zzbAA;
    }

    public final zzao zza(zzbaz<LoadPeopleResult> zzbaz, int i, String str) {
        zzre();
        zzj zzj = new zzj(zzbaz);
        try {
            return ((zzf) zzrf()).zza(zzj, 1, i, -1, str);
        } catch (RemoteException unused) {
            zzj.zza(DataHolder.zzau(8), null);
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person")) {
            this.zzbAA = zzcri.zzp(bundle.getByteArray("loaded_person"));
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public final void zza(zzbaz<LoadPeopleResult> zzbaz, Collection<String> collection) {
        zzre();
        zzj zzj = new zzj(zzbaz);
        try {
            ((zzf) zzrf()).zza(zzj, new ArrayList(collection));
        } catch (RemoteException unused) {
            zzj.zza(DataHolder.zzau(8), null);
        }
    }

    public final void zzc(zzbaz<LoadPeopleResult> zzbaz, String[] strArr) {
        zza(zzbaz, Arrays.asList(strArr));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusService");
        return queryLocalInterface instanceof zzf ? (zzf) queryLocalInterface : new zzg(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.plus.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    public final void zzj(zzbaz<LoadPeopleResult> zzbaz) {
        zzre();
        zzj zzj = new zzj(zzbaz);
        try {
            ((zzf) zzrf()).zza(zzj, 2, 1, -1, null);
        } catch (RemoteException unused) {
            zzj.zza(DataHolder.zzau(8), null);
        }
    }

    public final void zzk(zzbaz<Status> zzbaz) {
        zzre();
        zzAe();
        zzk zzk = new zzk(zzbaz);
        try {
            ((zzf) zzrf()).zza(zzk);
        } catch (RemoteException unused) {
            zzk.zzf(8, null);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        Bundle zzAi = this.zzbAB.zzAi();
        zzAi.putStringArray("request_visible_actions", this.zzbAB.zzAg());
        zzAi.putString("auth_package", this.zzbAB.zzAh());
        return zzAi;
    }

    public final boolean zzmv() {
        Set zzc = zzry().zzc(Plus.API);
        return (zzc == null || zzc.isEmpty()) ? false : (zzc.size() == 1 && zzc.contains(new Scope("plus_one_placeholder_scope"))) ? false : true;
    }
}
