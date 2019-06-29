package com.google.firebase.auth;

import android.support.annotation.NonNull;

public class TwitterAuthProvider {
    public static final String PROVIDER_ID = "twitter.com";

    private TwitterAuthProvider() {
    }

    public static AuthCredential getCredential(@NonNull String str, @NonNull String str2) {
        return new TwitterAuthCredential(str, str2);
    }
}
