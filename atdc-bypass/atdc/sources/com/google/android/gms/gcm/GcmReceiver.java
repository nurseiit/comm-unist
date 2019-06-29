package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.iid.zzh;

public class GcmReceiver extends WakefulBroadcastReceiver {
    private static String zzbfA = "gcm.googleapis.com/refresh";
    private static boolean zzbfB = false;
    private zzh zzbfC;
    private zzh zzbfD;

    private final void doStartService(Context context, Intent intent) {
        if (isOrderedBroadcast()) {
            setResultCode(500);
        }
        ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService == null || resolveService.serviceInfo == null) {
            Log.e("GcmReceiver", "Failed to resolve target intent service, skipping classname enforcement");
        } else {
            ServiceInfo serviceInfo = resolveService.serviceInfo;
            String valueOf;
            String valueOf2;
            if (!context.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
                valueOf = String.valueOf(serviceInfo.packageName);
                valueOf2 = String.valueOf(serviceInfo.name);
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 94) + String.valueOf(valueOf2).length());
                stringBuilder.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                stringBuilder.append(valueOf);
                stringBuilder.append("/");
                stringBuilder.append(valueOf2);
                Log.e("GcmReceiver", stringBuilder.toString());
            } else {
                String valueOf3;
                Object obj = serviceInfo.name;
                if (obj.startsWith(".")) {
                    valueOf3 = String.valueOf(context.getPackageName());
                    valueOf2 = String.valueOf(obj);
                    obj = valueOf2.length() != 0 ? valueOf3.concat(valueOf2) : new String(valueOf3);
                }
                if (Log.isLoggable("GcmReceiver", 3)) {
                    valueOf3 = "GcmReceiver";
                    valueOf = "Restricting intent to a specific service: ";
                    String valueOf4 = String.valueOf(obj);
                    Log.d(valueOf3, valueOf4.length() != 0 ? valueOf.concat(valueOf4) : new String(valueOf));
                }
                intent.setClassName(context.getPackageName(), obj);
            }
        }
        try {
            ComponentName startWakefulService;
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                startWakefulService = WakefulBroadcastReceiver.startWakefulService(context, intent);
            } else {
                startWakefulService = context.startService(intent);
                Log.d("GcmReceiver", "Missing wake lock permission, service start may be delayed");
            }
            if (startWakefulService == null) {
                Log.e("GcmReceiver", "Error while delivering the message: ServiceIntent not found.");
                if (isOrderedBroadcast()) {
                    setResultCode(WalletConstants.ERROR_CODE_INVALID_PARAMETERS);
                }
            } else if (isOrderedBroadcast()) {
                setResultCode(-1);
            }
        } catch (SecurityException e) {
            Log.e("GcmReceiver", "Error while delivering the message to the serviceIntent", e);
            if (isOrderedBroadcast()) {
                setResultCode(401);
            }
        }
    }

    private final synchronized zzh zzH(Context context, String str) {
        if ("com.google.android.c2dm.intent.RECEIVE".equals(str)) {
            if (this.zzbfD == null) {
                this.zzbfD = new zzh(context, str);
            }
            return this.zzbfD;
        }
        if (this.zzbfC == null) {
            this.zzbfC = new zzh(context, str);
        }
        return this.zzbfC;
    }

    public void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("GcmReceiver", 3)) {
            Log.d("GcmReceiver", "received new intent");
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        String stringExtra = intent.getStringExtra("from");
        if ("google.com/iid".equals(stringExtra) || zzbfA.equals(stringExtra)) {
            intent.setAction("com.google.android.gms.iid.InstanceID");
        }
        stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if (zzq.isAtLeastO()) {
            if (isOrderedBroadcast()) {
                setResultCode(-1);
            }
            zzH(context, intent.getAction()).zza(intent, goAsync());
            return;
        }
        boolean equals = "com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction());
        doStartService(context, intent);
        if (isOrderedBroadcast() && getResultCode() == 0) {
            setResultCode(-1);
        }
    }
}
