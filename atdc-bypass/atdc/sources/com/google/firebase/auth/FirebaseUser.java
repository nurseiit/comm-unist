package com.google.firebase.auth;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.kx;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import java.util.List;

public abstract class FirebaseUser implements UserInfo {
    private final FirebaseAuth zzEJ() {
        return FirebaseAuth.getInstance(zzEF());
    }

    @NonNull
    public Task<Void> delete() {
        return FirebaseAuth.getInstance(zzEF()).zzd(this);
    }

    @Nullable
    public abstract String getDisplayName();

    @Nullable
    public abstract String getEmail();

    @NonNull
    public Task<GetTokenResult> getIdToken(boolean z) {
        return FirebaseAuth.getInstance(zzEF()).zza(this, z);
    }

    @Nullable
    public abstract String getPhoneNumber();

    @Nullable
    public abstract Uri getPhotoUrl();

    @NonNull
    public abstract List<? extends UserInfo> getProviderData();

    @NonNull
    public abstract String getProviderId();

    @Nullable
    public abstract List<String> getProviders();

    @Deprecated
    @NonNull
    public Task<GetTokenResult> getToken(boolean z) {
        return getIdToken(z);
    }

    @NonNull
    public abstract String getUid();

    public abstract boolean isAnonymous();

    @NonNull
    public Task<AuthResult> linkWithCredential(@NonNull AuthCredential authCredential) {
        zzbo.zzu(authCredential);
        return FirebaseAuth.getInstance(zzEF()).zzc(this, authCredential);
    }

    public Task<Void> reauthenticate(@NonNull AuthCredential authCredential) {
        zzbo.zzu(authCredential);
        return FirebaseAuth.getInstance(zzEF()).zza(this, authCredential);
    }

    public Task<AuthResult> reauthenticateAndRetrieveData(@NonNull AuthCredential authCredential) {
        zzbo.zzu(authCredential);
        return FirebaseAuth.getInstance(zzEF()).zzb(this, authCredential);
    }

    @NonNull
    public Task<Void> reload() {
        return FirebaseAuth.getInstance(zzEF()).zzc(this);
    }

    @NonNull
    public Task<Void> sendEmailVerification() {
        return FirebaseAuth.getInstance(zzEF()).zza(this, false).continueWithTask(new zzl(this));
    }

    public Task<AuthResult> unlink(@NonNull String str) {
        zzbo.zzcF(str);
        return FirebaseAuth.getInstance(zzEF()).zza(this, str);
    }

    @NonNull
    public Task<Void> updateEmail(@NonNull String str) {
        zzbo.zzcF(str);
        return FirebaseAuth.getInstance(zzEF()).zzb(this, str);
    }

    @NonNull
    public Task<Void> updatePassword(@NonNull String str) {
        zzbo.zzcF(str);
        return FirebaseAuth.getInstance(zzEF()).zzc(this, str);
    }

    public Task<Void> updatePhoneNumber(@NonNull PhoneAuthCredential phoneAuthCredential) {
        return FirebaseAuth.getInstance(zzEF()).zza(this, phoneAuthCredential);
    }

    @NonNull
    public Task<Void> updateProfile(@NonNull UserProfileChangeRequest userProfileChangeRequest) {
        zzbo.zzu(userProfileChangeRequest);
        return FirebaseAuth.getInstance(zzEF()).zza(this, userProfileChangeRequest);
    }

    @NonNull
    public abstract FirebaseApp zzEF();

    @NonNull
    public abstract kx zzEG();

    @NonNull
    public abstract String zzEH();

    @NonNull
    public abstract String zzEI();

    @NonNull
    public abstract FirebaseUser zzP(@NonNull List<? extends UserInfo> list);

    public abstract void zza(@NonNull kx kxVar);

    public abstract FirebaseUser zzax(boolean z);
}
