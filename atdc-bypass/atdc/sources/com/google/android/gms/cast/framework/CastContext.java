package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.view.KeyEvent;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzauj;
import com.google.android.gms.internal.zzauk;
import com.google.android.gms.internal.zzavb;
import com.google.android.gms.internal.zzayo;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class CastContext {
    public static final String OPTIONS_PROVIDER_CLASS_NAME_KEY = "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME";
    private static final zzayo zzarK = new zzayo("CastContext");
    private static CastContext zzarL;
    private final Context zzarM;
    private final zzk zzarN;
    private final SessionManager zzarO;
    private final zze zzarP;
    private final CastOptions zzarQ;
    private zzavb zzarR = new zzavb(MediaRouter.getInstance(this.zzarM));

    private CastContext(Context context, CastOptions castOptions, List<SessionProvider> list) {
        zzq zznt;
        zzw zzns;
        this.zzarM = context.getApplicationContext();
        this.zzarQ = castOptions;
        Map hashMap = new HashMap();
        zzauk zzauk = new zzauk(this.zzarM, castOptions, this.zzarR);
        hashMap.put(zzauk.getCategory(), zzauk.zznH());
        if (list != null) {
            for (Object obj : list) {
                zzbo.zzb(obj, (Object) "Additional SessionProvider must not be null.");
                String zzh = zzbo.zzh(obj.getCategory(), "Category for SessionProvider must not be null or empty string.");
                zzbo.zzb(hashMap.containsKey(zzh) ^ 1, String.format("SessionProvider for category %s already added", new Object[]{zzh}));
                hashMap.put(zzh, obj.zznH());
            }
        }
        this.zzarN = zzauj.zza(this.zzarM, castOptions, this.zzarR, hashMap);
        SessionManager sessionManager = null;
        try {
            zznt = this.zzarN.zznt();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "getDiscoveryManagerImpl", zzk.class.getSimpleName());
            zznt = null;
        }
        this.zzarP = zznt == null ? null : new zze(zznt);
        try {
            zzns = this.zzarN.zzns();
        } catch (RemoteException e2) {
            zzarK.zzb(e2, "Unable to call %s on %s.", "getSessionManagerImpl", zzk.class.getSimpleName());
            zzns = null;
        }
        if (zzns != null) {
            sessionManager = new SessionManager(zzns);
        }
        this.zzarO = sessionManager;
    }

    public static CastContext getSharedInstance(@NonNull Context context) throws IllegalStateException {
        zzbo.zzcz("Must be called from the main thread.");
        if (zzarL == null) {
            OptionsProvider zzak = zzak(context.getApplicationContext());
            zzarL = new CastContext(context, zzak.getCastOptions(context.getApplicationContext()), zzak.getAdditionalSessionProviders(context.getApplicationContext()));
        }
        return zzarL;
    }

    private static boolean zza(CastSession castSession, double d, boolean z) {
        if (z) {
            try {
                double volume = castSession.getVolume() + d;
                d = 1.0d;
                if (volume <= 1.0d) {
                    d = volume;
                }
                castSession.setVolume(d);
                return true;
            } catch (IOException | IllegalStateException e) {
                zzarK.zzc("Unable to call CastSession.setVolume(double).", e);
            }
        }
        return true;
    }

    private static OptionsProvider zzak(Context context) throws IllegalStateException {
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString(OPTIONS_PROVIDER_CLASS_NAME_KEY);
            if (string != null) {
                return (OptionsProvider) Class.forName(string).newInstance();
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NullPointerException e) {
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    public final void addAppVisibilityListener(AppVisibilityListener appVisibilityListener) throws IllegalStateException, NullPointerException {
        zzbo.zzcz("Must be called from the main thread.");
        zzbo.zzu(appVisibilityListener);
        try {
            this.zzarN.zza(new zza(appVisibilityListener));
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "addVisibilityChangeListener", zzk.class.getSimpleName());
        }
    }

    public final void addCastStateListener(CastStateListener castStateListener) throws IllegalStateException, NullPointerException {
        zzbo.zzcz("Must be called from the main thread.");
        zzbo.zzu(castStateListener);
        this.zzarO.addCastStateListener(castStateListener);
    }

    public final CastOptions getCastOptions() throws IllegalStateException {
        zzbo.zzcz("Must be called from the main thread.");
        return this.zzarQ;
    }

    public final int getCastState() {
        zzbo.zzcz("Must be called from the main thread.");
        return this.zzarO.getCastState();
    }

    public final MediaRouteSelector getMergedSelector() throws IllegalStateException {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return MediaRouteSelector.fromBundle(this.zzarN.zznr());
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "getMergedSelectorAsBundle", zzk.class.getSimpleName());
            return null;
        }
    }

    public final SessionManager getSessionManager() throws IllegalStateException {
        zzbo.zzcz("Must be called from the main thread.");
        return this.zzarO;
    }

    public final boolean isAppVisible() throws IllegalStateException {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzarN.isAppVisible();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "isApplicationVisible", zzk.class.getSimpleName());
            return false;
        }
    }

    public final boolean onDispatchVolumeKeyEventBeforeJellyBean(KeyEvent keyEvent) {
        zzbo.zzcz("Must be called from the main thread.");
        if (zzq.zzrZ()) {
            return false;
        }
        CastSession currentCastSession = this.zzarO.getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            return false;
        }
        double volumeDeltaBeforeIceCreamSandwich = getCastOptions().getVolumeDeltaBeforeIceCreamSandwich();
        boolean z = keyEvent.getAction() == 0;
        switch (keyEvent.getKeyCode()) {
            case 24:
                zza(currentCastSession, volumeDeltaBeforeIceCreamSandwich, z);
                return true;
            case 25:
                zza(currentCastSession, -volumeDeltaBeforeIceCreamSandwich, z);
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public final void registerLifecycleCallbacksBeforeIceCreamSandwich(@NonNull FragmentActivity fragmentActivity, Bundle bundle) {
    }

    public final void removeAppVisibilityListener(AppVisibilityListener appVisibilityListener) throws IllegalStateException {
        zzbo.zzcz("Must be called from the main thread.");
        if (appVisibilityListener != null) {
            try {
                this.zzarN.zzb(new zza(appVisibilityListener));
            } catch (RemoteException e) {
                zzarK.zzb(e, "Unable to call %s on %s.", "addVisibilityChangeListener", zzk.class.getSimpleName());
            }
        }
    }

    public final void removeCastStateListener(CastStateListener castStateListener) throws IllegalStateException {
        zzbo.zzcz("Must be called from the main thread.");
        if (castStateListener != null) {
            this.zzarO.removeCastStateListener(castStateListener);
        }
    }

    public final zze zzno() {
        zzbo.zzcz("Must be called from the main thread.");
        return this.zzarP;
    }

    public final IObjectWrapper zznp() {
        try {
            return this.zzarN.zznu();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzk.class.getSimpleName());
            return null;
        }
    }
}
