package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.GetTokenResult;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class abz {
    @Nullable
    public static String zzf(FirebaseApp firebaseApp) {
        String token;
        try {
            token = ((GetTokenResult) Tasks.await(firebaseApp.getToken(false), NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, TimeUnit.MILLISECONDS)).getToken();
            if (!TextUtils.isEmpty(token)) {
                return token;
            }
            Log.w("StorageUtil", "no auth token for request");
            return null;
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            token = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(token).length() + 20);
            stringBuilder.append("error getting token ");
            stringBuilder.append(token);
            Log.e("StorageUtil", stringBuilder.toString());
        }
    }

    @Nullable
    public static Uri zzg(@NonNull FirebaseApp firebaseApp, @Nullable String str) throws UnsupportedEncodingException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String valueOf;
        if (str.toLowerCase().startsWith("gs://")) {
            str = "gs://";
            valueOf = String.valueOf(abv.zzhI(abv.zzhK(str.substring(5))));
            return Uri.parse(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (scheme == null || !(zzbe.equal(scheme.toLowerCase(), "http") || zzbe.equal(scheme.toLowerCase(), "https"))) {
            valueOf = "StorageUtil";
            str = "FirebaseStorage is unable to support the scheme:";
            scheme = String.valueOf(scheme);
            Log.w(valueOf, scheme.length() != 0 ? str.concat(scheme) : new String(str));
            throw new IllegalArgumentException("Uri scheme");
        }
        try {
            int indexOf = parse.getAuthority().toLowerCase().indexOf(ace.zzg(firebaseApp).zzLm());
            scheme = abv.zzhJ(parse.getEncodedPath());
            if (indexOf == 0 && scheme.startsWith("/")) {
                indexOf = scheme.indexOf("/b/", 0);
                int i = indexOf + 3;
                int indexOf2 = scheme.indexOf("/", i);
                int indexOf3 = scheme.indexOf("/o/", 0);
                if (indexOf == -1 || indexOf2 == -1) {
                    Log.w("StorageUtil", "Only URLs to firebasestorage.googleapis.com are supported.");
                    throw new IllegalArgumentException("Only URLs to firebasestorage.googleapis.com are supported.");
                }
                valueOf = scheme.substring(i, indexOf2);
                scheme = indexOf3 != -1 ? scheme.substring(indexOf3 + 3) : "";
            } else if (indexOf > 1) {
                valueOf = parse.getAuthority().substring(0, indexOf - 1);
            } else {
                Log.w("StorageUtil", "Only URLs to firebasestorage.googleapis.com are supported.");
                throw new IllegalArgumentException("Only URLs to firebasestorage.googleapis.com are supported.");
            }
            zzbo.zzh(valueOf, "No bucket specified");
            return new Builder().scheme("gs").authority(valueOf).encodedPath(scheme).build();
        } catch (RemoteException unused) {
            throw new UnsupportedEncodingException("Could not parse Url because the Storage network layer did not load");
        }
    }

    public static long zzhL(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        str = str.replaceAll("Z$", "-0000");
        try {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.getDefault()).parse(str).getTime();
        } catch (ParseException e) {
            String str2 = "StorageUtil";
            String str3 = "unable to parse datetime:";
            str = String.valueOf(str);
            Log.w(str2, str.length() != 0 ? str3.concat(str) : new String(str3), e);
            return 0;
        }
    }
}
