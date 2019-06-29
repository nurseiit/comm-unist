package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.common.api.Status;

public final class jz {
    private static SparseArray<Pair<String, String>> zzbWG;

    static {
        SparseArray sparseArray = new SparseArray();
        zzbWG = sparseArray;
        sparseArray.put(17000, new Pair("ERROR_INVALID_CUSTOM_TOKEN", "The custom token format is incorrect. Please check the documentation."));
        zzbWG.put(17002, new Pair("ERROR_CUSTOM_TOKEN_MISMATCH", "The custom token corresponds to a different audience."));
        zzbWG.put(17004, new Pair("ERROR_INVALID_CREDENTIAL", "The supplied auth credential is malformed or has expired."));
        zzbWG.put(17008, new Pair("ERROR_INVALID_EMAIL", "The email address is badly formatted."));
        zzbWG.put(17009, new Pair("ERROR_WRONG_PASSWORD", "The password is invalid or the user does not have a password."));
        zzbWG.put(17024, new Pair("ERROR_USER_MISMATCH", "The supplied credentials do not correspond to the previously signed in user."));
        zzbWG.put(17014, new Pair("ERROR_REQUIRES_RECENT_LOGIN", "This operation is sensitive and requires recent authentication. Log in again before retrying this request."));
        zzbWG.put(17012, new Pair("ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL", "An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address."));
        zzbWG.put(17007, new Pair("ERROR_EMAIL_ALREADY_IN_USE", "The email address is already in use by another account."));
        zzbWG.put(17025, new Pair("ERROR_CREDENTIAL_ALREADY_IN_USE", "This credential is already associated with a different user account."));
        zzbWG.put(17005, new Pair("ERROR_USER_DISABLED", "The user account has been disabled by an administrator."));
        zzbWG.put(17021, new Pair("ERROR_USER_TOKEN_EXPIRED", "The user's credential is no longer valid. The user must sign in again."));
        zzbWG.put(17011, new Pair("ERROR_USER_NOT_FOUND", "There is no user record corresponding to this identifier. The user may have been deleted."));
        zzbWG.put(17017, new Pair("ERROR_INVALID_USER_TOKEN", "The user's credential is no longer valid. The user must sign in again."));
        zzbWG.put(17006, new Pair("ERROR_OPERATION_NOT_ALLOWED", "This operation is not allowed. You must enable this service in the console."));
        zzbWG.put(17026, new Pair("ERROR_WEAK_PASSWORD", "The given password is invalid."));
        zzbWG.put(17029, new Pair("ERROR_EXPIRED_ACTION_CODE", "The out of band code has expired."));
        zzbWG.put(17030, new Pair("ERROR_INVALID_ACTION_CODE", "The out of band code is invalid. This can happen if the code is malformed, expired, or has already been used."));
        zzbWG.put(17031, new Pair("ERROR_INVALID_MESSAGE_PAYLOAD", "The email template corresponding to this action contains invalid characters in its message. Please fix by going to the Auth email templates section in the Firebase Console."));
        zzbWG.put(17033, new Pair("ERROR_INVALID_RECIPIENT_EMAIL", "The email corresponding to this action failed to send as the provided recipient email address is invalid."));
        zzbWG.put(17032, new Pair("ERROR_INVALID_SENDER", "The email template corresponding to this action contains an invalid sender email or name. Please fix by going to the Auth email templates section in the Firebase Console."));
        zzbWG.put(17034, new Pair("ERROR_MISSING_EMAIL", "An email address must be provided."));
        zzbWG.put(17035, new Pair("ERROR_MISSING_PASSWORD", "A password must be provided."));
        zzbWG.put(17041, new Pair("ERROR_MISSING_PHONE_NUMBER", "To send verification codes, provide a phone number for the recipient."));
        zzbWG.put(17042, new Pair("ERROR_INVALID_PHONE_NUMBER", "The format of the phone number provided is incorrect. Please enter the phone number in a format that can be parsed into E.164 format. E.164 phone numbers are written in the format [+][country code][subscriber number including area code]."));
        zzbWG.put(17043, new Pair("ERROR_MISSING_VERIFICATION_CODE", "The Phone Auth Credential was created with an empty sms verification Code"));
        zzbWG.put(17044, new Pair("ERROR_INVALID_VERIFICATION_CODE", "The sms verification code used to create the phone auth credential is invalid. Please resend the verification code sms and be sure use the verification code provided by the user."));
        zzbWG.put(17045, new Pair("ERROR_MISSING_VERIFICATION_ID", "The Phone Auth Credential was created with an empty verification ID"));
        zzbWG.put(17046, new Pair("ERROR_INVALID_VERIFICATION_ID", "The verification ID used to create the phone auth credential is invalid."));
        zzbWG.put(17049, new Pair("ERROR_RETRY_PHONE_AUTH", "An error occurred during authentication using the PhoneAuthCredential. Please retry authentication."));
        zzbWG.put(17051, new Pair("ERROR_SESSION_EXPIRED", "The sms code has expired. Please re-send the verification code to try again."));
        zzbWG.put(17052, new Pair("ERROR_QUOTA_EXCEEDED", "The sms quota for this project has been exceeded."));
        zzbWG.put(17028, new Pair("ERROR_APP_NOT_AUTHORIZED", "This app is not authorized to use Firebase Authentication. Please verifythat the correct package name and SHA-1 are configured in the Firebase Console."));
        zzbWG.put(17053, new Pair("ERROR_API_NOT_AVAILABLE", "The API that you are calling is not available on devices without Google Play Services."));
    }

    /* JADX WARNING: Missing block: B:26:0x0070, code skipped:
            return new com.google.firebase.auth.FirebaseAuthInvalidCredentialsException(zzbT(r0), r1);
     */
    /* JADX WARNING: Missing block: B:46:0x00e0, code skipped:
            return new com.google.firebase.auth.FirebaseAuthUserCollisionException(zzbT(r0), r1);
     */
    /* JADX WARNING: Missing block: B:50:0x00f4, code skipped:
            return new com.google.firebase.auth.FirebaseAuthInvalidUserException(zzbT(r0), r1);
     */
    /* JADX WARNING: Missing block: B:52:0x00fe, code skipped:
            return new com.google.firebase.auth.FirebaseAuthInvalidCredentialsException(zzbT(r0), r1);
     */
    public static com.google.firebase.FirebaseException zzK(com.google.android.gms.common.api.Status r3) {
        /*
        r0 = r3.getStatusCode();
        r1 = zzbWG;
        r1 = r1.get(r0);
        r1 = (android.util.Pair) r1;
        if (r1 == 0) goto L_0x0013;
    L_0x000e:
        r1 = r1.second;
        r1 = (java.lang.String) r1;
        goto L_0x0015;
    L_0x0013:
        r1 = "An internal error happened";
    L_0x0015:
        r1 = zza(r1, r3);
        switch(r0) {
            case 17004: goto L_0x00f5;
            case 17005: goto L_0x00eb;
            case 17006: goto L_0x00e1;
            case 17007: goto L_0x00d7;
            case 17008: goto L_0x00f5;
            case 17009: goto L_0x00f5;
            case 17010: goto L_0x00cb;
            case 17011: goto L_0x00eb;
            case 17012: goto L_0x00d7;
            default: goto L_0x001c;
        };
    L_0x001c:
        switch(r0) {
            case 17014: goto L_0x00c1;
            case 17015: goto L_0x00b5;
            case 17016: goto L_0x00a9;
            case 17017: goto L_0x00eb;
            default: goto L_0x001f;
        };
    L_0x001f:
        switch(r0) {
            case 17020: goto L_0x009d;
            case 17021: goto L_0x00eb;
            default: goto L_0x0022;
        };
    L_0x0022:
        switch(r0) {
            case 17024: goto L_0x00f5;
            case 17025: goto L_0x00d7;
            case 17026: goto L_0x008f;
            default: goto L_0x0025;
        };
    L_0x0025:
        switch(r0) {
            case 17028: goto L_0x0085;
            case 17029: goto L_0x007b;
            case 17030: goto L_0x007b;
            case 17031: goto L_0x0071;
            case 17032: goto L_0x0071;
            case 17033: goto L_0x0071;
            case 17034: goto L_0x0067;
            case 17035: goto L_0x0067;
            default: goto L_0x0028;
        };
    L_0x0028:
        switch(r0) {
            case 17041: goto L_0x0067;
            case 17042: goto L_0x0067;
            case 17043: goto L_0x0067;
            case 17044: goto L_0x0067;
            case 17045: goto L_0x0067;
            case 17046: goto L_0x0067;
            default: goto L_0x002b;
        };
    L_0x002b:
        switch(r0) {
            case 17051: goto L_0x0067;
            case 17052: goto L_0x0061;
            case 17053: goto L_0x005b;
            default: goto L_0x002e;
        };
    L_0x002e:
        switch(r0) {
            case 17000: goto L_0x0051;
            case 17002: goto L_0x00f5;
            case 17049: goto L_0x0067;
            case 17495: goto L_0x0045;
            case 17499: goto L_0x0039;
            default: goto L_0x0031;
        };
    L_0x0031:
        r3 = new com.google.firebase.FirebaseException;
        r0 = "An internal error has occurred.";
        r3.<init>(r0);
        return r3;
    L_0x0039:
        r0 = "An internal error has occurred.";
        r3 = zza(r0, r3);
        r0 = new com.google.firebase.FirebaseException;
        r0.<init>(r3);
        return r0;
    L_0x0045:
        r0 = "Please sign in before trying to get a token.";
        r3 = zza(r0, r3);
        r0 = new com.google.android.gms.internal.aaf;
        r0.<init>(r3);
        return r0;
    L_0x0051:
        r3 = new com.google.firebase.auth.FirebaseAuthInvalidCredentialsException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x005b:
        r3 = new com.google.firebase.FirebaseApiNotAvailableException;
        r3.<init>(r1);
        return r3;
    L_0x0061:
        r3 = new com.google.firebase.FirebaseTooManyRequestsException;
        r3.<init>(r1);
        return r3;
    L_0x0067:
        r3 = new com.google.firebase.auth.FirebaseAuthInvalidCredentialsException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x0071:
        r3 = new com.google.firebase.auth.FirebaseAuthEmailException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x007b:
        r3 = new com.google.firebase.auth.FirebaseAuthActionCodeException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x0085:
        r3 = new com.google.firebase.auth.FirebaseAuthException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x008f:
        r2 = new com.google.firebase.auth.FirebaseAuthWeakPasswordException;
        r0 = zzbT(r0);
        r3 = r3.getStatusMessage();
        r2.<init>(r0, r1, r3);
        return r2;
    L_0x009d:
        r0 = "A network error (such as timeout, interrupted connection or unreachable host) has occurred.";
        r3 = zza(r0, r3);
        r0 = new com.google.firebase.FirebaseNetworkException;
        r0.<init>(r3);
        return r0;
    L_0x00a9:
        r0 = "User was not linked to an account with the given provider.";
        r3 = zza(r0, r3);
        r0 = new com.google.firebase.FirebaseException;
        r0.<init>(r3);
        return r0;
    L_0x00b5:
        r0 = "User has already been linked to the given provider.";
        r3 = zza(r0, r3);
        r0 = new com.google.firebase.FirebaseException;
        r0.<init>(r3);
        return r0;
    L_0x00c1:
        r3 = new com.google.firebase.auth.FirebaseAuthRecentLoginRequiredException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x00cb:
        r0 = "We have blocked all requests from this device due to unusual activity. Try again later.";
        r3 = zza(r0, r3);
        r0 = new com.google.firebase.FirebaseTooManyRequestsException;
        r0.<init>(r3);
        return r0;
    L_0x00d7:
        r3 = new com.google.firebase.auth.FirebaseAuthUserCollisionException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x00e1:
        r3 = new com.google.firebase.auth.FirebaseAuthException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x00eb:
        r3 = new com.google.firebase.auth.FirebaseAuthInvalidUserException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
    L_0x00f5:
        r3 = new com.google.firebase.auth.FirebaseAuthInvalidCredentialsException;
        r0 = zzbT(r0);
        r3.<init>(r0, r1);
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jz.zzK(com.google.android.gms.common.api.Status):com.google.firebase.FirebaseException");
    }

    private static String zza(String str, Status status) {
        if (TextUtils.isEmpty(status.getStatusMessage())) {
            return str;
        }
        return String.format(String.valueOf(str).concat(" [ %s ]"), new Object[]{status.getStatusMessage()});
    }

    private static String zzbT(int i) {
        Pair pair = (Pair) zzbWG.get(i);
        return pair != null ? (String) pair.first : "INTERNAL_ERROR";
    }
}
