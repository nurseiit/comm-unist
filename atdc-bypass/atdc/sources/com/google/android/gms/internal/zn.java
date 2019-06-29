package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.tasks.Task;
import com.google.firebase.dynamiclinks.DynamicLink.Builder;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.google.firebase.dynamiclinks.ShortDynamicLink;

public final class zn extends FirebaseDynamicLinks {
    private final GoogleApi<NoOptions> zzaET;

    public zn(@NonNull Context context) {
        this(new zk(context));
    }

    private zn(@NonNull GoogleApi<NoOptions> googleApi) {
        this.zzaET = googleApi;
    }

    public static void zzE(Bundle bundle) {
        Uri uri = (Uri) bundle.getParcelable("dynamicLink");
        if (TextUtils.isEmpty(bundle.getString("domain")) && uri == null) {
            throw new IllegalArgumentException("FDL domain is missing. Set with setDynamicLinkDomain().");
        }
    }

    public final Builder createDynamicLink() {
        return new Builder(this);
    }

    public final Task<PendingDynamicLinkData> getDynamicLink(@NonNull Intent intent) {
        return this.zzaET.zzb(new zs(intent.getDataString()));
    }

    public final Task<PendingDynamicLinkData> getDynamicLink(@NonNull Uri uri) {
        return this.zzaET.zzb(new zs(uri.toString()));
    }

    public final Task<ShortDynamicLink> zzD(Bundle bundle) {
        zzE(bundle);
        return this.zzaET.zzb(new zq(bundle));
    }
}
