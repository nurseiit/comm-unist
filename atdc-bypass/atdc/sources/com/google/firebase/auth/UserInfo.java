package com.google.firebase.auth;

import android.net.Uri;
import android.support.annotation.Nullable;

public interface UserInfo {
    @Nullable
    String getDisplayName();

    @Nullable
    String getEmail();

    @Nullable
    String getPhoneNumber();

    @Nullable
    Uri getPhotoUrl();

    String getProviderId();

    String getUid();

    boolean isEmailVerified();
}
