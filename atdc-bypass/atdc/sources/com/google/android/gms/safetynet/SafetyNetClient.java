package com.google.android.gms.safetynet;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.zzbh;
import com.google.android.gms.internal.zzbas;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.internal.zzcsa;
import com.google.android.gms.safetynet.SafetyNetApi.AttestationResponse;
import com.google.android.gms.safetynet.SafetyNetApi.HarmfulAppsResponse;
import com.google.android.gms.safetynet.SafetyNetApi.RecaptchaTokenResponse;
import com.google.android.gms.safetynet.SafetyNetApi.SafeBrowsingResponse;
import com.google.android.gms.safetynet.SafetyNetApi.VerifyAppsUserResponse;
import com.google.android.gms.tasks.Task;

public class SafetyNetClient extends GoogleApi<NoOptions> {
    SafetyNetClient(@NonNull Activity activity) {
        super(activity, SafetyNet.API, null, new zzbas());
    }

    SafetyNetClient(@NonNull Context context) {
        super(context, SafetyNet.API, null, new zzbas());
    }

    public Task<AttestationResponse> attest(byte[] bArr, String str) {
        return zzbh.zza(zzcsa.zza(zzpi(), bArr, str), new AttestationResponse());
    }

    public Task<VerifyAppsUserResponse> enableVerifyApps() {
        return zzbh.zza(SafetyNet.SafetyNetApi.enableVerifyApps(zzpi()), new VerifyAppsUserResponse());
    }

    public Task<Void> initSafeBrowsing() {
        return zza((zzbeq) new zzj(this));
    }

    public Task<VerifyAppsUserResponse> isVerifyAppsEnabled() {
        return zzbh.zza(SafetyNet.SafetyNetApi.isVerifyAppsEnabled(zzpi()), new VerifyAppsUserResponse());
    }

    public Task<HarmfulAppsResponse> listHarmfulApps() {
        return zzbh.zza(SafetyNet.SafetyNetApi.listHarmfulApps(zzpi()), new HarmfulAppsResponse());
    }

    public Task<SafeBrowsingResponse> lookupUri(String str, String str2, int... iArr) {
        return zzbh.zza(zzcsa.zza(zzpi(), str, 3, str2, iArr), new SafeBrowsingResponse());
    }

    public Task<Void> shutdownSafeBrowsing() {
        return zza((zzbeq) new zzl(this));
    }

    public Task<RecaptchaTokenResponse> verifyWithRecaptcha(String str) {
        return zzbh.zza(SafetyNet.SafetyNetApi.verifyWithRecaptcha(zzpi(), str), new RecaptchaTokenResponse());
    }
}
