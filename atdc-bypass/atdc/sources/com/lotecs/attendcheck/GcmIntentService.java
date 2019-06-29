package com.lotecs.attendcheck;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.media.RingtoneManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.lotecs.attendcheck.common.IntroActivity;
import com.lotecs.attendcheck.domain.Push;
import com.lotecs.util.StringUtil;
import kr.ac.unist.atdc.R;

public class GcmIntentService extends IntentService {
    public static final int NOTIFICATION_ID = 1;
    private static final String TAG = "GcmIntentService";

    public GcmIntentService() {
        super("GcmService");
    }

    /* Access modifiers changed, original: protected */
    public void onHandleIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        String messageType = GoogleCloudMessaging.getInstance(this).getMessageType(intent);
        if (!(extras.isEmpty() || GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR.equals(messageType) || GoogleCloudMessaging.MESSAGE_TYPE_DELETED.equals(messageType) || !GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE.equals(messageType))) {
            int i = 0;
            while (i < 5) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Working... ");
                i++;
                stringBuilder.append(i);
                stringBuilder.append("/5 @ ");
                stringBuilder.append(SystemClock.elapsedRealtime());
                Log.i(str, stringBuilder.toString());
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException unused) {
                }
            }
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Completed work @ ");
            stringBuilder2.append(SystemClock.elapsedRealtime());
            Log.i(str2, stringBuilder2.toString());
            push(extras, messageType);
            messageType = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("Received: ");
            stringBuilder3.append(extras.toString());
            Log.i(messageType, stringBuilder3.toString());
        }
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    private void push(Bundle bundle, String str) {
        if (!StringUtil.isNull(bundle.getString(NotificationCompat.CATEGORY_MESSAGE)) && !StringUtil.isNull(bundle.getString("type")) && !StringUtil.isNull(bundle.getString("tag"))) {
            str = bundle.getString(NotificationCompat.CATEGORY_MESSAGE);
            String string = bundle.getString("type");
            String string2 = bundle.getString("tag");
            processMessageTag(string2);
            showNotification(str, new Push(str, string, string2));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0039  */
    private void processMessageTag(java.lang.String r5) {
        /*
        r4 = this;
        r0 = r5.hashCode();
        r1 = 3327779; // 0x32c723 float:4.663212E-39 double:1.6441413E-317;
        r2 = 1;
        r3 = 0;
        if (r0 == r1) goto L_0x002a;
    L_0x000b:
        r1 = 94746189; // 0x5a5b64d float:1.5583492E-35 double:4.6810837E-316;
        if (r0 == r1) goto L_0x0020;
    L_0x0010:
        r1 = 108404047; // 0x6761d4f float:4.628899E-35 double:5.35587155E-316;
        if (r0 == r1) goto L_0x0016;
    L_0x0015:
        goto L_0x0034;
    L_0x0016:
        r0 = "reset";
        r5 = r5.equals(r0);
        if (r5 == 0) goto L_0x0034;
    L_0x001e:
        r5 = 1;
        goto L_0x0035;
    L_0x0020:
        r0 = "clear";
        r5 = r5.equals(r0);
        if (r5 == 0) goto L_0x0034;
    L_0x0028:
        r5 = 0;
        goto L_0x0035;
    L_0x002a:
        r0 = "loss";
        r5 = r5.equals(r0);
        if (r5 == 0) goto L_0x0034;
    L_0x0032:
        r5 = 2;
        goto L_0x0035;
    L_0x0034:
        r5 = -1;
    L_0x0035:
        switch(r5) {
            case 0: goto L_0x004d;
            case 1: goto L_0x0043;
            case 2: goto L_0x0039;
            default: goto L_0x0038;
        };
    L_0x0038:
        goto L_0x005f;
    L_0x0039:
        r5 = r4.getApplicationContext();
        r0 = "lossStatus";
        com.lotecs.util.AndroidUtil.saveBooleanApiValue(r5, r0, r2);
        goto L_0x005f;
    L_0x0043:
        r5 = r4.getApplicationContext();
        r0 = "regStatus";
        com.lotecs.util.AndroidUtil.saveBooleanApiValue(r5, r0, r3);
        goto L_0x005f;
    L_0x004d:
        r5 = r4.getApplicationContext();
        r0 = "lossStatus";
        com.lotecs.util.AndroidUtil.saveBooleanApiValue(r5, r0, r3);
        r5 = r4.getApplicationContext();
        r0 = "regStatus";
        com.lotecs.util.AndroidUtil.saveBooleanApiValue(r5, r0, r3);
    L_0x005f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lotecs.attendcheck.GcmIntentService.processMessageTag(java.lang.String):void");
    }

    private void showNotification(String str, Push push) {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        Intent intent = new Intent(this, IntroActivity.class);
        intent.addFlags(DriveFile.MODE_WRITE_ONLY);
        Log.d(TAG, push.getData());
        intent.putExtra("info", push);
        intent.putExtra("message", push.getData());
        intent.putExtra("type", push.getType());
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 134217728);
        Builder contentText = new Builder(this).setSmallIcon(R.drawable.ic_launcher).setContentTitle(getString(R.string.app_name)).setStyle(new BigTextStyle().bigText(str)).setContentText(str);
        contentText.setContentIntent(activity);
        contentText.setSound(RingtoneManager.getDefaultUri(2));
        contentText.setAutoCancel(true);
        notificationManager.notify(1, contentText.build());
    }
}
