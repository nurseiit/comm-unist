package com.google.firebase.auth;

import android.support.annotation.NonNull;

public final class FirebaseAuthUserCollisionException extends FirebaseAuthException {
    public FirebaseAuthUserCollisionException(@NonNull String str, @NonNull String str2) {
        super(str, str2);
    }
}
