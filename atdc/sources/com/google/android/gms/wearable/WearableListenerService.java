package com.google.android.gms.wearable;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.CapabilityApi.CapabilityListener;
import com.google.android.gms.wearable.ChannelApi.ChannelListener;
import com.google.android.gms.wearable.DataApi.DataListener;
import com.google.android.gms.wearable.MessageApi.MessageListener;
import com.google.android.gms.wearable.NodeApi.NodeListener;
import com.google.android.gms.wearable.internal.zzaa;
import com.google.android.gms.wearable.internal.zzai;
import com.google.android.gms.wearable.internal.zzdl;
import com.google.android.gms.wearable.internal.zzdx;
import com.google.android.gms.wearable.internal.zzeg;
import com.google.android.gms.wearable.internal.zzi;
import com.google.android.gms.wearable.internal.zzl;
import java.util.List;

public class WearableListenerService extends Service implements CapabilityListener, ChannelListener, DataListener, MessageListener, NodeListener {
    public static final String BIND_LISTENER_INTENT_ACTION = "com.google.android.gms.wearable.BIND_LISTENER";
    private IBinder zzaHj;
    private ComponentName zzbRq;
    private zzb zzbRr;
    private Intent zzbRs;
    private Looper zzbRt;
    private final Object zzbRu = new Object();
    private boolean zzbRv;

    class zza implements ServiceConnection {
        private zza(WearableListenerService wearableListenerService) {
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    final class zzb extends Handler {
        private boolean started;
        private final zza zzbRw = new zza();

        zzb(Looper looper) {
            super(looper);
        }

        @SuppressLint({"UntrackedBindService"})
        private final synchronized void zzDW() {
            if (!this.started) {
                if (Log.isLoggable("WearableLS", 2)) {
                    String valueOf = String.valueOf(WearableListenerService.this.zzbRq);
                    StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 13);
                    stringBuilder.append("bindService: ");
                    stringBuilder.append(valueOf);
                    Log.v("WearableLS", stringBuilder.toString());
                }
                WearableListenerService.this.bindService(WearableListenerService.this.zzbRs, this.zzbRw, 1);
                this.started = true;
            }
        }

        @SuppressLint({"UntrackedBindService"})
        private final synchronized void zzgk(String str) {
            if (this.started) {
                if (Log.isLoggable("WearableLS", 2)) {
                    String valueOf = String.valueOf(WearableListenerService.this.zzbRq);
                    StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 17) + String.valueOf(valueOf).length());
                    stringBuilder.append("unbindService: ");
                    stringBuilder.append(str);
                    stringBuilder.append(", ");
                    stringBuilder.append(valueOf);
                    Log.v("WearableLS", stringBuilder.toString());
                }
                try {
                    WearableListenerService.this.unbindService(this.zzbRw);
                } catch (RuntimeException e) {
                    Log.e("WearableLS", "Exception when unbinding from local service", e);
                }
                this.started = false;
            }
        }

        public final void dispatchMessage(Message message) {
            zzDW();
            try {
                super.dispatchMessage(message);
            } finally {
                if (!hasMessages(0)) {
                    zzgk("dispatch");
                }
            }
        }

        /* Access modifiers changed, original: final */
        public final void quit() {
            getLooper().quit();
            zzgk("quit");
        }
    }

    final class zzc extends zzdl {
        private volatile int zzbRy;

        private zzc() {
            this.zzbRy = -1;
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x0073  */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x0072 A:{RETURN} */
        private final boolean zza(java.lang.Runnable r6, java.lang.String r7, java.lang.Object r8) {
            /*
            r5 = this;
            r0 = "WearableLS";
            r1 = 3;
            r0 = android.util.Log.isLoggable(r0, r1);
            r2 = 0;
            r3 = 1;
            if (r0 == 0) goto L_0x0029;
        L_0x000b:
            r0 = "WearableLS";
            r4 = "%s: %s %s";
            r1 = new java.lang.Object[r1];
            r1[r2] = r7;
            r7 = com.google.android.gms.wearable.WearableListenerService.this;
            r7 = r7.zzbRq;
            r7 = r7.toString();
            r1[r3] = r7;
            r7 = 2;
            r1[r7] = r8;
            r7 = java.lang.String.format(r4, r1);
            android.util.Log.d(r0, r7);
        L_0x0029:
            r7 = android.os.Binder.getCallingUid();
            r8 = r5.zzbRy;
            if (r7 != r8) goto L_0x0033;
        L_0x0031:
            r7 = 1;
            goto L_0x0070;
        L_0x0033:
            r8 = com.google.android.gms.wearable.WearableListenerService.this;
            r8 = com.google.android.gms.wearable.internal.zzgh.zzbz(r8);
            r0 = "com.google.android.wearable.app.cn";
            r8 = r8.zzgm(r0);
            if (r8 == 0) goto L_0x004e;
        L_0x0041:
            r8 = com.google.android.gms.wearable.WearableListenerService.this;
            r0 = "com.google.android.wearable.app.cn";
            r8 = com.google.android.gms.common.util.zzw.zzb(r8, r7, r0);
            if (r8 == 0) goto L_0x004e;
        L_0x004b:
            r5.zzbRy = r7;
            goto L_0x0031;
        L_0x004e:
            r8 = com.google.android.gms.wearable.WearableListenerService.this;
            r8 = com.google.android.gms.common.util.zzw.zzf(r8, r7);
            if (r8 == 0) goto L_0x0057;
        L_0x0056:
            goto L_0x004b;
        L_0x0057:
            r8 = "WearableLS";
            r0 = 57;
            r1 = new java.lang.StringBuilder;
            r1.<init>(r0);
            r0 = "Caller is not GooglePlayServices; caller UID: ";
            r1.append(r0);
            r1.append(r7);
            r7 = r1.toString();
            android.util.Log.e(r8, r7);
            r7 = 0;
        L_0x0070:
            if (r7 != 0) goto L_0x0073;
        L_0x0072:
            return r2;
        L_0x0073:
            r7 = com.google.android.gms.wearable.WearableListenerService.this;
            r7 = r7.zzbRu;
            monitor-enter(r7);
            r8 = com.google.android.gms.wearable.WearableListenerService.this;	 Catch:{ all -> 0x008f }
            r8 = r8.zzbRv;	 Catch:{ all -> 0x008f }
            if (r8 == 0) goto L_0x0084;
        L_0x0082:
            monitor-exit(r7);	 Catch:{ all -> 0x008f }
            return r2;
        L_0x0084:
            r8 = com.google.android.gms.wearable.WearableListenerService.this;	 Catch:{ all -> 0x008f }
            r8 = r8.zzbRr;	 Catch:{ all -> 0x008f }
            r8.post(r6);	 Catch:{ all -> 0x008f }
            monitor-exit(r7);	 Catch:{ all -> 0x008f }
            return r3;
        L_0x008f:
            r6 = move-exception;
            monitor-exit(r7);	 Catch:{ all -> 0x008f }
            throw r6;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.wearable.WearableListenerService$zzc.zza(java.lang.Runnable, java.lang.String, java.lang.Object):boolean");
        }

        public final void onConnectedNodes(List<zzeg> list) {
            zza(new zzp(this, list), "onConnectedNodes", list);
        }

        public final void zzS(DataHolder dataHolder) {
            zzl zzl = new zzl(this, dataHolder);
            try {
                String valueOf = String.valueOf(dataHolder);
                int count = dataHolder.getCount();
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 18);
                stringBuilder.append(valueOf);
                stringBuilder.append(", rows=");
                stringBuilder.append(count);
                if (!zza(zzl, "onDataItemChanged", stringBuilder.toString())) {
                }
            } finally {
                dataHolder.close();
            }
        }

        public final void zza(zzaa zzaa) {
            zza(new zzq(this, zzaa), "onConnectedCapabilityChanged", zzaa);
        }

        public final void zza(zzai zzai) {
            zza(new zzt(this, zzai), "onChannelEvent", zzai);
        }

        public final void zza(zzdx zzdx) {
            zza(new zzm(this, zzdx), "onMessageReceived", zzdx);
        }

        public final void zza(zzeg zzeg) {
            zza(new zzn(this, zzeg), "onPeerConnected", zzeg);
        }

        public final void zza(zzi zzi) {
            zza(new zzs(this, zzi), "onEntityUpdate", zzi);
        }

        public final void zza(zzl zzl) {
            zza(new zzr(this, zzl), "onNotificationReceived", zzl);
        }

        public final void zzb(zzeg zzeg) {
            zza(new zzo(this, zzeg), "onPeerDisconnected", zzeg);
        }
    }

    public Looper getLooper() {
        if (this.zzbRt == null) {
            HandlerThread handlerThread = new HandlerThread("WearableListenerService");
            handlerThread.start();
            this.zzbRt = handlerThread.getLooper();
        }
        return this.zzbRt;
    }

    public final IBinder onBind(Intent intent) {
        return BIND_LISTENER_INTENT_ACTION.equals(intent.getAction()) ? this.zzaHj : null;
    }

    public void onCapabilityChanged(CapabilityInfo capabilityInfo) {
    }

    public void onChannelClosed(Channel channel, int i, int i2) {
    }

    public void onChannelOpened(Channel channel) {
    }

    public void onConnectedNodes(List<Node> list) {
    }

    public void onCreate() {
        super.onCreate();
        this.zzbRq = new ComponentName(this, getClass().getName());
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.zzbRq);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 10);
            stringBuilder.append("onCreate: ");
            stringBuilder.append(valueOf);
            Log.d("WearableLS", stringBuilder.toString());
        }
        this.zzbRr = new zzb(getLooper());
        this.zzbRs = new Intent(BIND_LISTENER_INTENT_ACTION);
        this.zzbRs.setComponent(this.zzbRq);
        this.zzaHj = new zzc();
    }

    public void onDataChanged(DataEventBuffer dataEventBuffer) {
    }

    public void onDestroy() {
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.zzbRq);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 11);
            stringBuilder.append("onDestroy: ");
            stringBuilder.append(valueOf);
            Log.d("WearableLS", stringBuilder.toString());
        }
        synchronized (this.zzbRu) {
            this.zzbRv = true;
            if (this.zzbRr == null) {
                String valueOf2 = String.valueOf(this.zzbRq);
                StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 111);
                stringBuilder2.append("onDestroy: mServiceHandler not set, did you override onCreate() but forget to call super.onCreate()? component=");
                stringBuilder2.append(valueOf2);
                throw new IllegalStateException(stringBuilder2.toString());
            }
            this.zzbRr.quit();
        }
        super.onDestroy();
    }

    public void onEntityUpdate(zzb zzb) {
    }

    public void onInputClosed(Channel channel, int i, int i2) {
    }

    public void onMessageReceived(MessageEvent messageEvent) {
    }

    public void onNotificationReceived(zzd zzd) {
    }

    public void onOutputClosed(Channel channel, int i, int i2) {
    }

    public void onPeerConnected(Node node) {
    }

    public void onPeerDisconnected(Node node) {
    }
}
