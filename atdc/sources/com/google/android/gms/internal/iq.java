package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.ActionCodeResult;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.EmailAuthCredential;
import com.google.firebase.auth.EmailAuthProvider;
import com.google.firebase.auth.FirebaseAuthProvider;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks;
import com.google.firebase.auth.ProviderQueryResult;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.zzb;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public final class iq extends GoogleApi<kg> {
    iq(@NonNull Context context, @NonNull kg kgVar) {
        super(context, ke.zzbWI, (ApiOptions) kgVar, new zzb());
    }

    private static <ResultT, CallbackT> jb<ResultT, CallbackT> zza(kj<ResultT, CallbackT> kjVar) {
        return new jb(kjVar);
    }

    @NonNull
    private static ls zza(@NonNull FirebaseApp firebaseApp, @NonNull kv kvVar) {
        return zza(firebaseApp, kvVar, false);
    }

    @NonNull
    private static ls zza(@NonNull FirebaseApp firebaseApp, @NonNull kv kvVar, boolean z) {
        zzbo.zzu(firebaseApp);
        zzbo.zzu(kvVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new lq(kvVar, FirebaseAuthProvider.PROVIDER_ID));
        List zzER = kvVar.zzER();
        if (!(zzER == null || zzER.isEmpty())) {
            for (int i = 0; i < zzER.size(); i++) {
                arrayList.add(new lq((kz) zzER.get(i)));
            }
        }
        ls lsVar = new ls(firebaseApp, arrayList);
        lsVar.zzay(z);
        return lsVar;
    }

    public final Task<AuthResult> zza(@NonNull FirebaseApp firebaseApp, @NonNull ll llVar) {
        return zzb((zzbeq) zza(new jk().zzc(firebaseApp).zzU(llVar)));
    }

    public final Task<AuthResult> zza(@NonNull FirebaseApp firebaseApp, @NonNull AuthCredential authCredential, @NonNull ll llVar) {
        return zzb((zzbeq) zza(new jl(authCredential).zzc(firebaseApp).zzU(llVar)));
    }

    @NonNull
    public final Task<Void> zza(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull ma maVar) {
        return zza((zzbeq) zza(new jh().zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zza(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new jc(authCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zza(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull PhoneAuthCredential phoneAuthCredential, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new jt(phoneAuthCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zza(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull UserProfileChangeRequest userProfileChangeRequest, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new ju(userProfileChangeRequest).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<GetTokenResult> zza(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull String str, @NonNull ll llVar) {
        return zza((zzbeq) zza(new ix(str).zzc(firebaseApp).zzf(firebaseUser).zzU(llVar)));
    }

    public final Task<Void> zza(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull String str, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new jr(str).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zza(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull String str, @NonNull String str2, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new je(str, str2).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<AuthResult> zza(@NonNull FirebaseApp firebaseApp, @NonNull PhoneAuthCredential phoneAuthCredential, @NonNull ll llVar) {
        return zzb((zzbeq) zza(new jo(phoneAuthCredential).zzc(firebaseApp).zzU(llVar)));
    }

    public final Task<ProviderQueryResult> zza(@NonNull FirebaseApp firebaseApp, @NonNull String str) {
        return zza((zzbeq) zza(new iw(str).zzc(firebaseApp)));
    }

    public final Task<AuthResult> zza(@NonNull FirebaseApp firebaseApp, @NonNull String str, @NonNull ll llVar) {
        return zzb((zzbeq) zza(new jm(str).zzc(firebaseApp).zzU(llVar)));
    }

    public final Task<Void> zza(@NonNull FirebaseApp firebaseApp, @NonNull String str, @NonNull String str2) {
        return zzb((zzbeq) zza(new it(str, str2).zzc(firebaseApp)));
    }

    public final Task<AuthResult> zza(@NonNull FirebaseApp firebaseApp, @NonNull String str, @NonNull String str2, @NonNull ll llVar) {
        return zzb((zzbeq) zza(new iu(str, str2).zzc(firebaseApp).zzU(llVar)));
    }

    @NonNull
    public final Task<Void> zza(@NonNull FirebaseUser firebaseUser, @NonNull lv lvVar) {
        return zzb((zzbeq) zza(new iv().zzf(firebaseUser).zzU(lvVar).zza(lvVar)));
    }

    public final void zza(@NonNull FirebaseApp firebaseApp, @NonNull lf lfVar, @NonNull OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, @Nullable Activity activity, @NonNull Executor executor) {
        zzb((zzbeq) zza(new jw(lfVar).zzc(firebaseApp).zza(onVerificationStateChangedCallbacks, activity, executor)));
    }

    public final Task<AuthResult> zzb(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new jd(authCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zzb(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull PhoneAuthCredential phoneAuthCredential, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new jg(phoneAuthCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zzb(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull String str, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new js(str).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<AuthResult> zzb(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull String str, @NonNull String str2, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new jf(str, str2).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zzb(@NonNull FirebaseApp firebaseApp, @NonNull String str) {
        return zzb((zzbeq) zza(new jj(str).zzc(firebaseApp)));
    }

    public final Task<AuthResult> zzb(@NonNull FirebaseApp firebaseApp, @NonNull String str, @NonNull String str2, @NonNull ll llVar) {
        return zzb((zzbeq) zza(new jn(str, str2).zzc(firebaseApp).zzU(llVar)));
    }

    public final Task<AuthResult> zzc(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential, @NonNull ma maVar) {
        return zzb((zzbeq) zza(new jd(authCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<AuthResult> zzc(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull String str, @NonNull ma maVar) {
        zzbo.zzu(firebaseApp);
        zzbo.zzcF(str);
        zzbo.zzu(firebaseUser);
        zzbo.zzu(maVar);
        List providers = firebaseUser.getProviders();
        if ((providers != null && !providers.contains(str)) || firebaseUser.isAnonymous()) {
            return Tasks.forException(jz.zzK(new Status(17016, str)));
        }
        Object obj = -1;
        if (str.hashCode() == 1216985755 && str.equals(EmailAuthProvider.PROVIDER_ID)) {
            obj = null;
        }
        return obj != null ? zzb((zzbeq) zza(new jq(str).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar))) : zzb((zzbeq) zza(new jp().zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
    }

    public final Task<Void> zzc(@NonNull FirebaseApp firebaseApp, @NonNull String str) {
        return zzb((zzbeq) zza(new ji(str).zzc(firebaseApp)));
    }

    public final Task<AuthResult> zzd(@NonNull FirebaseApp firebaseApp, @NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential, @NonNull ma maVar) {
        zzbo.zzu(firebaseApp);
        zzbo.zzu(authCredential);
        zzbo.zzu(firebaseUser);
        zzbo.zzu(maVar);
        if (authCredential instanceof EmailAuthCredential) {
            return zzb((zzbeq) zza(new iy((EmailAuthCredential) authCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar)));
        }
        List providers;
        if (authCredential instanceof PhoneAuthCredential) {
            PhoneAuthCredential phoneAuthCredential = (PhoneAuthCredential) authCredential;
            providers = firebaseUser.getProviders();
            return (providers == null || !providers.contains(phoneAuthCredential.getProvider())) ? zzb((zzbeq) zza(new ja(phoneAuthCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar))) : Tasks.forException(jz.zzK(new Status(17015)));
        } else {
            zzbo.zzu(firebaseApp);
            zzbo.zzu(authCredential);
            zzbo.zzu(firebaseUser);
            zzbo.zzu(maVar);
            providers = firebaseUser.getProviders();
            return (providers == null || !providers.contains(authCredential.getProvider())) ? zzb((zzbeq) zza(new iz(authCredential).zzc(firebaseApp).zzf(firebaseUser).zzU(maVar).zza(maVar))) : Tasks.forException(jz.zzK(new Status(17015)));
        }
    }

    public final Task<ActionCodeResult> zzd(@NonNull FirebaseApp firebaseApp, @NonNull String str) {
        return zzb((zzbeq) zza(new is(str).zzc(firebaseApp)));
    }

    public final Task<Void> zze(@NonNull FirebaseApp firebaseApp, @NonNull String str) {
        return zzb((zzbeq) zza(new ir(str).zzc(firebaseApp)));
    }

    public final Task<String> zzf(@NonNull FirebaseApp firebaseApp, @NonNull String str) {
        return zzb((zzbeq) zza(new jv(str).zzc(firebaseApp)));
    }
}
