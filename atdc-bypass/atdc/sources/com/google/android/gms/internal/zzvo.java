package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@zzzn
public final class zzvo<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends zzuu {
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> zzNi;
    private final NETWORK_EXTRAS zzNj;

    public zzvo(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.zzNi = mediationAdapter;
        this.zzNj = network_extras;
    }

    private final SERVER_PARAMETERS zza(String str, int i, String str2) throws RemoteException {
        Map hashMap;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str3 = (String) keys.next();
                    hashMap.put(str3, jSONObject.getString(str3));
                }
            } catch (Throwable th) {
                zzajc.zzc("Could not get MediationServerParameters.", th);
                throw new RemoteException();
            }
        }
        hashMap = new HashMap(0);
        Class serverParametersType = this.zzNi.getServerParametersType();
        if (serverParametersType == null) {
            return null;
        }
        MediationServerParameters mediationServerParameters = (MediationServerParameters) serverParametersType.newInstance();
        mediationServerParameters.load(hashMap);
        return mediationServerParameters;
    }

    public final void destroy() throws RemoteException {
        try {
            this.zzNi.destroy();
        } catch (Throwable th) {
            zzajc.zzc("Could not destroy adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    public final zzks getVideoController() {
        return null;
    }

    public final IObjectWrapper getView() throws RemoteException {
        if (this.zzNi instanceof MediationBannerAdapter) {
            try {
                return zzn.zzw(((MediationBannerAdapter) this.zzNi).getBannerView());
            } catch (Throwable th) {
                zzajc.zzc("Could not get banner view from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationBannerAdapter: ";
            String valueOf = String.valueOf(this.zzNi.getClass().getCanonicalName());
            zzajc.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public final boolean isInitialized() {
        return true;
    }

    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    public final void resume() throws RemoteException {
        throw new RemoteException();
    }

    public final void setImmersiveMode(boolean z) {
    }

    public final void showInterstitial() throws RemoteException {
        if (this.zzNi instanceof MediationInterstitialAdapter) {
            zzajc.zzaC("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzNi).showInterstitial();
            } catch (Throwable th) {
                zzajc.zzc("Could not show interstitial from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationInterstitialAdapter: ";
            String valueOf = String.valueOf(this.zzNi.getClass().getCanonicalName());
            zzajc.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public final void showVideo() {
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzaea zzaea, List<String> list) {
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, zzaea zzaea, String str2) throws RemoteException {
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, zzuw zzuw) throws RemoteException {
        zza(iObjectWrapper, zzir, str, null, zzuw);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, String str2, zzuw zzuw) throws RemoteException {
        if (this.zzNi instanceof MediationInterstitialAdapter) {
            zzajc.zzaC("Requesting interstitial ad from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzNi).requestInterstitialAd(new zzvp(zzuw), (Activity) zzn.zzE(iObjectWrapper), zza(str, zzir.zzzR, str2), zzwb.zzn(zzir), this.zzNj);
            } catch (Throwable th) {
                zzajc.zzc("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationInterstitialAdapter: ";
            String valueOf = String.valueOf(this.zzNi.getClass().getCanonicalName());
            zzajc.zzaT(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, String str2, zzuw zzuw, zzon zzon, List<String> list) {
    }

    public final void zza(IObjectWrapper iObjectWrapper, zziv zziv, zzir zzir, String str, zzuw zzuw) throws RemoteException {
        zza(iObjectWrapper, zziv, zzir, str, null, zzuw);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zziv zziv, zzir zzir, String str, String str2, zzuw zzuw) throws RemoteException {
        if (this.zzNi instanceof MediationBannerAdapter) {
            zzajc.zzaC("Requesting banner ad from adapter.");
            try {
                ((MediationBannerAdapter) this.zzNi).requestBannerAd(new zzvp(zzuw), (Activity) zzn.zzE(iObjectWrapper), zza(str, zzir.zzzR, str2), zzwb.zzb(zziv), zzwb.zzn(zzir), this.zzNj);
            } catch (Throwable th) {
                zzajc.zzc("Could not request banner ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationBannerAdapter: ";
            String valueOf = String.valueOf(this.zzNi.getClass().getCanonicalName());
            zzajc.zzaT(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public final void zza(zzir zzir, String str, String str2) {
    }

    public final void zzc(zzir zzir, String str) {
    }

    public final zzvc zzfq() {
        return null;
    }

    public final zzvf zzfr() {
        return null;
    }

    public final Bundle zzfs() {
        return new Bundle();
    }

    public final Bundle zzft() {
        return new Bundle();
    }

    public final boolean zzfu() {
        return false;
    }

    public final zzpj zzfv() {
        return null;
    }

    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
    }
}
