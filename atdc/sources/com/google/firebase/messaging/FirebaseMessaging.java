package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.zzl;
import java.util.regex.Pattern;

public class FirebaseMessaging {
    public static final String INSTANCE_ID_SCOPE = "FCM";
    private static final Pattern zzckW = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");
    private static FirebaseMessaging zzckX;
    private final FirebaseInstanceId zzcku;

    private FirebaseMessaging(FirebaseInstanceId firebaseInstanceId) {
        this.zzcku = firebaseInstanceId;
    }

    public static synchronized FirebaseMessaging getInstance() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            if (zzckX == null) {
                zzckX = new FirebaseMessaging(FirebaseInstanceId.getInstance());
            }
            firebaseMessaging = zzckX;
        }
        return firebaseMessaging;
    }

    public void send(RemoteMessage remoteMessage) {
        if (TextUtils.isEmpty(remoteMessage.getTo())) {
            throw new IllegalArgumentException("Missing 'to'");
        }
        Context applicationContext = FirebaseApp.getInstance().getApplicationContext();
        String zzbd = zzl.zzbd(applicationContext);
        if (zzbd == null) {
            Log.e("FirebaseMessaging", "Google Play services package is missing. Impossible to send message");
            return;
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        zzl.zzd(applicationContext, intent);
        intent.setPackage(zzbd);
        intent.putExtras(remoteMessage.mBundle);
        applicationContext.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    public void subscribeToTopic(String str) {
        CharSequence str2;
        if (str2 != null && str2.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", "Format /topics/topic-name is deprecated. Only 'topic-name' should be used in subscribeToTopic.");
            str2 = str2.substring(8);
        }
        String valueOf;
        if (str2 == null || !zzckW.matcher(str2).matches()) {
            valueOf = String.valueOf("[a-zA-Z0-9-_.~%]{1,900}");
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 55) + String.valueOf(valueOf).length());
            stringBuilder.append("Invalid topic name: ");
            stringBuilder.append(str2);
            stringBuilder.append(" does not match the allowed format ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        FirebaseInstanceId firebaseInstanceId = this.zzcku;
        valueOf = String.valueOf("S!");
        str2 = String.valueOf(str2);
        firebaseInstanceId.zzhf(str2.length() != 0 ? valueOf.concat(str2) : new String(valueOf));
    }

    public void unsubscribeFromTopic(String str) {
        CharSequence str2;
        if (str2 != null && str2.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", "Format /topics/topic-name is deprecated. Only 'topic-name' should be used in unsubscribeFromTopic.");
            str2 = str2.substring(8);
        }
        String valueOf;
        if (str2 == null || !zzckW.matcher(str2).matches()) {
            valueOf = String.valueOf("[a-zA-Z0-9-_.~%]{1,900}");
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 55) + String.valueOf(valueOf).length());
            stringBuilder.append("Invalid topic name: ");
            stringBuilder.append(str2);
            stringBuilder.append(" does not match the allowed format ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        FirebaseInstanceId firebaseInstanceId = this.zzcku;
        valueOf = String.valueOf("U!");
        str2 = String.valueOf(str2);
        firebaseInstanceId.zzhf(str2.length() != 0 ? valueOf.concat(str2) : new String(valueOf));
    }
}
