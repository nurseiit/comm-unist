package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class zzaxx extends zzz<zzayj> {
    private static final zzayo zzapq = new zzayo("CastClientImpl");
    private static final Object zzayc = new Object();
    private static final Object zzayd = new Object();
    private final Bundle mExtras;
    private final Listener zzaoY;
    private double zzaqD;
    private boolean zzaqE;
    private final CastDevice zzasf;
    private ApplicationMetadata zzaxL;
    private final Map<String, MessageReceivedCallback> zzaxM = new HashMap();
    private final long zzaxN;
    private zzaxz zzaxO;
    private String zzaxP;
    private boolean zzaxQ;
    private boolean zzaxR;
    private boolean zzaxS;
    private int zzaxT;
    private int zzaxU;
    private final AtomicLong zzaxV = new AtomicLong(0);
    private String zzaxW;
    private String zzaxX;
    private Bundle zzaxY;
    private final Map<Long, zzbaz<Status>> zzaxZ = new HashMap();
    private zzbaz<ApplicationConnectionResult> zzaya;
    private zzbaz<Status> zzayb;

    public zzaxx(Context context, Looper looper, zzq zzq, CastDevice castDevice, long j, Listener listener, Bundle bundle, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzasf = castDevice;
        this.zzaoY = listener;
        this.zzaxN = j;
        this.mExtras = bundle;
        zzoB();
    }

    private final void zza(zzaxq zzaxq) {
        boolean z;
        String zzoy = zzaxq.zzoy();
        if (zzaye.zza(zzoy, this.zzaxP)) {
            z = false;
        } else {
            this.zzaxP = zzoy;
            z = true;
        }
        zzapq.zzb("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzaxQ));
        if (this.zzaoY != null && (z || this.zzaxQ)) {
            this.zzaoY.onApplicationStatusChanged();
        }
        this.zzaxQ = false;
    }

    private final void zza(zzayf zzayf) {
        boolean z;
        boolean z2;
        ApplicationMetadata applicationMetadata = zzayf.getApplicationMetadata();
        if (!zzaye.zza(applicationMetadata, this.zzaxL)) {
            this.zzaxL = applicationMetadata;
            this.zzaoY.onApplicationMetadataChanged(this.zzaxL);
        }
        double volume = zzayf.getVolume();
        if (Double.isNaN(volume) || Math.abs(volume - this.zzaqD) <= 1.0E-7d) {
            z = false;
        } else {
            this.zzaqD = volume;
            z = true;
        }
        boolean zzoJ = zzayf.zzoJ();
        if (zzoJ != this.zzaqE) {
            this.zzaqE = zzoJ;
            z = true;
        }
        zzapq.zzb("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzaxR));
        if (this.zzaoY != null && (z || this.zzaxR)) {
            this.zzaoY.onVolumeChanged();
        }
        int activeInputState = zzayf.getActiveInputState();
        if (activeInputState != this.zzaxT) {
            this.zzaxT = activeInputState;
            z = true;
        } else {
            z = false;
        }
        zzapq.zzb("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzaxR));
        if (this.zzaoY != null && (z || this.zzaxR)) {
            this.zzaoY.onActiveInputStateChanged(this.zzaxT);
        }
        int standbyState = zzayf.getStandbyState();
        if (standbyState != this.zzaxU) {
            this.zzaxU = standbyState;
            z2 = true;
        } else {
            z2 = false;
        }
        zzapq.zzb("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(this.zzaxR));
        if (this.zzaoY != null && (z2 || this.zzaxR)) {
            this.zzaoY.onStandbyStateChanged(this.zzaxU);
        }
        this.zzaxR = false;
    }

    private final void zza(zzbaz<ApplicationConnectionResult> zzbaz) {
        synchronized (zzayc) {
            if (this.zzaya != null) {
                this.zzaya.setResult(new zzaxy(new Status(2002)));
            }
            this.zzaya = zzbaz;
        }
    }

    private final void zzc(zzbaz<Status> zzbaz) {
        synchronized (zzayd) {
            if (this.zzayb != null) {
                zzbaz.setResult(new Status(2001));
                return;
            }
            this.zzayb = zzbaz;
        }
    }

    private final void zzoB() {
        this.zzaxS = false;
        this.zzaxT = -1;
        this.zzaxU = -1;
        this.zzaxL = null;
        this.zzaxP = null;
        this.zzaqD = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzaqE = false;
    }

    private final void zzoD() {
        zzapq.zzb("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.zzaxM) {
            this.zzaxM.clear();
        }
    }

    private final void zzoE() throws IllegalStateException {
        if (!this.zzaxS || this.zzaxO == null || this.zzaxO.isDisposed()) {
            throw new IllegalStateException("Not connected to a device");
        }
    }

    public final void disconnect() {
        zzapq.zzb("disconnect(); ServiceListener=%s, isConnected=%b", this.zzaxO, Boolean.valueOf(isConnected()));
        zzaxz zzaxz = this.zzaxO;
        this.zzaxO = null;
        if (zzaxz == null || zzaxz.zzoI() == null) {
            zzapq.zzb("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        zzoD();
        try {
            ((zzayj) super.zzrf()).disconnect();
        } catch (RemoteException | IllegalStateException e) {
            zzapq.zzb(e, "Error while disconnecting the controller interface: %s", e.getMessage());
        } finally {
            super.disconnect();
        }
    }

    public final int getActiveInputState() throws IllegalStateException {
        zzoE();
        return this.zzaxT;
    }

    public final ApplicationMetadata getApplicationMetadata() throws IllegalStateException {
        zzoE();
        return this.zzaxL;
    }

    public final String getApplicationStatus() throws IllegalStateException {
        zzoE();
        return this.zzaxP;
    }

    public final int getStandbyState() throws IllegalStateException {
        zzoE();
        return this.zzaxU;
    }

    public final double getVolume() throws IllegalStateException {
        zzoE();
        return this.zzaqD;
    }

    public final boolean isMute() throws IllegalStateException {
        zzoE();
        return this.zzaqE;
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        zzoD();
    }

    public final void removeMessageReceivedCallbacks(String str) throws IllegalArgumentException, RemoteException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        MessageReceivedCallback messageReceivedCallback;
        synchronized (this.zzaxM) {
            messageReceivedCallback = (MessageReceivedCallback) this.zzaxM.remove(str);
        }
        if (messageReceivedCallback != null) {
            try {
                ((zzayj) super.zzrf()).zzcm(str);
            } catch (IllegalStateException e) {
                zzapq.zzb(e, "Error unregistering namespace (%s): %s", str, e.getMessage());
            }
        }
    }

    public final void requestStatus() throws IllegalStateException, RemoteException {
        ((zzayj) super.zzrf()).requestStatus();
    }

    public final void setMessageReceivedCallbacks(String str, MessageReceivedCallback messageReceivedCallback) throws IllegalArgumentException, IllegalStateException, RemoteException {
        zzaye.zzci(str);
        removeMessageReceivedCallbacks(str);
        if (messageReceivedCallback != null) {
            synchronized (this.zzaxM) {
                this.zzaxM.put(str, messageReceivedCallback);
            }
            ((zzayj) super.zzrf()).zzcl(str);
        }
    }

    public final void setMute(boolean z) throws IllegalStateException, RemoteException {
        ((zzayj) super.zzrf()).zza(z, this.zzaqD, this.zzaqE);
    }

    public final void setVolume(double d) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder stringBuilder = new StringBuilder(41);
            stringBuilder.append("Volume cannot be ");
            stringBuilder.append(d);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        ((zzayj) super.zzrf()).zza(d, this.zzaqD, this.zzaqE);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzapq.zzb("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i == 0 || i == 1001) {
            this.zzaxS = true;
            this.zzaxQ = true;
            this.zzaxR = true;
        } else {
            this.zzaxS = false;
        }
        if (i == 1001) {
            this.zzaxY = new Bundle();
            this.zzaxY.putBoolean(Cast.EXTRA_APP_NO_LONGER_RUNNING, true);
            i = 0;
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public final void zza(String str, LaunchOptions launchOptions, zzbaz<ApplicationConnectionResult> zzbaz) throws IllegalStateException, RemoteException {
        zza((zzbaz) zzbaz);
        ((zzayj) super.zzrf()).zzb(str, launchOptions);
    }

    public final void zza(String str, zzbaz<Status> zzbaz) throws IllegalStateException, RemoteException {
        zzc((zzbaz) zzbaz);
        ((zzayj) super.zzrf()).zzcc(str);
    }

    public final void zza(String str, String str2, com.google.android.gms.cast.zzz zzz, zzbaz<ApplicationConnectionResult> zzbaz) throws IllegalStateException, RemoteException {
        zza((zzbaz) zzbaz);
        if (zzz == null) {
            zzz = new com.google.android.gms.cast.zzz();
        }
        ((zzayj) super.zzrf()).zza(str, str2, zzz);
    }

    public final void zza(String str, String str2, zzbaz<Status> zzbaz) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        } else if (str2.length() > 65536) {
            throw new IllegalArgumentException("Message exceeds maximum size");
        } else {
            zzaye.zzci(str);
            zzoE();
            long incrementAndGet = this.zzaxV.incrementAndGet();
            try {
                this.zzaxZ.put(Long.valueOf(incrementAndGet), zzbaz);
                ((zzayj) super.zzrf()).zzb(str, str2, incrementAndGet);
            } catch (Throwable th) {
                this.zzaxZ.remove(Long.valueOf(incrementAndGet));
            }
        }
    }

    public final void zzb(zzbaz<Status> zzbaz) throws IllegalStateException, RemoteException {
        zzc((zzbaz) zzbaz);
        ((zzayj) super.zzrf()).zzoK();
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String zzdb() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String zzdc() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        Bundle bundle = new Bundle();
        zzapq.zzb("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.zzaxW, this.zzaxX);
        this.zzasf.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.zzaxN);
        if (this.mExtras != null) {
            bundle.putAll(this.mExtras);
        }
        this.zzaxO = new zzaxz(this);
        bundle.putParcelable("listener", new BinderWrapper(this.zzaxO.asBinder()));
        if (this.zzaxW != null) {
            bundle.putString("last_application_id", this.zzaxW);
            if (this.zzaxX != null) {
                bundle.putString("last_session_id", this.zzaxX);
            }
        }
        return bundle;
    }

    public final Bundle zzoC() {
        if (this.zzaxY == null) {
            return super.zzoC();
        }
        Bundle bundle = this.zzaxY;
        this.zzaxY = null;
        return bundle;
    }
}
