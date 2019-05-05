package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import java.util.Map;

@zzzn
public final class zzup extends zzur {
    private Map<Class<? extends NetworkExtras>, NetworkExtras> zzMY;

    private final <NETWORK_EXTRAS extends com.google.ads.mediation.NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> zzut zzaj(String str) throws RemoteException {
        try {
            Class cls = Class.forName(str, false, zzup.class.getClassLoader());
            if (MediationAdapter.class.isAssignableFrom(cls)) {
                MediationAdapter mediationAdapter = (MediationAdapter) cls.newInstance();
                return new zzvo(mediationAdapter, (com.google.ads.mediation.NetworkExtras) this.zzMY.get(mediationAdapter.getAdditionalParametersType()));
            } else if (com.google.android.gms.ads.mediation.MediationAdapter.class.isAssignableFrom(cls)) {
                return new zzvj((com.google.android.gms.ads.mediation.MediationAdapter) cls.newInstance());
            } else {
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 64);
                stringBuilder.append("Could not instantiate mediation adapter: ");
                stringBuilder.append(str);
                stringBuilder.append(" (not a valid adapter).");
                zzajc.zzaT(stringBuilder.toString());
                throw new RemoteException();
            }
        } catch (Throwable unused) {
            return zzak(str);
        }
    }

    private final zzut zzak(String str) throws RemoteException {
        try {
            zzajc.zzaC("Reflection failed, retrying using direct instantiation");
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                return new zzvj(new AdMobAdapter());
            }
            if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                return new zzvj(new AdUrlAdapter());
            }
            if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                return new zzvj(new CustomEventAdapter());
            }
            if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
                return new zzvo(customEventAdapter, (CustomEventExtras) this.zzMY.get(customEventAdapter.getAdditionalParametersType()));
            }
            throw new RemoteException();
        } catch (Throwable th) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 43);
            stringBuilder.append("Could not instantiate mediation adapter: ");
            stringBuilder.append(str);
            stringBuilder.append(". ");
            zzajc.zzc(stringBuilder.toString(), th);
        }
    }

    public final zzut zzah(String str) throws RemoteException {
        return zzaj(str);
    }

    public final boolean zzai(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzup.class.getClassLoader()));
        } catch (Throwable unused) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 80);
            stringBuilder.append("Could not load custom event implementation class: ");
            stringBuilder.append(str);
            stringBuilder.append(", assuming old implementation.");
            zzajc.zzaT(stringBuilder.toString());
            return false;
        }
    }

    public final void zzg(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.zzMY = map;
    }
}
