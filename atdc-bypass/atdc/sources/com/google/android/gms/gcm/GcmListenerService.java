package com.google.android.gms.gcm;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.iid.zzb;
import java.util.Iterator;

public class GcmListenerService extends zzb {
    static void zzt(Bundle bundle) {
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    public void handleIntent(Intent intent) {
        String stringExtra;
        String str;
        String str2;
        if ("com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            stringExtra = intent.getStringExtra("message_type");
            if (stringExtra == null) {
                stringExtra = GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE;
            }
            Object obj = -1;
            int hashCode = stringExtra.hashCode();
            Object obj2 = 1;
            if (hashCode != -2062414158) {
                if (hashCode != 102161) {
                    if (hashCode != 814694033) {
                        if (hashCode == 814800675 && stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_EVENT)) {
                            obj = 2;
                        }
                    } else if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR)) {
                        obj = 3;
                    }
                } else if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE)) {
                    obj = null;
                }
            } else if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_DELETED)) {
                obj = 1;
            }
            switch (obj) {
                case null:
                    Bundle extras = intent.getExtras();
                    extras.remove("message_type");
                    extras.remove("android.support.content.wakelockid");
                    if (!"1".equals(zza.zze(extras, "gcm.n.e")) && zza.zze(extras, "gcm.n.icon") == null) {
                        obj2 = null;
                    }
                    if (obj2 != null) {
                        if (zza.zzaY(this)) {
                            zza.zzu(extras);
                        } else {
                            zza.zzaX(this).zzv(extras);
                            return;
                        }
                    }
                    stringExtra = extras.getString("from");
                    extras.remove("from");
                    zzt(extras);
                    onMessageReceived(stringExtra, extras);
                    return;
                case 1:
                    onDeletedMessages();
                    return;
                case 2:
                    onMessageSent(intent.getStringExtra("google.message_id"));
                    return;
                case 3:
                    stringExtra = intent.getStringExtra("google.message_id");
                    if (stringExtra == null) {
                        stringExtra = intent.getStringExtra("message_id");
                    }
                    onSendError(stringExtra, intent.getStringExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR));
                    return;
                default:
                    str = "GcmListenerService";
                    str2 = "Received message with unknown type: ";
                    stringExtra = String.valueOf(stringExtra);
                    Log.w(str, stringExtra.length() != 0 ? str2.concat(stringExtra) : new String(str2));
                    return;
            }
        }
        stringExtra = "GcmListenerService";
        str2 = "Unknown intent action: ";
        str = String.valueOf(intent.getAction());
        Log.w(stringExtra, str.length() != 0 ? str2.concat(str) : new String(str2));
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(String str, Bundle bundle) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, String str2) {
    }
}
