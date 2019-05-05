package com.google.android.gms.appinvite;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

public final class AppInviteInvitation {
    private static final String[] zzajT = new String[]{"jpg", "jpeg", "png"};

    public static final class IntentBuilder {
        public static final int MAX_CALL_TO_ACTION_TEXT_LENGTH = 20;
        public static final int MAX_EMAIL_HTML_CONTENT = 512000;
        public static final int MAX_MESSAGE_LENGTH = 100;
        public static final int MIN_CALL_TO_ACTION_TEXT_LENGTH = 2;
        private final Intent mIntent = new Intent("com.google.android.gms.appinvite.ACTION_APP_INVITE");
        private String zzajU;
        private String zzajV;

        @Retention(RetentionPolicy.SOURCE)
        public @interface PlatformMode {
            public static final int PROJECT_PLATFORM_ANDROID = 2;
            public static final int PROJECT_PLATFORM_IOS = 1;
        }

        public IntentBuilder(@NonNull CharSequence charSequence) {
            zzbo.zzu(charSequence);
            this.mIntent.putExtra("com.google.android.gms.appinvite.TITLE", charSequence);
            this.mIntent.setPackage("com.google.android.gms");
        }

        public final Intent build() {
            if (!TextUtils.isEmpty(this.zzajU)) {
                zzbo.zzh(this.zzajV, "Email html content must be set when email subject is set.");
                zzbo.zzb(this.mIntent.getData() == null, (Object) "Custom image must not be set when email html content is set.");
                zzbo.zzb(TextUtils.isEmpty(this.mIntent.getCharSequenceExtra("com.google.android.gms.appinvite.BUTTON_TEXT")), (Object) "Call to action text must not be set when email html content is set.");
                this.mIntent.putExtra("com.google.android.gms.appinvite.EMAIL_SUBJECT", this.zzajU);
                this.mIntent.putExtra("com.google.android.gms.appinvite.EMAIL_CONTENT", this.zzajV);
            } else if (!TextUtils.isEmpty(this.zzajV)) {
                throw new IllegalArgumentException("Email subject must be set when email html content is set.");
            }
            return this.mIntent;
        }

        public final IntentBuilder setAccount(Account account) {
            if (account == null || !"com.google".equals(account.type)) {
                this.mIntent.removeExtra("com.google.android.gms.appinvite.ACCOUNT_NAME");
                return this;
            }
            this.mIntent.putExtra("com.google.android.gms.appinvite.ACCOUNT_NAME", account);
            return this;
        }

        public final IntentBuilder setAdditionalReferralParameters(Map<String, String> map) {
            if (map != null) {
                this.mIntent.putExtra("com.google.android.gms.appinvite.REFERRAL_PARAMETERS_URI", AppInviteInvitation.zzl(map));
                return this;
            }
            this.mIntent.removeExtra("com.google.android.gms.appinvite.REFERRAL_PARAMETERS_URI");
            return this;
        }

        public final IntentBuilder setAndroidMinimumVersionCode(int i) {
            this.mIntent.putExtra("com.google.android.gms.appinvite.appMinimumVersionCode", i);
            return this;
        }

        public final IntentBuilder setCallToActionText(CharSequence charSequence) {
            if (charSequence == null || charSequence.length() < 2 || charSequence.length() > 20) {
                throw new IllegalArgumentException(String.format("Text must be between %d and %d chars in length.", new Object[]{Integer.valueOf(2), Integer.valueOf(20)}));
            }
            this.mIntent.putExtra("com.google.android.gms.appinvite.BUTTON_TEXT", charSequence);
            return this;
        }

        public final IntentBuilder setCustomImage(Uri uri) {
            zzbo.zzu(uri);
            zzbo.zzb(uri.isAbsolute(), (Object) "Image uri is not an absolute uri. Did you forget to add a scheme to the Uri?");
            String toLowerCase = uri.getScheme().toLowerCase();
            boolean z = false;
            Object obj = (toLowerCase.equals("android.resource") || toLowerCase.equals("content") || toLowerCase.equals("file")) ? 1 : null;
            boolean z2 = obj != null || toLowerCase.equals("http") || toLowerCase.equals("https");
            zzbo.zzb(z2, (Object) "Image uri must be a content URI with scheme \"android.resource\", \"content\" or \"file\", or a network url with scheme \"http\" or \"https\".");
            if (obj == null) {
                String uri2 = uri.toString();
                uri2 = uri2.substring(uri2.lastIndexOf("/") + 1, uri2.length());
                CharSequence charSequence = null;
                if (!(uri2 == null || uri2.lastIndexOf(".") == -1)) {
                    charSequence = uri2.substring(uri2.lastIndexOf(".") + 1, uri2.length()).toLowerCase();
                }
                if (TextUtils.isEmpty(charSequence) || AppInviteInvitation.zzbK(charSequence)) {
                    z = true;
                }
                zzbo.zzb(z, String.valueOf(charSequence).concat(" images are not supported. Only jpg, jpeg, or png images are supported."));
            }
            this.mIntent.setData(uri.buildUpon().scheme(toLowerCase).build());
            if (obj != null) {
                this.mIntent.addFlags(1);
            }
            return this;
        }

        public final IntentBuilder setDeepLink(Uri uri) {
            if (uri != null) {
                this.mIntent.putExtra("com.google.android.gms.appinvite.DEEP_LINK_URL", uri);
                return this;
            }
            this.mIntent.removeExtra("com.google.android.gms.appinvite.DEEP_LINK_URL");
            return this;
        }

        public final IntentBuilder setEmailHtmlContent(String str) {
            if (str == null || str.getBytes().length <= MAX_EMAIL_HTML_CONTENT) {
                this.zzajV = str;
                return this;
            }
            throw new IllegalArgumentException(String.format("Email html content must be %d bytes or less.", new Object[]{Integer.valueOf(MAX_EMAIL_HTML_CONTENT)}));
        }

        public final IntentBuilder setEmailSubject(String str) {
            this.zzajU = str;
            return this;
        }

        public final IntentBuilder setGoogleAnalyticsTrackingId(String str) {
            this.mIntent.putExtra("com.google.android.gms.appinvite.GOOGLE_ANALYTICS_TRACKING_ID", str);
            return this;
        }

        public final IntentBuilder setMessage(CharSequence charSequence) {
            if (charSequence == null || charSequence.length() <= 100) {
                this.mIntent.putExtra("com.google.android.gms.appinvite.MESSAGE", charSequence);
                return this;
            }
            throw new IllegalArgumentException(String.format("Message must be %d chars or less.", new Object[]{Integer.valueOf(100)}));
        }

        public final IntentBuilder setOtherPlatformsTargetApplication(int i, String str) throws IllegalArgumentException {
            Intent intent;
            String str2;
            switch (i) {
                case 1:
                    intent = this.mIntent;
                    str2 = "com.google.android.gms.appinvite.iosTargetApplication";
                    break;
                case 2:
                    intent = this.mIntent;
                    str2 = "com.google.android.gms.appinvite.androidTargetApplication";
                    break;
                default:
                    throw new IllegalArgumentException("targetPlatform must be either PROJECT_PLATFORM_IOS or PROJECT_PLATFORM_ANDROID.");
            }
            intent.putExtra(str2, str);
            return this;
        }
    }

    private AppInviteInvitation() {
    }

    public static String[] getInvitationIds(int i, @NonNull Intent intent) {
        return i == -1 ? intent.getStringArrayExtra("com.google.android.gms.appinvite.RESULT_INVITATION_IDS") : null;
    }

    private static boolean zzbK(String str) {
        for (String equals : zzajT) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private static Bundle zzl(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            bundle.putString(str, (String) map.get(str));
        }
        return bundle;
    }
}
