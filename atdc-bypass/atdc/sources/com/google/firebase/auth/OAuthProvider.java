package com.google.firebase.auth;

import android.support.annotation.NonNull;

public class OAuthProvider {
    private OAuthProvider() {
    }

    public static AuthCredential getCredential(@NonNull String str, String str2, String str3) {
        return new zzb(str, str2, str3);
    }
}
