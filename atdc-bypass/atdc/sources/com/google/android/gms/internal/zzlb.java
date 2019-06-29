package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class zzlb {
    private final Bundle zzAS = new Bundle();
    private final HashSet<String> zzAX = new HashSet();
    private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> zzAY = new HashMap();
    private final HashSet<String> zzAZ = new HashSet();
    private int zzAe = -1;
    private int zzAh = -1;
    private String zzAi;
    private String zzAk;
    private final Bundle zzAm = new Bundle();
    private String zzAo;
    private boolean zzAq;
    private final HashSet<String> zzBa = new HashSet();
    private Date zzda;
    private Location zzde;
    private boolean zzsu = false;

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzsu = z;
    }

    public final void zzD(String str) {
        this.zzAX.add(str);
    }

    public final void zzE(String str) {
        this.zzAZ.add(str);
    }

    public final void zzF(String str) {
        this.zzAZ.remove(str);
    }

    public final void zzG(String str) {
        this.zzAk = str;
    }

    public final void zzH(String str) {
        this.zzAi = str;
    }

    public final void zzI(String str) {
        this.zzAo = str;
    }

    public final void zzJ(String str) {
        this.zzBa.add(str);
    }

    @Deprecated
    public final void zza(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            zza(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.zzAY.put(networkExtras.getClass(), networkExtras);
        }
    }

    public final void zza(Class<? extends MediationAdapter> cls, Bundle bundle) {
        this.zzAS.putBundle(cls.getName(), bundle);
    }

    public final void zza(Date date) {
        this.zzda = date;
    }

    public final void zzb(Location location) {
        this.zzde = location;
    }

    public final void zzb(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.zzAS.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.zzAS.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.zzAS.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    public final void zzf(String str, String str2) {
        this.zzAm.putString(str, str2);
    }

    public final void zzh(boolean z) {
        this.zzAh = z;
    }

    public final void zzi(boolean z) {
        this.zzAq = z;
    }

    public final void zzk(int i) {
        this.zzAe = i;
    }
}
