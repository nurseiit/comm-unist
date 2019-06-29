package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.firebase.iid.zzb;
import com.google.firebase.iid.zzq;
import java.util.Iterator;

public class FirebaseMessagingService extends zzb {
    static boolean zzJ(Bundle bundle) {
        return bundle == null ? false : "1".equals(bundle.getString("google.c.a.e"));
    }

    static void zzt(Bundle bundle) {
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARNING: Missing block: B:43:0x009f, code skipped:
            if (r0.equals(com.google.android.gms.gcm.GoogleCloudMessaging.MESSAGE_TYPE_DELETED) != false) goto L_0x00a3;
     */
    public void handleIntent(android.content.Intent r7) {
        /*
        r6 = this;
        r0 = r7.getAction();
        if (r0 != 0) goto L_0x0008;
    L_0x0006:
        r0 = "";
    L_0x0008:
        r1 = r0.hashCode();
        r2 = 75300319; // 0x47cfddf float:2.973903E-36 double:3.72033007E-316;
        r3 = 1;
        r4 = 0;
        r5 = -1;
        if (r1 == r2) goto L_0x0024;
    L_0x0014:
        r2 = 366519424; // 0x15d8a480 float:8.750124E-26 double:1.81084656E-315;
        if (r1 == r2) goto L_0x001a;
    L_0x0019:
        goto L_0x002e;
    L_0x001a:
        r1 = "com.google.android.c2dm.intent.RECEIVE";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x002e;
    L_0x0022:
        r0 = 0;
        goto L_0x002f;
    L_0x0024:
        r1 = "com.google.firebase.messaging.NOTIFICATION_DISMISS";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x002e;
    L_0x002c:
        r0 = 1;
        goto L_0x002f;
    L_0x002e:
        r0 = -1;
    L_0x002f:
        switch(r0) {
            case 0: goto L_0x0058;
            case 1: goto L_0x004a;
            default: goto L_0x0032;
        };
    L_0x0032:
        r0 = "FirebaseMessaging";
        r1 = "Unknown intent action: ";
        r7 = r7.getAction();
        r7 = java.lang.String.valueOf(r7);
        r2 = r7.length();
        if (r2 == 0) goto L_0x012c;
    L_0x0044:
        r7 = r1.concat(r7);
        goto L_0x0131;
    L_0x004a:
        r0 = r7.getExtras();
        r0 = zzJ(r0);
        if (r0 == 0) goto L_0x0134;
    L_0x0054:
        com.google.firebase.messaging.zzd.zzi(r6, r7);
        return;
    L_0x0058:
        r0 = "message_type";
        r0 = r7.getStringExtra(r0);
        if (r0 != 0) goto L_0x0062;
    L_0x0060:
        r0 = "gcm";
    L_0x0062:
        r1 = r0.hashCode();
        r2 = -2062414158; // 0xffffffff85120eb2 float:-6.867586E-36 double:NaN;
        if (r1 == r2) goto L_0x0099;
    L_0x006b:
        r2 = 102161; // 0x18f11 float:1.43158E-40 double:5.0474E-319;
        if (r1 == r2) goto L_0x008f;
    L_0x0070:
        r2 = 814694033; // 0x308f3e91 float:1.0422402E-9 double:4.025123336E-315;
        if (r1 == r2) goto L_0x0085;
    L_0x0075:
        r2 = 814800675; // 0x3090df23 float:1.0540798E-9 double:4.025650217E-315;
        if (r1 == r2) goto L_0x007b;
    L_0x007a:
        goto L_0x00a2;
    L_0x007b:
        r1 = "send_event";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x00a2;
    L_0x0083:
        r3 = 2;
        goto L_0x00a3;
    L_0x0085:
        r1 = "send_error";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x00a2;
    L_0x008d:
        r3 = 3;
        goto L_0x00a3;
    L_0x008f:
        r1 = "gcm";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x00a2;
    L_0x0097:
        r3 = 0;
        goto L_0x00a3;
    L_0x0099:
        r1 = "deleted_messages";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x00a2;
    L_0x00a1:
        goto L_0x00a3;
    L_0x00a2:
        r3 = -1;
    L_0x00a3:
        switch(r3) {
            case 0: goto L_0x00e4;
            case 1: goto L_0x00e0;
            case 2: goto L_0x00d6;
            case 3: goto L_0x00b9;
            default: goto L_0x00a6;
        };
    L_0x00a6:
        r7 = "FirebaseMessaging";
        r1 = "Received message with unknown type: ";
        r0 = java.lang.String.valueOf(r0);
        r2 = r0.length();
        if (r2 == 0) goto L_0x0123;
    L_0x00b4:
        r0 = r1.concat(r0);
        goto L_0x0128;
    L_0x00b9:
        r0 = "google.message_id";
        r0 = r7.getStringExtra(r0);
        if (r0 != 0) goto L_0x00c7;
    L_0x00c1:
        r0 = "message_id";
        r0 = r7.getStringExtra(r0);
    L_0x00c7:
        r1 = new com.google.firebase.messaging.SendException;
        r2 = "error";
        r7 = r7.getStringExtra(r2);
        r1.<init>(r7);
        r6.onSendError(r0, r1);
        return;
    L_0x00d6:
        r0 = "google.message_id";
        r7 = r7.getStringExtra(r0);
        r6.onMessageSent(r7);
        return;
    L_0x00e0:
        r6.onDeletedMessages();
        return;
    L_0x00e4:
        r0 = r7.getExtras();
        r0 = zzJ(r0);
        if (r0 == 0) goto L_0x00f1;
    L_0x00ee:
        com.google.firebase.messaging.zzd.zzg(r6, r7);
    L_0x00f1:
        r0 = r7.getExtras();
        if (r0 != 0) goto L_0x00fc;
    L_0x00f7:
        r0 = new android.os.Bundle;
        r0.<init>();
    L_0x00fc:
        r1 = "android.support.content.wakelockid";
        r0.remove(r1);
        r1 = com.google.firebase.messaging.zza.zzG(r0);
        if (r1 == 0) goto L_0x011a;
    L_0x0107:
        r1 = com.google.firebase.messaging.zza.zzbM(r6);
        r1 = r1.zzv(r0);
        if (r1 != 0) goto L_0x0122;
    L_0x0111:
        r1 = zzJ(r0);
        if (r1 == 0) goto L_0x011a;
    L_0x0117:
        com.google.firebase.messaging.zzd.zzj(r6, r7);
    L_0x011a:
        r7 = new com.google.firebase.messaging.RemoteMessage;
        r7.<init>(r0);
        r6.onMessageReceived(r7);
    L_0x0122:
        return;
    L_0x0123:
        r0 = new java.lang.String;
        r0.<init>(r1);
    L_0x0128:
        android.util.Log.w(r7, r0);
        return;
    L_0x012c:
        r7 = new java.lang.String;
        r7.<init>(r1);
    L_0x0131:
        android.util.Log.d(r0, r7);
    L_0x0134:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.handleIntent(android.content.Intent):void");
    }

    @WorkerThread
    public void onDeletedMessages() {
    }

    @WorkerThread
    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    @WorkerThread
    public void onMessageSent(String str) {
    }

    @WorkerThread
    public void onSendError(String str, Exception exception) {
    }

    /* Access modifiers changed, original: protected|final */
    public final Intent zzn(Intent intent) {
        return zzq.zzJX().zzJY();
    }

    public final boolean zzo(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (CanceledException unused) {
                Log.e("FirebaseMessaging", "Notification pending intent canceled");
            }
        }
        if (zzJ(intent.getExtras())) {
            zzd.zzh(this, intent);
        }
        return true;
    }
}
