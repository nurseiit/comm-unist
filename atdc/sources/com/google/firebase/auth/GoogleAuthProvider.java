package com.google.firebase.auth;

import android.support.annotation.Nullable;

public class GoogleAuthProvider {
    public static final String PROVIDER_ID = "google.com";

    private GoogleAuthProvider() {
    }

    public static AuthCredential getCredential(@Nullable String str, @Nullable String str2) {
        return new GoogleAuthCredential(str, str2);
    }
}
