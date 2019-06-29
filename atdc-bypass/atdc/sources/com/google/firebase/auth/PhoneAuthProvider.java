package com.google.firebase.auth;

import android.app.Activity;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbgb;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public class PhoneAuthProvider {
    public static final String PROVIDER_ID = "phone";
    private FirebaseAuth zzbWq;

    public static abstract class OnVerificationStateChangedCallbacks {
        private static final zzbgb zzaml = new zzbgb("PhoneAuthProvider", new String[0]);

        public void onCodeAutoRetrievalTimeOut(String str) {
            zzaml.zze("Sms auto retrieval timed-out.", new Object[0]);
        }

        public void onCodeSent(String str, ForceResendingToken forceResendingToken) {
        }

        public abstract void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential);

        public abstract void onVerificationFailed(FirebaseException firebaseException);
    }

    public static class ForceResendingToken extends zza {
        public static final Creator<ForceResendingToken> CREATOR = new zza();

        ForceResendingToken() {
        }

        public static ForceResendingToken zzEK() {
            return new ForceResendingToken();
        }

        public void writeToParcel(Parcel parcel, int i) {
            zzd.zzI(parcel, zzd.zze(parcel));
        }
    }

    private PhoneAuthProvider(FirebaseAuth firebaseAuth) {
        this.zzbWq = firebaseAuth;
    }

    public static PhoneAuthCredential getCredential(@NonNull String str, @NonNull String str2) {
        return new PhoneAuthCredential(str, str2);
    }

    public static PhoneAuthProvider getInstance() {
        return new PhoneAuthProvider(FirebaseAuth.getInstance(FirebaseApp.getInstance()));
    }

    public static PhoneAuthProvider getInstance(FirebaseAuth firebaseAuth) {
        return new PhoneAuthProvider(firebaseAuth);
    }

    private final void zza(String str, long j, TimeUnit timeUnit, Activity activity, Executor executor, OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, ForceResendingToken forceResendingToken) {
        this.zzbWq.zza(str, j, timeUnit, onVerificationStateChangedCallbacks, activity, executor, forceResendingToken != null);
    }

    public void verifyPhoneNumber(@NonNull String str, long j, TimeUnit timeUnit, @NonNull Activity activity, @NonNull OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks) {
        zza(zzbo.zzcF(str), j, timeUnit, (Activity) zzbo.zzu(activity), TaskExecutors.MAIN_THREAD, (OnVerificationStateChangedCallbacks) zzbo.zzu(onVerificationStateChangedCallbacks), null);
    }

    public void verifyPhoneNumber(@NonNull String str, long j, TimeUnit timeUnit, @NonNull Activity activity, @NonNull OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, @Nullable ForceResendingToken forceResendingToken) {
        zza(zzbo.zzcF(str), j, timeUnit, (Activity) zzbo.zzu(activity), TaskExecutors.MAIN_THREAD, (OnVerificationStateChangedCallbacks) zzbo.zzu(onVerificationStateChangedCallbacks), forceResendingToken);
    }

    public void verifyPhoneNumber(@NonNull String str, long j, TimeUnit timeUnit, @NonNull Executor executor, @NonNull OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks) {
        zza(zzbo.zzcF(str), j, timeUnit, null, (Executor) zzbo.zzu(executor), (OnVerificationStateChangedCallbacks) zzbo.zzu(onVerificationStateChangedCallbacks), null);
    }

    public void verifyPhoneNumber(@NonNull String str, long j, TimeUnit timeUnit, @NonNull Executor executor, @NonNull OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, @Nullable ForceResendingToken forceResendingToken) {
        zza(zzbo.zzcF(str), j, timeUnit, null, (Executor) zzbo.zzu(executor), (OnVerificationStateChangedCallbacks) zzbo.zzu(onVerificationStateChangedCallbacks), forceResendingToken);
    }
}
