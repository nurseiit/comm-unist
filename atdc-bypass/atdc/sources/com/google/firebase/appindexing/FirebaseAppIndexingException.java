package com.google.firebase.appindexing;

import android.support.annotation.NonNull;
import com.google.firebase.FirebaseException;

public class FirebaseAppIndexingException extends FirebaseException {
    public FirebaseAppIndexingException(@NonNull String str) {
        super(str);
    }

    public FirebaseAppIndexingException(@NonNull String str, Throwable th) {
        super(str, th);
    }
}
