package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.stats.zza;
import java.util.HashMap;
import org.altbeacon.beacon.BeaconManager;

final class zzag extends zzae implements Callback {
    private final Context mApplicationContext;
    private final Handler mHandler;
    private final HashMap<zzaf, zzah> zzaHP = new HashMap();
    private final zza zzaHQ;
    private final long zzaHR;
    private final long zzaHS;

    zzag(Context context) {
        this.mApplicationContext = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
        this.zzaHQ = zza.zzrU();
        this.zzaHR = 5000;
        this.zzaHS = BeaconManager.DEFAULT_BACKGROUND_BETWEEN_SCAN_PERIOD;
    }

    public final boolean handleMessage(Message message) {
        zzaf zzaf;
        zzah zzah;
        switch (message.what) {
            case 0:
                synchronized (this.zzaHP) {
                    zzaf = (zzaf) message.obj;
                    zzah = (zzah) this.zzaHP.get(zzaf);
                    if (zzah != null && zzah.zzrC()) {
                        if (zzah.isBound()) {
                            zzah.zzcC("GmsClientSupervisor");
                        }
                        this.zzaHP.remove(zzaf);
                    }
                }
                return true;
            case 1:
                synchronized (this.zzaHP) {
                    zzaf = (zzaf) message.obj;
                    zzah = (zzah) this.zzaHP.get(zzaf);
                    if (zzah != null && zzah.getState() == 3) {
                        String valueOf = String.valueOf(zzaf);
                        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 47);
                        stringBuilder.append("Timeout waiting for ServiceConnection callback ");
                        stringBuilder.append(valueOf);
                        Log.wtf("GmsClientSupervisor", stringBuilder.toString(), new Exception());
                        ComponentName componentName = zzah.getComponentName();
                        if (componentName == null) {
                            componentName = zzaf.getComponentName();
                        }
                        if (componentName == null) {
                            componentName = new ComponentName(zzaf.getPackage(), "unknown");
                        }
                        zzah.onServiceDisconnected(componentName);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(zzaf zzaf, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        zzbo.zzb((Object) serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.zzaHP) {
            zzah zzah = (zzah) this.zzaHP.get(zzaf);
            if (zzah != null) {
                this.mHandler.removeMessages(0, zzaf);
                if (!zzah.zza(serviceConnection)) {
                    zzah.zza(serviceConnection, str);
                    switch (zzah.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzah.getComponentName(), zzah.getBinder());
                            break;
                        case 2:
                            zzah.zzcB(str);
                            break;
                        default:
                            break;
                    }
                }
                String valueOf = String.valueOf(zzaf);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 81);
                stringBuilder.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            }
            zzah = new zzah(this, zzaf);
            zzah.zza(serviceConnection, str);
            zzah.zzcB(str);
            this.zzaHP.put(zzaf, zzah);
            isBound = zzah.isBound();
        }
        return isBound;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzb(zzaf zzaf, ServiceConnection serviceConnection, String str) {
        zzbo.zzb((Object) serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.zzaHP) {
            zzah zzah = (zzah) this.zzaHP.get(zzaf);
            String valueOf;
            StringBuilder stringBuilder;
            if (zzah == null) {
                valueOf = String.valueOf(zzaf);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 50);
                stringBuilder.append("Nonexistent connection status for service config: ");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            } else if (zzah.zza(serviceConnection)) {
                zzah.zzb(serviceConnection, str);
                if (zzah.zzrC()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzaf), this.zzaHR);
                }
            } else {
                valueOf = String.valueOf(zzaf);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 76);
                stringBuilder.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
    }
}
