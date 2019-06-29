package com.google.firebase.appindexing;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

public final class AndroidAppUri {
    private final Uri mUri;

    private AndroidAppUri(Uri uri) {
        this.mUri = uri;
    }

    public static AndroidAppUri newAndroidAppUri(Uri uri) {
        AndroidAppUri androidAppUri = new AndroidAppUri(uri);
        if (!"android-app".equals(androidAppUri.mUri.getScheme())) {
            throw new IllegalArgumentException("android-app scheme is required.");
        } else if (!TextUtils.isEmpty(androidAppUri.getPackageName())) {
            return androidAppUri;
        } else {
            throw new IllegalArgumentException("Package name is empty.");
        }
    }

    public final boolean equals(Object obj) {
        return obj instanceof AndroidAppUri ? this.mUri.equals(((AndroidAppUri) obj).mUri) : false;
    }

    public final Uri getDeepLinkUri() {
        List pathSegments = this.mUri.getPathSegments();
        if (pathSegments.size() <= 0) {
            return null;
        }
        String str = (String) pathSegments.get(0);
        Builder builder = new Builder();
        builder.scheme(str);
        if (pathSegments.size() > 1) {
            builder.authority((String) pathSegments.get(1));
            for (int i = 2; i < pathSegments.size(); i++) {
                builder.appendPath((String) pathSegments.get(i));
            }
        }
        builder.encodedQuery(this.mUri.getEncodedQuery());
        builder.encodedFragment(this.mUri.getEncodedFragment());
        return builder.build();
    }

    public final String getPackageName() {
        return this.mUri.getAuthority();
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.mUri});
    }

    public final String toString() {
        return this.mUri.toString();
    }
}
