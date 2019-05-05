package com.google.android.gms.drive.events;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.util.zzw;
import com.google.android.gms.internal.zzbng;
import com.google.android.gms.internal.zzbor;
import com.google.android.gms.internal.zzbph;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class DriveEventService extends Service implements ChangeListener, CompletionListener, zzd, zzi {
    public static final String ACTION_HANDLE_EVENT = "com.google.android.gms.drive.events.HANDLE_EVENT";
    private final String mName;
    private int zzaGG;
    private CountDownLatch zzaNe;
    zza zzaNf;
    boolean zzaNg;

    final class zza extends Handler {
        zza() {
        }

        private final Message zzb(zzbph zzbph) {
            return obtainMessage(1, zzbph);
        }

        private final Message zzta() {
            return obtainMessage(2);
        }

        public final void handleMessage(Message message) {
            int i = message.what;
            StringBuilder stringBuilder = new StringBuilder(38);
            stringBuilder.append("handleMessage message type:");
            stringBuilder.append(i);
            zzbng.zzx("DriveEventService", stringBuilder.toString());
            switch (message.what) {
                case 1:
                    DriveEventService.this.zza((zzbph) message.obj);
                    return;
                case 2:
                    getLooper().quit();
                    return;
                default:
                    int i2 = message.what;
                    stringBuilder = new StringBuilder(35);
                    stringBuilder.append("Unexpected message type:");
                    stringBuilder.append(i2);
                    zzbng.zzy("DriveEventService", stringBuilder.toString());
                    return;
            }
        }
    }

    final class zzb extends zzbor {
        zzb() {
        }

        public final void zzc(zzbph zzbph) throws RemoteException {
            synchronized (DriveEventService.this) {
                String valueOf = String.valueOf(zzbph);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 9);
                stringBuilder.append("onEvent: ");
                stringBuilder.append(valueOf);
                zzbng.zzx("DriveEventService", stringBuilder.toString());
                DriveEventService.this.zzsZ();
                if (DriveEventService.this.zzaNf != null) {
                    DriveEventService.this.zzaNf.sendMessage(DriveEventService.this.zzaNf.zzb(zzbph));
                } else {
                    zzbng.zzz("DriveEventService", "Receiving event before initialize is completed.");
                }
            }
        }
    }

    protected DriveEventService() {
        this("DriveEventService");
    }

    protected DriveEventService(String str) {
        this.zzaNg = false;
        this.zzaGG = -1;
        this.mName = str;
    }

    private final void zza(zzbph zzbph) {
        DriveEvent zztj = zzbph.zztj();
        String valueOf = String.valueOf(zztj);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 20);
        stringBuilder.append("handleEventMessage: ");
        stringBuilder.append(valueOf);
        zzbng.zzx("DriveEventService", stringBuilder.toString());
        try {
            int type = zztj.getType();
            String str;
            if (type == 4) {
                zza((zzb) zztj);
            } else if (type != 7) {
                switch (type) {
                    case 1:
                        onChange((ChangeEvent) zztj);
                        return;
                    case 2:
                        onCompletion((CompletionEvent) zztj);
                        return;
                    default:
                        str = this.mName;
                        valueOf = String.valueOf(zztj);
                        stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 17);
                        stringBuilder.append("Unhandled event: ");
                        stringBuilder.append(valueOf);
                        zzbng.zzy(str, stringBuilder.toString());
                        return;
                }
            } else {
                zzr zzr = (zzr) zztj;
                valueOf = this.mName;
                str = String.valueOf(zzr);
                stringBuilder = new StringBuilder(String.valueOf(str).length() + 32);
                stringBuilder.append("Unhandled transfer state event: ");
                stringBuilder.append(str);
                zzbng.zzy(valueOf, stringBuilder.toString());
            }
        } catch (Exception e) {
            valueOf = this.mName;
            String valueOf2 = String.valueOf(zztj);
            stringBuilder = new StringBuilder(String.valueOf(valueOf2).length() + 22);
            stringBuilder.append("Error handling event: ");
            stringBuilder.append(valueOf2);
            zzbng.zza(valueOf, e, stringBuilder.toString());
        }
    }

    private final void zzsZ() throws SecurityException {
        int callingUid = getCallingUid();
        if (callingUid != this.zzaGG) {
            if (zzw.zzf(this, callingUid)) {
                this.zzaGG = callingUid;
                return;
            }
            throw new SecurityException("Caller is not GooglePlayServices");
        }
    }

    /* Access modifiers changed, original: protected */
    public int getCallingUid() {
        return Binder.getCallingUid();
    }

    public final synchronized IBinder onBind(Intent intent) {
        if (!ACTION_HANDLE_EVENT.equals(intent.getAction())) {
            return null;
        }
        if (this.zzaNf == null && !this.zzaNg) {
            this.zzaNg = true;
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.zzaNe = new CountDownLatch(1);
            new zzh(this, countDownLatch).start();
            try {
                if (!countDownLatch.await(5000, TimeUnit.MILLISECONDS)) {
                    zzbng.zzz("DriveEventService", "Failed to synchronously initialize event handler.");
                }
            } catch (InterruptedException e) {
                throw new RuntimeException("Unable to start event handler", e);
            }
        }
        return new zzb().asBinder();
    }

    public void onChange(ChangeEvent changeEvent) {
        String str = this.mName;
        String valueOf = String.valueOf(changeEvent);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 24);
        stringBuilder.append("Unhandled change event: ");
        stringBuilder.append(valueOf);
        zzbng.zzy(str, stringBuilder.toString());
    }

    public void onCompletion(CompletionEvent completionEvent) {
        String str = this.mName;
        String valueOf = String.valueOf(completionEvent);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 28);
        stringBuilder.append("Unhandled completion event: ");
        stringBuilder.append(valueOf);
        zzbng.zzy(str, stringBuilder.toString());
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x002d */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:4|5|6|(1:8)|9|10) */
    public synchronized void onDestroy() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = "DriveEventService";
        r1 = "onDestroy";
        com.google.android.gms.internal.zzbng.zzx(r0, r1);	 Catch:{ all -> 0x0034 }
        r0 = r5.zzaNf;	 Catch:{ all -> 0x0034 }
        if (r0 == 0) goto L_0x002f;
    L_0x000c:
        r0 = r5.zzaNf;	 Catch:{ all -> 0x0034 }
        r0 = r0.zzta();	 Catch:{ all -> 0x0034 }
        r1 = r5.zzaNf;	 Catch:{ all -> 0x0034 }
        r1.sendMessage(r0);	 Catch:{ all -> 0x0034 }
        r0 = 0;
        r5.zzaNf = r0;	 Catch:{ all -> 0x0034 }
        r1 = r5.zzaNe;	 Catch:{ InterruptedException -> 0x002d }
        r2 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;
        r4 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException -> 0x002d }
        r1 = r1.await(r2, r4);	 Catch:{ InterruptedException -> 0x002d }
        if (r1 != 0) goto L_0x002d;
    L_0x0026:
        r1 = "DriveEventService";
        r2 = "Failed to synchronously quit event handler. Will quit itself";
        com.google.android.gms.internal.zzbng.zzy(r1, r2);	 Catch:{ InterruptedException -> 0x002d }
    L_0x002d:
        r5.zzaNe = r0;	 Catch:{ all -> 0x0034 }
    L_0x002f:
        super.onDestroy();	 Catch:{ all -> 0x0034 }
        monitor-exit(r5);
        return;
    L_0x0034:
        r0 = move-exception;
        monitor-exit(r5);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.drive.events.DriveEventService.onDestroy():void");
    }

    public boolean onUnbind(Intent intent) {
        return true;
    }

    public final void zza(zzb zzb) {
        String str = this.mName;
        String valueOf = String.valueOf(zzb);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 35);
        stringBuilder.append("Unhandled changes available event: ");
        stringBuilder.append(valueOf);
        zzbng.zzy(str, stringBuilder.toString());
    }
}
