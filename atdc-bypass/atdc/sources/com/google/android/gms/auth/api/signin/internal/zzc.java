package com.google.android.gms.auth.api.signin.internal;

import android.content.Intent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public final class zzc implements GoogleSignInApi {
    private static GoogleSignInOptions zza(GoogleApiClient googleApiClient) {
        return ((zzd) googleApiClient.zza(Auth.zzakG)).zzmI();
    }

    public final Intent getSignInIntent(GoogleApiClient googleApiClient) {
        return zze.zza(googleApiClient.getContext(), zza(googleApiClient));
    }

    public final GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        return zze.getSignInResultFromIntent(intent);
    }

    public final PendingResult<Status> revokeAccess(GoogleApiClient googleApiClient) {
        return zze.zzb(googleApiClient, googleApiClient.getContext());
    }

    public final PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return zze.zza(googleApiClient, googleApiClient.getContext());
    }

    public final OptionalPendingResult<GoogleSignInResult> silentSignIn(GoogleApiClient googleApiClient) {
        return zze.zza(googleApiClient, googleApiClient.getContext(), zza(googleApiClient));
    }
}
