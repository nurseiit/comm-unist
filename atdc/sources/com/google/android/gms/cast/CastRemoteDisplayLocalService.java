package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.text.TextUtils;
import android.view.Display;
import com.google.android.gms.R;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionCallbacks;
import com.google.android.gms.cast.CastRemoteDisplay.Configuration;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzayo;
import java.util.concurrent.atomic.AtomicBoolean;

@TargetApi(19)
public abstract class CastRemoteDisplayLocalService extends Service {
    private static CastRemoteDisplayLocalService zzapH;
    private static final zzayo zzapq = new zzayo("CastRemoteDisplayLocalService");
    private static final int zzapr = R.id.cast_notification_id;
    private static final Object zzaps = new Object();
    private static AtomicBoolean zzapt = new AtomicBoolean(false);
    private Handler mHandler;
    private Notification mNotification;
    private Display zzPO;
    private String zzaoM;
    private PendingIntent zzapA;
    private CastDevice zzapB;
    private Context zzapC;
    private ServiceConnection zzapD;
    private MediaRouter zzapE;
    private boolean zzapF = false;
    private final Callback zzapG = new zzp(this);
    private final IBinder zzapI = new zza(this, null);
    private GoogleApiClient zzapu;
    private CastRemoteDisplaySessionCallbacks zzapv;
    private Callbacks zzapw;
    private zzb zzapx;
    private NotificationSettings zzapy;
    private boolean zzapz;

    public interface Callbacks {
        void onRemoteDisplaySessionError(Status status);

        void onRemoteDisplaySessionStarted(CastRemoteDisplayLocalService castRemoteDisplayLocalService);

        void onServiceCreated(CastRemoteDisplayLocalService castRemoteDisplayLocalService);
    }

    public static final class NotificationSettings {
        private Notification mNotification;
        private PendingIntent zzapQ;
        private String zzapR;
        private String zzapS;

        public static final class Builder {
            private NotificationSettings zzapT = new NotificationSettings();

            public final NotificationSettings build() {
                if (this.zzapT.mNotification != null) {
                    if (!TextUtils.isEmpty(this.zzapT.zzapR)) {
                        throw new IllegalArgumentException("notificationTitle requires using the default notification");
                    } else if (!TextUtils.isEmpty(this.zzapT.zzapS)) {
                        throw new IllegalArgumentException("notificationText requires using the default notification");
                    } else if (this.zzapT.zzapQ != null) {
                        throw new IllegalArgumentException("notificationPendingIntent requires using the default notification");
                    }
                } else if (TextUtils.isEmpty(this.zzapT.zzapR) && TextUtils.isEmpty(this.zzapT.zzapS) && this.zzapT.zzapQ == null) {
                    throw new IllegalArgumentException("At least an argument must be provided");
                }
                return this.zzapT;
            }

            public final Builder setNotification(Notification notification) {
                this.zzapT.mNotification = notification;
                return this;
            }

            public final Builder setNotificationPendingIntent(PendingIntent pendingIntent) {
                this.zzapT.zzapQ = pendingIntent;
                return this;
            }

            public final Builder setNotificationText(String str) {
                this.zzapT.zzapS = str;
                return this;
            }

            public final Builder setNotificationTitle(String str) {
                this.zzapT.zzapR = str;
                return this;
            }
        }

        private NotificationSettings() {
        }

        private NotificationSettings(NotificationSettings notificationSettings) {
            this.mNotification = notificationSettings.mNotification;
            this.zzapQ = notificationSettings.zzapQ;
            this.zzapR = notificationSettings.zzapR;
            this.zzapS = notificationSettings.zzapS;
        }

        /* synthetic */ NotificationSettings(NotificationSettings notificationSettings, zzp zzp) {
            this(notificationSettings);
        }
    }

    public static class Options {
        @Configuration
        int zzapn = 2;

        public int getConfigPreset() {
            return this.zzapn;
        }

        public void setConfigPreset(@Configuration int i) {
            this.zzapn = i;
        }
    }

    class zza extends Binder {
        private zza() {
        }

        /* synthetic */ zza(CastRemoteDisplayLocalService castRemoteDisplayLocalService, zzp zzp) {
            this();
        }
    }

    static final class zzb extends BroadcastReceiver {
        private zzb() {
        }

        /* synthetic */ zzb(zzp zzp) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT")) {
                CastRemoteDisplayLocalService.zzapq.zzb("disconnecting", new Object[0]);
                CastRemoteDisplayLocalService.stopService();
            }
        }
    }

    public static CastRemoteDisplayLocalService getInstance() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        synchronized (zzaps) {
            castRemoteDisplayLocalService = zzapH;
        }
        return castRemoteDisplayLocalService;
    }

    protected static void setDebugEnabled() {
        zzapq.zzaa(true);
    }

    public static void startService(Context context, Class<? extends CastRemoteDisplayLocalService> cls, String str, CastDevice castDevice, NotificationSettings notificationSettings, Callbacks callbacks) {
        startServiceWithOptions(context, cls, str, castDevice, new Options(), notificationSettings, callbacks);
    }

    public static void startServiceWithOptions(@NonNull Context context, @NonNull Class<? extends CastRemoteDisplayLocalService> cls, @NonNull String str, @NonNull CastDevice castDevice, @NonNull Options options, @NonNull NotificationSettings notificationSettings, @NonNull Callbacks callbacks) {
        zzapq.zzb("Starting Service", new Object[0]);
        synchronized (zzaps) {
            if (zzapH != null) {
                zzapq.zzf("An existing service had not been stopped before starting one", new Object[0]);
                zzR(true);
            }
        }
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 128);
            if (serviceInfo == null || !serviceInfo.exported) {
                zzbo.zzb((Object) context, (Object) "activityContext is required.");
                zzbo.zzb((Object) cls, (Object) "serviceClass is required.");
                zzbo.zzb((Object) str, (Object) "applicationId is required.");
                zzbo.zzb((Object) castDevice, (Object) "device is required.");
                zzbo.zzb((Object) options, (Object) "options is required.");
                zzbo.zzb((Object) notificationSettings, (Object) "notificationSettings is required.");
                zzbo.zzb((Object) callbacks, (Object) "callbacks is required.");
                if (notificationSettings.mNotification == null && notificationSettings.zzapQ == null) {
                    throw new IllegalArgumentException("notificationSettings: Either the notification or the notificationPendingIntent must be provided");
                } else if (zzapt.getAndSet(true)) {
                    zzapq.zzc("Service is already being started, startService has been called twice", new Object[0]);
                    return;
                } else {
                    Intent intent = new Intent(context, cls);
                    context.startService(intent);
                    context.bindService(intent, new zzs(str, castDevice, options, notificationSettings, context, callbacks), 64);
                    return;
                }
            }
            throw new IllegalStateException("The service must not be exported, verify the manifest configuration");
        } catch (NameNotFoundException unused) {
            throw new IllegalStateException("Service not found, did you forget to configure it in the manifest?");
        }
    }

    public static void stopService() {
        zzR(false);
    }

    private final void zzQ(boolean z) {
        zzbp("Stopping Service");
        zzbo.zzcz("stopServiceInstanceInternal must be called on the main thread");
        if (!(z || this.zzapE == null)) {
            zzbp("Setting default route");
            this.zzapE.selectRoute(this.zzapE.getDefaultRoute());
        }
        if (this.zzapx != null) {
            zzbp("Unregistering notification receiver");
            unregisterReceiver(this.zzapx);
        }
        zzbp("stopRemoteDisplaySession");
        zzbp("stopRemoteDisplay");
        if (this.zzapu == null || !this.zzapu.isConnected()) {
            zzapq.zzc("Unable to stop the remote display as the API client is not ready", new Object[0]);
        } else {
            CastRemoteDisplay.CastRemoteDisplayApi.stopRemoteDisplay(this.zzapu).setResultCallback(new zzx(this));
        }
        onDismissPresentation();
        zzbp("Stopping the remote display Service");
        stopForeground(true);
        stopSelf();
        if (this.zzapE != null) {
            zzbo.zzcz("CastRemoteDisplayLocalService calls must be done on the main thread");
            zzbp("removeMediaRouterCallback");
            this.zzapE.removeCallback(this.zzapG);
        }
        if (this.zzapu != null) {
            this.zzapu.disconnect();
            this.zzapu = null;
        }
        if (!(this.zzapC == null || this.zzapD == null)) {
            try {
                this.zzapC.unbindService(this.zzapD);
            } catch (IllegalArgumentException unused) {
                zzbp("No need to unbind service, already unbound");
            }
            this.zzapD = null;
            this.zzapC = null;
        }
        this.zzaoM = null;
        this.zzapu = null;
        this.mNotification = null;
        this.zzPO = null;
    }

    /* JADX WARNING: Missing block: B:11:0x0029, code skipped:
            if (r1.mHandler == null) goto L_0x0043;
     */
    /* JADX WARNING: Missing block: B:13:0x0033, code skipped:
            if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) goto L_0x0040;
     */
    /* JADX WARNING: Missing block: B:14:0x0035, code skipped:
            r1.mHandler.post(new com.google.android.gms.cast.zzt(r1, r4));
     */
    /* JADX WARNING: Missing block: B:15:0x003f, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:16:0x0040, code skipped:
            r1.zzQ(r4);
     */
    /* JADX WARNING: Missing block: B:17:0x0043, code skipped:
            return;
     */
    private static void zzR(boolean r4) {
        /*
        r0 = zzapq;
        r1 = "Stopping Service";
        r2 = 0;
        r3 = new java.lang.Object[r2];
        r0.zzb(r1, r3);
        r0 = zzapt;
        r0.set(r2);
        r0 = zzaps;
        monitor-enter(r0);
        r1 = zzapH;	 Catch:{ all -> 0x0044 }
        if (r1 != 0) goto L_0x0021;
    L_0x0016:
        r4 = zzapq;	 Catch:{ all -> 0x0044 }
        r1 = "Service is already being stopped";
        r2 = new java.lang.Object[r2];	 Catch:{ all -> 0x0044 }
        r4.zzc(r1, r2);	 Catch:{ all -> 0x0044 }
        monitor-exit(r0);	 Catch:{ all -> 0x0044 }
        return;
    L_0x0021:
        r1 = zzapH;	 Catch:{ all -> 0x0044 }
        r2 = 0;
        zzapH = r2;	 Catch:{ all -> 0x0044 }
        monitor-exit(r0);	 Catch:{ all -> 0x0044 }
        r0 = r1.mHandler;
        if (r0 == 0) goto L_0x0043;
    L_0x002b:
        r0 = android.os.Looper.myLooper();
        r2 = android.os.Looper.getMainLooper();
        if (r0 == r2) goto L_0x0040;
    L_0x0035:
        r0 = r1.mHandler;
        r2 = new com.google.android.gms.cast.zzt;
        r2.<init>(r1, r4);
        r0.post(r2);
        return;
    L_0x0040:
        r1.zzQ(r4);
    L_0x0043:
        return;
    L_0x0044:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0044 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.CastRemoteDisplayLocalService.zzR(boolean):void");
    }

    private final Notification zzS(boolean z) {
        int i;
        int i2;
        zzbp("createDefaultNotification");
        CharSequence zzc = this.zzapy.zzapR;
        CharSequence zzd = this.zzapy.zzapS;
        if (z) {
            i = R.string.cast_notification_connected_message;
            i2 = R.drawable.cast_ic_notification_on;
        } else {
            i = R.string.cast_notification_connecting_message;
            i2 = R.drawable.cast_ic_notification_connecting;
        }
        if (TextUtils.isEmpty(zzc)) {
            zzc = (String) getPackageManager().getApplicationLabel(getApplicationInfo());
        }
        if (TextUtils.isEmpty(zzd)) {
            zzd = getString(i, new Object[]{this.zzapB.getFriendlyName()});
        }
        Builder ongoing = new Builder(this).setContentTitle(zzc).setContentText(zzd).setContentIntent(this.zzapy.zzapQ).setSmallIcon(i2).setOngoing(true);
        String string = getString(R.string.cast_notification_disconnect);
        if (this.zzapA == null) {
            Intent intent = new Intent("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT");
            intent.setPackage(this.zzapC.getPackageName());
            this.zzapA = PendingIntent.getBroadcast(this, 0, intent, DriveFile.MODE_READ_ONLY);
        }
        return ongoing.addAction(17301560, string, this.zzapA).build();
    }

    private final void zza(Display display) {
        this.zzPO = display;
        if (this.zzapz) {
            this.mNotification = zzS(true);
            startForeground(zzapr, this.mNotification);
        }
        if (this.zzapw != null) {
            this.zzapw.onRemoteDisplaySessionStarted(this);
            this.zzapw = null;
        }
        onCreatePresentation(this.zzPO);
    }

    private final void zza(NotificationSettings notificationSettings) {
        zzbo.zzcz("updateNotificationSettingsInternal must be called on the main thread");
        if (this.zzapy == null) {
            throw new IllegalStateException("No current notification settings to update");
        }
        if (!this.zzapz) {
            zzbo.zzb(notificationSettings.mNotification, (Object) "notification is required.");
            this.mNotification = notificationSettings.mNotification;
            this.zzapy.mNotification = this.mNotification;
        } else if (notificationSettings.mNotification != null) {
            throw new IllegalStateException("Current mode is default notification, notification attribute must not be provided");
        } else {
            if (notificationSettings.zzapQ != null) {
                this.zzapy.zzapQ = notificationSettings.zzapQ;
            }
            if (!TextUtils.isEmpty(notificationSettings.zzapR)) {
                this.zzapy.zzapR = notificationSettings.zzapR;
            }
            if (!TextUtils.isEmpty(notificationSettings.zzapS)) {
                this.zzapy.zzapS = notificationSettings.zzapS;
            }
            this.mNotification = zzS(true);
        }
        startForeground(zzapr, this.mNotification);
    }

    /* JADX WARNING: Missing block: B:10:0x0020, code skipped:
            r3.zzapw = r10;
            r3.zzaoM = r4;
            r3.zzapB = r5;
            r3.zzapC = r8;
            r3.zzapD = r9;
            r3.zzapE = android.support.v7.media.MediaRouter.getInstance(getApplicationContext());
            r4 = new android.support.v7.media.MediaRouteSelector.Builder().addControlCategory(com.google.android.gms.cast.CastMediaControlIntent.categoryForCast(r3.zzaoM)).build();
            zzbp("addMediaRouterCallback");
            r3.zzapE.addCallback(r4, r3.zzapG, 4);
            r3.zzapv = new com.google.android.gms.cast.zzv(r3);
            r3.mNotification = com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings.zzb(r7);
            r3.zzapx = new com.google.android.gms.cast.CastRemoteDisplayLocalService.zzb();
            registerReceiver(r3.zzapx, new android.content.IntentFilter("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT"));
            r3.zzapy = new com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings(r7, null);
     */
    /* JADX WARNING: Missing block: B:11:0x0083, code skipped:
            if (com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings.zzb(r3.zzapy) != null) goto L_0x008e;
     */
    /* JADX WARNING: Missing block: B:12:0x0085, code skipped:
            r3.zzapz = true;
            r4 = zzS(false);
     */
    /* JADX WARNING: Missing block: B:13:0x008b, code skipped:
            r3.mNotification = r4;
     */
    /* JADX WARNING: Missing block: B:14:0x008e, code skipped:
            r3.zzapz = false;
            r4 = com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings.zzb(r3.zzapy);
     */
    /* JADX WARNING: Missing block: B:15:0x0097, code skipped:
            startForeground(zzapr, r3.mNotification);
            r4 = new com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplayOptions.Builder(r5, r3.zzapv);
     */
    /* JADX WARNING: Missing block: B:16:0x00a5, code skipped:
            if (r6 == null) goto L_0x00ac;
     */
    /* JADX WARNING: Missing block: B:17:0x00a7, code skipped:
            r4.setConfigPreset(r6.zzapn);
     */
    /* JADX WARNING: Missing block: B:18:0x00ac, code skipped:
            r3.zzapu = new com.google.android.gms.common.api.GoogleApiClient.Builder(r3, new com.google.android.gms.cast.zzy(r3), new com.google.android.gms.cast.zzq(r3)).addApi(com.google.android.gms.cast.CastRemoteDisplay.API, r4.build()).build();
            r3.zzapu.connect();
     */
    /* JADX WARNING: Missing block: B:19:0x00d2, code skipped:
            if (r3.zzapw == null) goto L_0x00d9;
     */
    /* JADX WARNING: Missing block: B:20:0x00d4, code skipped:
            r3.zzapw.onServiceCreated(r3);
     */
    /* JADX WARNING: Missing block: B:21:0x00d9, code skipped:
            return true;
     */
    private final boolean zza(java.lang.String r4, com.google.android.gms.cast.CastDevice r5, com.google.android.gms.cast.CastRemoteDisplayLocalService.Options r6, com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings r7, android.content.Context r8, android.content.ServiceConnection r9, com.google.android.gms.cast.CastRemoteDisplayLocalService.Callbacks r10) {
        /*
        r3 = this;
        r0 = "startRemoteDisplaySession";
        r3.zzbp(r0);
        r0 = "Starting the Cast Remote Display must be done on the main thread";
        com.google.android.gms.common.internal.zzbo.zzcz(r0);
        r0 = zzaps;
        monitor-enter(r0);
        r1 = zzapH;	 Catch:{ all -> 0x00da }
        r2 = 0;
        if (r1 == 0) goto L_0x001d;
    L_0x0012:
        r4 = zzapq;	 Catch:{ all -> 0x00da }
        r5 = "An existing service had not been stopped before starting one";
        r6 = new java.lang.Object[r2];	 Catch:{ all -> 0x00da }
        r4.zzf(r5, r6);	 Catch:{ all -> 0x00da }
        monitor-exit(r0);	 Catch:{ all -> 0x00da }
        return r2;
    L_0x001d:
        zzapH = r3;	 Catch:{ all -> 0x00da }
        monitor-exit(r0);	 Catch:{ all -> 0x00da }
        r3.zzapw = r10;
        r3.zzaoM = r4;
        r3.zzapB = r5;
        r3.zzapC = r8;
        r3.zzapD = r9;
        r4 = r3.getApplicationContext();
        r4 = android.support.v7.media.MediaRouter.getInstance(r4);
        r3.zzapE = r4;
        r4 = new android.support.v7.media.MediaRouteSelector$Builder;
        r4.<init>();
        r8 = r3.zzaoM;
        r8 = com.google.android.gms.cast.CastMediaControlIntent.categoryForCast(r8);
        r4 = r4.addControlCategory(r8);
        r4 = r4.build();
        r8 = "addMediaRouterCallback";
        r3.zzbp(r8);
        r8 = r3.zzapE;
        r9 = r3.zzapG;
        r10 = 4;
        r8.addCallback(r4, r9, r10);
        r4 = new com.google.android.gms.cast.zzv;
        r4.<init>(r3);
        r3.zzapv = r4;
        r4 = r7.mNotification;
        r3.mNotification = r4;
        r4 = new com.google.android.gms.cast.CastRemoteDisplayLocalService$zzb;
        r8 = 0;
        r4.<init>(r8);
        r3.zzapx = r4;
        r4 = r3.zzapx;
        r9 = new android.content.IntentFilter;
        r10 = "com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT";
        r9.<init>(r10);
        r3.registerReceiver(r4, r9);
        r4 = new com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings;
        r4.<init>(r7, r8);
        r3.zzapy = r4;
        r4 = r3.zzapy;
        r4 = r4.mNotification;
        r7 = 1;
        if (r4 != 0) goto L_0x008e;
    L_0x0085:
        r3.zzapz = r7;
        r4 = r3.zzS(r2);
    L_0x008b:
        r3.mNotification = r4;
        goto L_0x0097;
    L_0x008e:
        r3.zzapz = r2;
        r4 = r3.zzapy;
        r4 = r4.mNotification;
        goto L_0x008b;
    L_0x0097:
        r4 = zzapr;
        r8 = r3.mNotification;
        r3.startForeground(r4, r8);
        r4 = new com.google.android.gms.cast.CastRemoteDisplay$CastRemoteDisplayOptions$Builder;
        r8 = r3.zzapv;
        r4.<init>(r5, r8);
        if (r6 == 0) goto L_0x00ac;
    L_0x00a7:
        r5 = r6.zzapn;
        r4.setConfigPreset(r5);
    L_0x00ac:
        r5 = new com.google.android.gms.cast.zzy;
        r5.<init>(r3);
        r6 = new com.google.android.gms.cast.zzq;
        r6.<init>(r3);
        r8 = new com.google.android.gms.common.api.GoogleApiClient$Builder;
        r8.<init>(r3, r5, r6);
        r5 = com.google.android.gms.cast.CastRemoteDisplay.API;
        r4 = r4.build();
        r4 = r8.addApi(r5, r4);
        r4 = r4.build();
        r3.zzapu = r4;
        r4 = r3.zzapu;
        r4.connect();
        r4 = r3.zzapw;
        if (r4 == 0) goto L_0x00d9;
    L_0x00d4:
        r4 = r3.zzapw;
        r4.onServiceCreated(r3);
    L_0x00d9:
        return r7;
    L_0x00da:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00da }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.CastRemoteDisplayLocalService.zza(java.lang.String, com.google.android.gms.cast.CastDevice, com.google.android.gms.cast.CastRemoteDisplayLocalService$Options, com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings, android.content.Context, android.content.ServiceConnection, com.google.android.gms.cast.CastRemoteDisplayLocalService$Callbacks):boolean");
    }

    private final void zzbp(String str) {
        zzapq.zzb("[Instance: %s] %s", this, str);
    }

    private final void zzbs(String str) {
        zzapq.zzc("[Instance: %s] %s", this, str);
    }

    private final void zznd() {
        zzbp("startRemoteDisplay");
        if (this.zzapu == null || !this.zzapu.isConnected()) {
            zzapq.zzc("Unable to start the remote display as the API client is not ready", new Object[0]);
        } else {
            CastRemoteDisplay.CastRemoteDisplayApi.startRemoteDisplay(this.zzapu, this.zzaoM).setResultCallback(new zzw(this));
        }
    }

    private final void zzne() {
        if (this.zzapw != null) {
            this.zzapw.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_CREATION_FAILED));
            this.zzapw = null;
        }
        stopService();
    }

    /* Access modifiers changed, original: protected */
    public Display getDisplay() {
        return this.zzPO;
    }

    public IBinder onBind(Intent intent) {
        zzbp("onBind");
        return this.zzapI;
    }

    public void onCreate() {
        zzbp("onCreate");
        super.onCreate();
        this.mHandler = new Handler(getMainLooper());
        this.mHandler.postDelayed(new zzr(this), 100);
    }

    public abstract void onCreatePresentation(Display display);

    public abstract void onDismissPresentation();

    public int onStartCommand(Intent intent, int i, int i2) {
        zzbp("onStartCommand");
        this.zzapF = true;
        return 2;
    }

    public void updateNotificationSettings(NotificationSettings notificationSettings) {
        zzbo.zzb((Object) notificationSettings, (Object) "notificationSettings is required.");
        zzbo.zzb(this.mHandler, (Object) "Service is not ready yet.");
        this.mHandler.post(new zzu(this, notificationSettings));
    }
}
