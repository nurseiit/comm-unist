package com.google.firebase.auth;

import com.google.android.gms.common.internal.safeparcel.zza;

public abstract class AuthCredential extends zza {
    AuthCredential() {
    }

    public abstract String getProvider();
}
