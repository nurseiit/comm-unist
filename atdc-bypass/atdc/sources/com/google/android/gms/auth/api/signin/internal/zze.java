package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdb;
import com.google.android.gms.internal.zzbgb;

public final class zze {
    private static zzbgb zzaml = new zzbgb("GoogleSignInCommon", new String[0]);

    public static GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        if (intent == null || (!intent.hasExtra("googleSignInStatus") && !intent.hasExtra("googleSignInAccount"))) {
            return null;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        if (googleSignInAccount != null) {
            status = Status.zzaBm;
        }
        return new GoogleSignInResult(googleSignInAccount, status);
    }

    public static Intent zza(Context context, GoogleSignInOptions googleSignInOptions) {
        zzaml.zzb("GoogleSignInCommon", "getSignInIntent()");
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setClass(context, SignInHubActivity.class);
        intent.putExtra("config", signInConfiguration);
        return intent;
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0081  */
    public static com.google.android.gms.common.api.OptionalPendingResult<com.google.android.gms.auth.api.signin.GoogleSignInResult> zza(com.google.android.gms.common.api.GoogleApiClient r6, android.content.Context r7, com.google.android.gms.auth.api.signin.GoogleSignInOptions r8) {
        /*
        r7 = com.google.android.gms.auth.api.signin.internal.zzy.zzaj(r7);
        r0 = zzaml;
        r1 = "GoogleSignInCommon";
        r2 = 1;
        r3 = new java.lang.Object[r2];
        r4 = "getEligibleSavedSignInResult()";
        r5 = 0;
        r3[r5] = r4;
        r0.zzb(r1, r3);
        com.google.android.gms.common.internal.zzbo.zzu(r8);
        r0 = r7.zzmO();
        if (r0 == 0) goto L_0x007e;
    L_0x001c:
        r1 = r0.getAccount();
        r3 = r8.getAccount();
        if (r1 != 0) goto L_0x002c;
    L_0x0026:
        if (r3 != 0) goto L_0x002a;
    L_0x0028:
        r1 = 1;
        goto L_0x0030;
    L_0x002a:
        r1 = 0;
        goto L_0x0030;
    L_0x002c:
        r1 = r1.equals(r3);
    L_0x0030:
        if (r1 == 0) goto L_0x007e;
    L_0x0032:
        r1 = r8.zzmB();
        if (r1 != 0) goto L_0x007e;
    L_0x0038:
        r1 = r8.isIdTokenRequested();
        if (r1 == 0) goto L_0x0052;
    L_0x003e:
        r1 = r0.isIdTokenRequested();
        if (r1 == 0) goto L_0x007e;
    L_0x0044:
        r1 = r8.getServerClientId();
        r3 = r0.getServerClientId();
        r1 = r1.equals(r3);
        if (r1 == 0) goto L_0x007e;
    L_0x0052:
        r1 = new java.util.HashSet;
        r0 = r0.zzmA();
        r1.<init>(r0);
        r0 = new java.util.HashSet;
        r3 = r8.zzmA();
        r0.<init>(r3);
        r0 = r1.containsAll(r0);
        if (r0 == 0) goto L_0x007e;
    L_0x006a:
        r0 = r7.zzmN();
        if (r0 == 0) goto L_0x007e;
    L_0x0070:
        r1 = r0.zzmw();
        if (r1 != 0) goto L_0x007e;
    L_0x0076:
        r1 = new com.google.android.gms.auth.api.signin.GoogleSignInResult;
        r3 = com.google.android.gms.common.api.Status.zzaBm;
        r1.<init>(r0, r3);
        goto L_0x007f;
    L_0x007e:
        r1 = 0;
    L_0x007f:
        if (r1 == 0) goto L_0x0093;
    L_0x0081:
        r7 = zzaml;
        r8 = "GoogleSignInCommon";
        r0 = new java.lang.Object[r2];
        r2 = "Eligible saved sign in result found";
        r0[r5] = r2;
        r7.zzb(r8, r0);
        r6 = com.google.android.gms.common.api.PendingResults.zzb(r1, r6);
        return r6;
    L_0x0093:
        r0 = zzaml;
        r1 = "GoogleSignInCommon";
        r2 = new java.lang.Object[r2];
        r3 = "trySilentSignIn()";
        r2[r5] = r3;
        r0.zzb(r1, r2);
        r0 = new com.google.android.gms.auth.api.signin.internal.zzf;
        r0.<init>(r6, r7, r8);
        r6 = r6.zzd(r0);
        r7 = new com.google.android.gms.internal.zzbec;
        r7.<init>(r6);
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.zze.zza(com.google.android.gms.common.api.GoogleApiClient, android.content.Context, com.google.android.gms.auth.api.signin.GoogleSignInOptions):com.google.android.gms.common.api.OptionalPendingResult");
    }

    public static PendingResult<Status> zza(GoogleApiClient googleApiClient, Context context) {
        zzaml.zzb("GoogleSignInCommon", "Signing out");
        zzai(context);
        return googleApiClient.zze(new zzh(googleApiClient));
    }

    private static void zzai(Context context) {
        zzy.zzaj(context).zzmP();
        for (GoogleApiClient zzpl : GoogleApiClient.zzpk()) {
            zzpl.zzpl();
        }
        zzbdb.zzql();
    }

    public static PendingResult<Status> zzb(GoogleApiClient googleApiClient, Context context) {
        zzaml.zzb("GoogleSignInCommon", "Revoking access");
        zzai(context);
        return googleApiClient.zze(new zzj(googleApiClient));
    }
}
