package com.google.android.gms.appindexing;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

@Deprecated
public final class AndroidAppUri {
    private final Uri mUri;

    private AndroidAppUri(Uri uri) {
        this.mUri = uri;
    }

    public static AndroidAppUri newAndroidAppUri(Uri uri) {
        AndroidAppUri androidAppUri = new AndroidAppUri(uri);
        if (!"android-app".equals(androidAppUri.mUri.getScheme())) {
            throw new IllegalArgumentException("android-app scheme is required.");
        } else if (TextUtils.isEmpty(androidAppUri.getPackageName())) {
            throw new IllegalArgumentException("Package name is empty.");
        } else {
            if (androidAppUri.mUri.equals(newAndroidAppUri(androidAppUri.getPackageName(), androidAppUri.getDeepLinkUri()).toUri())) {
                return androidAppUri;
            }
            throw new IllegalArgumentException("URI is not canonical.");
        }
    }

    public static AndroidAppUri newAndroidAppUri(String str, Uri uri) {
        Builder authority = new Builder().scheme("android-app").authority(str);
        if (uri != null) {
            authority.appendPath(uri.getScheme());
            if (uri.getAuthority() != null) {
                authority.appendPath(uri.getAuthority());
            }
            for (String appendPath : uri.getPathSegments()) {
                authority.appendPath(appendPath);
            }
            authority.encodedQuery(uri.getEncodedQuery()).encodedFragment(uri.getEncodedFragment());
        }
        return new AndroidAppUri(authority.build());
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

    public final Uri toUri() {
        return this.mUri;
    }
}
