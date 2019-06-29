package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.CapabilityApi.AddLocalCapabilityResult;
import com.google.android.gms.wearable.CapabilityApi.CapabilityListener;
import com.google.android.gms.wearable.CapabilityApi.GetAllCapabilitiesResult;
import com.google.android.gms.wearable.CapabilityApi.GetCapabilityResult;
import com.google.android.gms.wearable.CapabilityApi.RemoveLocalCapabilityResult;

public final class zzo implements CapabilityApi {
    private static PendingResult<Status> zza(GoogleApiClient googleApiClient, CapabilityListener capabilityListener, IntentFilter[] intentFilterArr) {
        return zzb.zza(googleApiClient, new zzt(intentFilterArr), capabilityListener);
    }

    public final PendingResult<Status> addCapabilityListener(GoogleApiClient googleApiClient, CapabilityListener capabilityListener, String str) {
        zzbo.zzb(str != null, (Object) "capability must not be null");
        zzv zzv = new zzv(capabilityListener, str);
        IntentFilter zzgl = zzez.zzgl(CapabilityApi.ACTION_CAPABILITY_CHANGED);
        if (!str.startsWith("/")) {
            String str2 = "/";
            str = String.valueOf(str);
            str = str.length() != 0 ? str2.concat(str) : new String(str2);
        }
        zzgl.addDataPath(str, 0);
        return zza(googleApiClient, zzv, new IntentFilter[]{zzgl});
    }

    public final PendingResult<Status> addListener(GoogleApiClient googleApiClient, CapabilityListener capabilityListener, Uri uri, int i) {
        zzbo.zzb(uri != null, (Object) "uri must not be null");
        boolean z = i == 0 || i == 1;
        zzbo.zzb(z, (Object) "invalid filter type");
        IntentFilter zza = zzez.zza(CapabilityApi.ACTION_CAPABILITY_CHANGED, uri, i);
        return zza(googleApiClient, capabilityListener, new IntentFilter[]{zza});
    }

    public final PendingResult<AddLocalCapabilityResult> addLocalCapability(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzd(new zzr(this, googleApiClient, str));
    }

    public final PendingResult<GetAllCapabilitiesResult> getAllCapabilities(GoogleApiClient googleApiClient, int i) {
        boolean z = true;
        if (!(i == 0 || i == 1)) {
            z = false;
        }
        zzbo.zzaf(z);
        return googleApiClient.zzd(new zzq(this, googleApiClient, i));
    }

    public final PendingResult<GetCapabilityResult> getCapability(GoogleApiClient googleApiClient, String str, int i) {
        boolean z = true;
        if (!(i == 0 || i == 1)) {
            z = false;
        }
        zzbo.zzaf(z);
        return googleApiClient.zzd(new zzp(this, googleApiClient, str, i));
    }

    public final PendingResult<Status> removeCapabilityListener(GoogleApiClient googleApiClient, CapabilityListener capabilityListener, String str) {
        return googleApiClient.zzd(new zzz(googleApiClient, new zzv(capabilityListener, str), null));
    }

    public final PendingResult<Status> removeListener(GoogleApiClient googleApiClient, CapabilityListener capabilityListener) {
        return googleApiClient.zzd(new zzz(googleApiClient, capabilityListener, null));
    }

    public final PendingResult<RemoveLocalCapabilityResult> removeLocalCapability(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzd(new zzs(this, googleApiClient, str));
    }
}
