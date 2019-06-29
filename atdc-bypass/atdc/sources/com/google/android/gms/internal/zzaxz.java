package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.atomic.AtomicReference;

final class zzaxz extends zzaym {
    private final Handler mHandler;
    private final AtomicReference<zzaxx> zzayh;

    public zzaxz(zzaxx zzaxx) {
        this.zzayh = new AtomicReference(zzaxx);
        this.mHandler = new Handler(zzaxx.getLooper());
    }

    private static void zza(zzaxx zzaxx, long j, int i) {
        zzbaz zzbaz;
        synchronized (zzaxx.zzaxZ) {
            zzbaz = (zzbaz) zzaxx.zzaxZ.remove(Long.valueOf(j));
        }
        if (zzbaz != null) {
            zzbaz.setResult(new Status(i));
        }
    }

    private static boolean zza(zzaxx zzaxx, int i) {
        synchronized (zzaxx.zzayd) {
            if (zzaxx.zzayb != null) {
                zzaxx.zzayb.setResult(new Status(i));
                zzaxx.zzayb = null;
                return true;
            }
            return false;
        }
    }

    public final boolean isDisposed() {
        return this.zzayh.get() == null;
    }

    public final void onApplicationDisconnected(int i) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zzaxx.zzaxW = null;
            zzaxx.zzaxX = null;
            zza(zzaxx, i);
            if (zzaxx.zzaoY != null) {
                this.mHandler.post(new zzaya(this, zzaxx, i));
            }
        }
    }

    public final void zzZ(int i) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            synchronized (zzaxx.zzayc) {
                if (zzaxx.zzaya != null) {
                    zzaxx.zzaya.setResult(new zzaxy(new Status(i)));
                    zzaxx.zzaya = null;
                }
            }
        }
    }

    public final void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zzaxx.zzaxL = applicationMetadata;
            zzaxx.zzaxW = applicationMetadata.getApplicationId();
            zzaxx.zzaxX = str2;
            zzaxx.zzaxP = str;
            synchronized (zzaxx.zzayc) {
                if (zzaxx.zzaya != null) {
                    zzaxx.zzaya.setResult(new zzaxy(new Status(0), applicationMetadata, str, str2, z));
                    zzaxx.zzaya = null;
                }
            }
        }
    }

    public final void zza(String str, double d, boolean z) {
        zzaxx.zzapq.zzb("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    public final void zza(String str, long j, int i) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zza(zzaxx, j, i);
        }
    }

    public final void zza(String str, byte[] bArr) {
        if (((zzaxx) this.zzayh.get()) != null) {
            zzaxx.zzapq.zzb("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
        }
    }

    public final void zzae(int i) {
        zzaxx zzoI = zzoI();
        if (zzoI != null) {
            zzaxx.zzapq.zzb("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
            if (i != 0) {
                zzoI.zzay(2);
            }
        }
    }

    public final void zzaf(int i) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zza(zzaxx, i);
        }
    }

    public final void zzag(int i) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zza(zzaxx, i);
        }
    }

    public final void zzb(zzaxq zzaxq) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zzaxx.zzapq.zzb("onApplicationStatusChanged", new Object[0]);
            this.mHandler.post(new zzayc(this, zzaxx, zzaxq));
        }
    }

    public final void zzb(zzayf zzayf) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zzaxx.zzapq.zzb("onDeviceStatusChanged", new Object[0]);
            this.mHandler.post(new zzayb(this, zzaxx, zzayf));
        }
    }

    public final void zzb(String str, long j) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zza(zzaxx, j, 0);
        }
    }

    public final zzaxx zzoI() {
        zzaxx zzaxx = (zzaxx) this.zzayh.getAndSet(null);
        if (zzaxx == null) {
            return null;
        }
        zzaxx.zzoB();
        return zzaxx;
    }

    public final void zzu(String str, String str2) {
        zzaxx zzaxx = (zzaxx) this.zzayh.get();
        if (zzaxx != null) {
            zzaxx.zzapq.zzb("Receive (type=text, ns=%s) %s", str, str2);
            this.mHandler.post(new zzayd(this, zzaxx, str, str2));
        }
    }
}
