package com.google.firebase.messaging;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.Map;
import java.util.Map.Entry;

public final class RemoteMessage extends zza {
    public static final Creator<RemoteMessage> CREATOR = new zzf();
    Bundle mBundle;
    private Map<String, String> zzadY;
    private Notification zzckY;

    public static class Builder {
        private final Bundle mBundle = new Bundle();
        private final Map<String, String> zzadY = new ArrayMap();

        public Builder(String str) {
            if (TextUtils.isEmpty(str)) {
                String str2 = "Invalid to: ";
                str = String.valueOf(str);
                throw new IllegalArgumentException(str.length() != 0 ? str2.concat(str) : new String(str2));
            }
            this.mBundle.putString("google.to", str);
        }

        public Builder addData(String str, String str2) {
            this.zzadY.put(str, str2);
            return this;
        }

        public RemoteMessage build() {
            Bundle bundle = new Bundle();
            for (Entry entry : this.zzadY.entrySet()) {
                bundle.putString((String) entry.getKey(), (String) entry.getValue());
            }
            bundle.putAll(this.mBundle);
            String token = FirebaseInstanceId.getInstance().getToken();
            if (token != null) {
                this.mBundle.putString("from", token);
            } else {
                this.mBundle.remove("from");
            }
            return new RemoteMessage(bundle);
        }

        public Builder clearData() {
            this.zzadY.clear();
            return this;
        }

        public Builder setCollapseKey(String str) {
            this.mBundle.putString("collapse_key", str);
            return this;
        }

        public Builder setData(Map<String, String> map) {
            this.zzadY.clear();
            this.zzadY.putAll(map);
            return this;
        }

        public Builder setMessageId(String str) {
            this.mBundle.putString("google.message_id", str);
            return this;
        }

        public Builder setMessageType(String str) {
            this.mBundle.putString("message_type", str);
            return this;
        }

        public Builder setTtl(int i) {
            this.mBundle.putString("google.ttl", String.valueOf(i));
            return this;
        }
    }

    public static class Notification {
        private final String mTag;
        private final String zzHD;
        private final String zzaoy;
        private final String zzckZ;
        private final String[] zzcla;
        private final String zzclb;
        private final String[] zzclc;
        private final String zzcld;
        private final String zzcle;
        private final String zzclf;
        private final String zzclg;
        private final Uri zzclh;

        private Notification(Bundle bundle) {
            this.zzaoy = zza.zze(bundle, "gcm.n.title");
            this.zzckZ = zza.zzh(bundle, "gcm.n.title");
            this.zzcla = zzk(bundle, "gcm.n.title");
            this.zzHD = zza.zze(bundle, "gcm.n.body");
            this.zzclb = zza.zzh(bundle, "gcm.n.body");
            this.zzclc = zzk(bundle, "gcm.n.body");
            this.zzcld = zza.zze(bundle, "gcm.n.icon");
            this.zzcle = zza.zzI(bundle);
            this.mTag = zza.zze(bundle, "gcm.n.tag");
            this.zzclf = zza.zze(bundle, "gcm.n.color");
            this.zzclg = zza.zze(bundle, "gcm.n.click_action");
            this.zzclh = zza.zzH(bundle);
        }

        /* synthetic */ Notification(Bundle bundle, zze zze) {
            this(bundle);
        }

        private static String[] zzk(Bundle bundle, String str) {
            Object[] zzi = zza.zzi(bundle, str);
            if (zzi == null) {
                return null;
            }
            String[] strArr = new String[zzi.length];
            for (int i = 0; i < zzi.length; i++) {
                strArr[i] = String.valueOf(zzi[i]);
            }
            return strArr;
        }

        @Nullable
        public String getBody() {
            return this.zzHD;
        }

        @Nullable
        public String[] getBodyLocalizationArgs() {
            return this.zzclc;
        }

        @Nullable
        public String getBodyLocalizationKey() {
            return this.zzclb;
        }

        @Nullable
        public String getClickAction() {
            return this.zzclg;
        }

        @Nullable
        public String getColor() {
            return this.zzclf;
        }

        @Nullable
        public String getIcon() {
            return this.zzcld;
        }

        @Nullable
        public Uri getLink() {
            return this.zzclh;
        }

        @Nullable
        public String getSound() {
            return this.zzcle;
        }

        @Nullable
        public String getTag() {
            return this.mTag;
        }

        @Nullable
        public String getTitle() {
            return this.zzaoy;
        }

        @Nullable
        public String[] getTitleLocalizationArgs() {
            return this.zzcla;
        }

        @Nullable
        public String getTitleLocalizationKey() {
            return this.zzckZ;
        }
    }

    RemoteMessage(Bundle bundle) {
        this.mBundle = bundle;
    }

    public final String getCollapseKey() {
        return this.mBundle.getString("collapse_key");
    }

    public final Map<String, String> getData() {
        if (this.zzadY == null) {
            this.zzadY = new ArrayMap();
            for (String str : this.mBundle.keySet()) {
                Object obj = this.mBundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!(str.startsWith("google.") || str.startsWith("gcm.") || str.equals("from") || str.equals("message_type") || str.equals("collapse_key"))) {
                        this.zzadY.put(str, str2);
                    }
                }
            }
        }
        return this.zzadY;
    }

    public final String getFrom() {
        return this.mBundle.getString("from");
    }

    public final String getMessageId() {
        String string = this.mBundle.getString("google.message_id");
        return string == null ? this.mBundle.getString("message_id") : string;
    }

    public final String getMessageType() {
        return this.mBundle.getString("message_type");
    }

    public final Notification getNotification() {
        if (this.zzckY == null && zza.zzG(this.mBundle)) {
            this.zzckY = new Notification(this.mBundle, null);
        }
        return this.zzckY;
    }

    public final long getSentTime() {
        Object obj = this.mBundle.get("google.sent_time");
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (obj instanceof String) {
            try {
                return Long.parseLong((String) obj);
            } catch (NumberFormatException unused) {
                String valueOf = String.valueOf(obj);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 19);
                stringBuilder.append("Invalid sent time: ");
                stringBuilder.append(valueOf);
                Log.w("FirebaseMessaging", stringBuilder.toString());
            }
        }
        return 0;
    }

    public final String getTo() {
        return this.mBundle.getString("google.to");
    }

    public final int getTtl() {
        Object obj = this.mBundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
                String valueOf = String.valueOf(obj);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 13);
                stringBuilder.append("Invalid TTL: ");
                stringBuilder.append(valueOf);
                Log.w("FirebaseMessaging", stringBuilder.toString());
            }
        }
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.mBundle, false);
        zzd.zzI(parcel, i);
    }
}
