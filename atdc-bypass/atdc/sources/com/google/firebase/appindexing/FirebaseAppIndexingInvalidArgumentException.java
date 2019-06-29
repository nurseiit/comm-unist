package com.google.firebase.appindexing;

import android.support.annotation.NonNull;

public class FirebaseAppIndexingInvalidArgumentException extends FirebaseAppIndexingException {
    public FirebaseAppIndexingInvalidArgumentException(@NonNull String str) {
        super(str);
    }

    public FirebaseAppIndexingInvalidArgumentException(@NonNull String str, Throwable th) {
        super(str, th);
    }
}
