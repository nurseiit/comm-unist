package com.google.android.gms.appinvite;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.google.android.gms.plus.PlusShare;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

@Deprecated
public class AppInviteReferral {
    private AppInviteReferral() {
    }

    @Deprecated
    public static Intent addPlayStoreReferrerToIntent(Intent intent, Intent intent2) {
        Bundle zzd = zzd(intent);
        if (!(zzd == null || intent2 == null)) {
            intent2.putExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE", zzd);
        }
        return intent2;
    }

    @Deprecated
    public static Intent addReferralDataToIntent(String str, String str2, Intent intent) {
        return intent == null ? null : intent.putExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE", zzb(str, str2, false));
    }

    public static String getDeepLink(Intent intent) {
        if (intent != null) {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE");
            if (bundleExtra != null) {
                return bundleExtra.getString("com.google.android.gms.appinvite.DEEP_LINK");
            }
        }
        return null;
    }

    public static String getInvitationId(Intent intent) {
        if (intent != null) {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE");
            if (bundleExtra != null) {
                return bundleExtra.getString("com.google.android.gms.appinvite.INVITATION_ID");
            }
        }
        return null;
    }

    public static boolean hasReferral(Intent intent) {
        return (intent == null || intent.getBundleExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE") == null) ? false : true;
    }

    public static boolean isOpenedFromPlayStore(Intent intent) {
        return hasReferral(intent) && intent.getBundleExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE").getBoolean("com.google.android.gms.appinvite.OPENED_FROM_PLAY_STORE", false);
    }

    private static Bundle zzb(String str, String str2, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString("com.google.android.gms.appinvite.INVITATION_ID", str);
        if (str2 != null) {
            bundle.putString("com.google.android.gms.appinvite.DEEP_LINK", str2);
        }
        bundle.putBoolean("com.google.android.gms.appinvite.OPENED_FROM_PLAY_STORE", z);
        return bundle;
    }

    private static Bundle zzd(Intent intent) {
        if (intent == null || !intent.getAction().equals("com.android.vending.INSTALL_REFERRER") || intent.getStringExtra("referrer") == null) {
            return null;
        }
        String stringExtra = intent.getStringExtra("referrer");
        String decode;
        String valueOf;
        try {
            decode = URLDecoder.decode(stringExtra, Key.STRING_CHARSET_NAME);
            stringExtra = "s://a.b.c?";
            valueOf = String.valueOf(decode);
            Uri parse = Uri.parse(valueOf.length() != 0 ? stringExtra.concat(valueOf) : new String(stringExtra));
            valueOf = parse.getQueryParameter("invitation_id");
            stringExtra = parse.getQueryParameter(PlusShare.PARAM_CONTENT_DEEP_LINK_ID);
            if (valueOf != null || stringExtra != null) {
                return zzb(valueOf, stringExtra, true);
            }
            stringExtra = "AppInviteRef";
            valueOf = "Missing  Referrer query params: ";
            decode = String.valueOf(decode);
            Log.w(stringExtra, decode.length() != 0 ? valueOf.concat(decode) : new String(valueOf));
            return null;
        } catch (UnsupportedEncodingException unused) {
            decode = "AppInviteRef";
            valueOf = "Error parsing Play Store referrer URL: ";
            stringExtra = String.valueOf(stringExtra);
            Log.e(decode, stringExtra.length() != 0 ? valueOf.concat(stringExtra) : new String(valueOf));
            return null;
        }
    }
}
