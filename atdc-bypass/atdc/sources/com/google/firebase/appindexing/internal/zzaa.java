package com.google.firebase.appindexing.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.appindexing.FirebaseAppIndexingException;
import com.google.firebase.appindexing.FirebaseAppIndexingInvalidArgumentException;
import com.google.firebase.appindexing.FirebaseAppIndexingTooManyArgumentsException;

public final class zzaa {
    public static FirebaseAppIndexingException zzb(@NonNull Status status, String str) {
        zzbo.zzu(status);
        String statusMessage = status.getStatusMessage();
        if (!(statusMessage == null || statusMessage.isEmpty())) {
            str = statusMessage;
        }
        switch (status.getStatusCode()) {
            case 17510:
                return new FirebaseAppIndexingInvalidArgumentException(str);
            case 17511:
                return new FirebaseAppIndexingTooManyArgumentsException(str);
            default:
                return new FirebaseAppIndexingException(str);
        }
    }
}
