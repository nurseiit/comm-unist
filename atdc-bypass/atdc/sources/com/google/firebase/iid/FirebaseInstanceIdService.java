package com.google.firebase.iid;

import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.annotation.WorkerThread;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.lotecs.attendcheck.common.GCMManager;

public class FirebaseInstanceIdService extends zzb {
    @VisibleForTesting
    private static Object zzckB = new Object();
    @VisibleForTesting
    private static boolean zzckC = false;
    private boolean zzckD = false;

    static class zza extends BroadcastReceiver {
        @Nullable
        private static BroadcastReceiver receiver;
        private int zzckE;

        private zza(int i) {
            this.zzckE = i;
        }

        static synchronized void zzl(Context context, int i) {
            synchronized (zza.class) {
                if (receiver != null) {
                    return;
                }
                receiver = new zza(i);
                context.getApplicationContext().registerReceiver(receiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            }
        }

        public void onReceive(Context context, Intent intent) {
            synchronized (zza.class) {
                if (receiver != this) {
                } else if (FirebaseInstanceIdService.zzbJ(context)) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        Log.d("FirebaseInstanceId", "connectivity changed. starting background sync.");
                    }
                    context.getApplicationContext().unregisterReceiver(this);
                    receiver = null;
                    zzq.zzJX().zze(context, FirebaseInstanceIdService.zzbZ(this.zzckE));
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:8:0x000a, code skipped:
            r3 = r3.zzJQ();
     */
    /* JADX WARNING: Missing block: B:9:0x000e, code skipped:
            if (r3 == null) goto L_0x0022;
     */
    /* JADX WARNING: Missing block: B:11:0x0016, code skipped:
            if (r3.zzhp(com.google.firebase.iid.zzj.zzbgW) != false) goto L_0x0022;
     */
    /* JADX WARNING: Missing block: B:13:0x0020, code skipped:
            if (com.google.firebase.iid.FirebaseInstanceId.zzJS().zzJV() == null) goto L_0x0025;
     */
    /* JADX WARNING: Missing block: B:14:0x0022, code skipped:
            zzbI(r2);
     */
    /* JADX WARNING: Missing block: B:15:0x0025, code skipped:
            return;
     */
    static void zza(android.content.Context r2, com.google.firebase.iid.FirebaseInstanceId r3) {
        /*
        r0 = zzckB;
        monitor-enter(r0);
        r1 = zzckC;	 Catch:{ all -> 0x0026 }
        if (r1 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r0);	 Catch:{ all -> 0x0026 }
        return;
    L_0x0009:
        monitor-exit(r0);	 Catch:{ all -> 0x0026 }
        r3 = r3.zzJQ();
        if (r3 == 0) goto L_0x0022;
    L_0x0010:
        r0 = com.google.firebase.iid.zzj.zzbgW;
        r3 = r3.zzhp(r0);
        if (r3 != 0) goto L_0x0022;
    L_0x0018:
        r3 = com.google.firebase.iid.FirebaseInstanceId.zzJS();
        r3 = r3.zzJV();
        if (r3 == 0) goto L_0x0025;
    L_0x0022:
        zzbI(r2);
    L_0x0025:
        return;
    L_0x0026:
        r2 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0026 }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceIdService.zza(android.content.Context, com.google.firebase.iid.FirebaseInstanceId):void");
    }

    private final void zza(Intent intent, String str) {
        boolean zzbJ = zzbJ(this);
        int i = 10;
        int intExtra = intent == null ? 10 : intent.getIntExtra("next_retry_delay_in_seconds", 0);
        if (intExtra < 10 && !zzbJ) {
            i = 30;
        } else if (intExtra >= 10) {
            i = intExtra > 28800 ? 28800 : intExtra;
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 47);
        stringBuilder.append("background sync failed: ");
        stringBuilder.append(str);
        stringBuilder.append(", retry in ");
        stringBuilder.append(i);
        stringBuilder.append("s");
        Log.d("FirebaseInstanceId", stringBuilder.toString());
        synchronized (zzckB) {
            ((AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM)).set(3, SystemClock.elapsedRealtime() + ((long) (i * 1000)), zzq.zza(this, 0, zzbZ(i << 1), 134217728));
            zzckC = true;
        }
        if (!zzbJ) {
            if (this.zzckD) {
                Log.d("FirebaseInstanceId", "device not connected. Connectivity change received registered");
            }
            zza.zzl(this, i);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0060 A:{Catch:{ IOException -> 0x0084 }} */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0074 A:{Catch:{ IOException -> 0x0084 }} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0061 A:{Catch:{ IOException -> 0x0084 }} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0060 A:{Catch:{ IOException -> 0x0084 }} */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0074 A:{Catch:{ IOException -> 0x0084 }} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0061 A:{Catch:{ IOException -> 0x0084 }} */
    /* JADX WARNING: Missing block: B:37:0x0070, code skipped:
            android.util.Log.d(r1, r2);
     */
    private final void zza(android.content.Intent r8, boolean r9, boolean r10) {
        /*
        r7 = this;
        r9 = zzckB;
        monitor-enter(r9);
        r0 = 0;
        zzckC = r0;	 Catch:{ all -> 0x00d7 }
        monitor-exit(r9);	 Catch:{ all -> 0x00d7 }
        r9 = com.google.firebase.iid.zzl.zzbd(r7);
        if (r9 != 0) goto L_0x000e;
    L_0x000d:
        return;
    L_0x000e:
        r9 = com.google.firebase.iid.FirebaseInstanceId.getInstance();
        r1 = r9.zzJQ();
        if (r1 == 0) goto L_0x0099;
    L_0x0018:
        r2 = com.google.firebase.iid.zzj.zzbgW;
        r2 = r1.zzhp(r2);
        if (r2 == 0) goto L_0x0022;
    L_0x0020:
        goto L_0x0099;
    L_0x0022:
        r9 = com.google.firebase.iid.FirebaseInstanceId.zzJS();
    L_0x0026:
        r10 = r9.zzJV();
        if (r10 == 0) goto L_0x0091;
    L_0x002c:
        r1 = "!";
        r1 = r10.split(r1);
        r2 = r1.length;
        r3 = 2;
        if (r2 != r3) goto L_0x008d;
    L_0x0036:
        r2 = r1[r0];
        r3 = 1;
        r1 = r1[r3];
        r4 = -1;
        r5 = r2.hashCode();	 Catch:{ IOException -> 0x0084 }
        r6 = 83;
        if (r5 == r6) goto L_0x0052;
    L_0x0044:
        r6 = 85;
        if (r5 == r6) goto L_0x0049;
    L_0x0048:
        goto L_0x005c;
    L_0x0049:
        r5 = "U";
        r2 = r2.equals(r5);	 Catch:{ IOException -> 0x0084 }
        if (r2 == 0) goto L_0x005c;
    L_0x0051:
        goto L_0x005d;
    L_0x0052:
        r3 = "S";
        r2 = r2.equals(r3);	 Catch:{ IOException -> 0x0084 }
        if (r2 == 0) goto L_0x005c;
    L_0x005a:
        r3 = 0;
        goto L_0x005d;
    L_0x005c:
        r3 = -1;
    L_0x005d:
        switch(r3) {
            case 0: goto L_0x0074;
            case 1: goto L_0x0061;
            default: goto L_0x0060;
        };	 Catch:{ IOException -> 0x0084 }
    L_0x0060:
        goto L_0x008d;
    L_0x0061:
        r2 = com.google.firebase.iid.FirebaseInstanceId.getInstance();	 Catch:{ IOException -> 0x0084 }
        r2.zzhh(r1);	 Catch:{ IOException -> 0x0084 }
        r1 = r7.zzckD;	 Catch:{ IOException -> 0x0084 }
        if (r1 == 0) goto L_0x008d;
    L_0x006c:
        r1 = "FirebaseInstanceId";
        r2 = "unsubscribe operation succeeded";
    L_0x0070:
        android.util.Log.d(r1, r2);	 Catch:{ IOException -> 0x0084 }
        goto L_0x008d;
    L_0x0074:
        r2 = com.google.firebase.iid.FirebaseInstanceId.getInstance();	 Catch:{ IOException -> 0x0084 }
        r2.zzhg(r1);	 Catch:{ IOException -> 0x0084 }
        r1 = r7.zzckD;	 Catch:{ IOException -> 0x0084 }
        if (r1 == 0) goto L_0x008d;
    L_0x007f:
        r1 = "FirebaseInstanceId";
        r2 = "subscribe operation succeeded";
        goto L_0x0070;
    L_0x0084:
        r9 = move-exception;
        r9 = r9.getMessage();
        r7.zza(r8, r9);
        return;
    L_0x008d:
        r9.zzhj(r10);
        goto L_0x0026;
    L_0x0091:
        r8 = "FirebaseInstanceId";
        r9 = "topic sync succeeded";
        android.util.Log.d(r8, r9);
        return;
    L_0x0099:
        r0 = r9.zzJR();	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r0 == 0) goto L_0x00bf;
    L_0x009f:
        r2 = r7.zzckD;	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r2 == 0) goto L_0x00aa;
    L_0x00a3:
        r2 = "FirebaseInstanceId";
        r3 = "get master token succeeded";
        android.util.Log.d(r2, r3);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
    L_0x00aa:
        zza(r7, r9);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r10 != 0) goto L_0x00bb;
    L_0x00af:
        if (r1 == 0) goto L_0x00bb;
    L_0x00b1:
        if (r1 == 0) goto L_0x00be;
    L_0x00b3:
        r9 = r1.zzbPJ;	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        r9 = r0.equals(r9);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r9 != 0) goto L_0x00be;
    L_0x00bb:
        r7.onTokenRefresh();	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
    L_0x00be:
        return;
    L_0x00bf:
        r9 = "returned token is null";
        r7.zza(r8, r9);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        return;
    L_0x00c5:
        r8 = move-exception;
        r9 = "FirebaseInstanceId";
        r10 = "Unable to get master token";
        android.util.Log.e(r9, r10, r8);
        return;
    L_0x00ce:
        r9 = move-exception;
        r9 = r9.getMessage();
        r7.zza(r8, r9);
        return;
    L_0x00d7:
        r8 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x00d7 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceIdService.zza(android.content.Intent, boolean, boolean):void");
    }

    static void zzbI(Context context) {
        if (zzl.zzbd(context) != null) {
            synchronized (zzckB) {
                if (!zzckC) {
                    zzq.zzJX().zze(context, zzbZ(0));
                    zzckC = true;
                }
            }
        }
    }

    private static boolean zzbJ(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private static Intent zzbZ(int i) {
        Intent intent = new Intent("ACTION_TOKEN_REFRESH_RETRY");
        intent.putExtra("next_retry_delay_in_seconds", i);
        return intent;
    }

    private final zzj zzhi(String str) {
        if (str == null) {
            return zzj.zzb(this, null);
        }
        Bundle bundle = new Bundle();
        bundle.putString("subtype", str);
        return zzj.zzb(this, bundle);
    }

    private static String zzp(Intent intent) {
        String stringExtra = intent.getStringExtra("subtype");
        return stringExtra == null ? "" : stringExtra;
    }

    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            action = "";
        }
        Object obj = -1;
        if (action.hashCode() == -1737547627 && action.equals("ACTION_TOKEN_REFRESH_RETRY")) {
            obj = null;
        }
        if (obj != null) {
            action = zzp(intent);
            zzj zzhi = zzhi(action);
            String stringExtra = intent.getStringExtra("CMD");
            if (this.zzckD) {
                String valueOf = String.valueOf(intent.getExtras());
                StringBuilder stringBuilder = new StringBuilder(((String.valueOf(action).length() + 18) + String.valueOf(stringExtra).length()) + String.valueOf(valueOf).length());
                stringBuilder.append("Service command ");
                stringBuilder.append(action);
                stringBuilder.append(" ");
                stringBuilder.append(stringExtra);
                stringBuilder.append(" ");
                stringBuilder.append(valueOf);
                Log.d("FirebaseInstanceId", stringBuilder.toString());
            }
            if (intent.getStringExtra("unregistered") != null) {
                zzr zzJT = zzj.zzJT();
                if (action == null) {
                    action = "";
                }
                zzJT.zzdr(action);
                zzj.zzJU().zzi(intent);
                return;
            } else if ("gcm.googleapis.com/refresh".equals(intent.getStringExtra("from"))) {
                zzj.zzJT().zzdr(action);
                zza(intent, false, true);
                return;
            } else if ("RST".equals(stringExtra)) {
                zzhi.zzvL();
                zza(intent, true, true);
                return;
            } else {
                if ("RST_FULL".equals(stringExtra)) {
                    if (!zzj.zzJT().isEmpty()) {
                        zzhi.zzvL();
                        zzj.zzJT().zzvP();
                        zza(intent, true, true);
                        return;
                    }
                } else if ("SYNC".equals(stringExtra)) {
                    zzj.zzJT().zzdr(action);
                    zza(intent, false, true);
                    return;
                } else if ("PING".equals(stringExtra)) {
                    Bundle extras = intent.getExtras();
                    action = zzl.zzbd(this);
                    if (action == null) {
                        Log.w("FirebaseInstanceId", "Unable to respond to ping due to missing target package");
                        return;
                    }
                    Intent intent2 = new Intent("com.google.android.gcm.intent.SEND");
                    intent2.setPackage(action);
                    intent2.putExtras(extras);
                    zzl.zzd(this, intent2);
                    intent2.putExtra("google.to", "google.com/iid");
                    intent2.putExtra("google.message_id", zzl.zzvO());
                    sendOrderedBroadcast(intent2, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
                }
                return;
            }
        }
        zza(intent, false, false);
    }

    @WorkerThread
    public void onTokenRefresh() {
    }

    /* Access modifiers changed, original: protected|final */
    public final Intent zzn(Intent intent) {
        return (Intent) zzq.zzJX().zzckP.poll();
    }

    public final boolean zzo(Intent intent) {
        this.zzckD = Log.isLoggable("FirebaseInstanceId", 3);
        if (intent.getStringExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR) == null && intent.getStringExtra(GCMManager.PROPERTY_REG_ID) == null) {
            return false;
        }
        String zzp = zzp(intent);
        if (this.zzckD) {
            String str = "FirebaseInstanceId";
            String str2 = "Register result in service ";
            String valueOf = String.valueOf(zzp);
            Log.d(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        zzhi(zzp);
        zzj.zzJU().zzi(intent);
        return true;
    }
}
