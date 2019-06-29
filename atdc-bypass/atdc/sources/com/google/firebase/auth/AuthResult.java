package com.google.firebase.auth;

public interface AuthResult {
    AdditionalUserInfo getAdditionalUserInfo();

    FirebaseUser getUser();
}
