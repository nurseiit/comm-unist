package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.appindexing.AppIndexApi.ActionResult;
import com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;

public final class zzapw implements AppIndexApi {
    private static final String TAG = "zzapw";

    @Deprecated
    static final class zza implements ActionResult {
        private zzapw zzajN;
        private PendingResult<Status> zzajO;
        private Action zzajP;

        zza(zzapw zzapw, PendingResult<Status> pendingResult, Action action) {
            this.zzajN = zzapw;
            this.zzajO = pendingResult;
            this.zzajP = action;
        }

        public final PendingResult<Status> end(GoogleApiClient googleApiClient) {
            String packageName = googleApiClient.getContext().getPackageName();
            zzapl zza = zzapv.zza(this.zzajP, System.currentTimeMillis(), packageName, 2);
            return this.zzajN.zza(googleApiClient, zza);
        }

        public final PendingResult<Status> getPendingResult() {
            return this.zzajO;
        }
    }

    static abstract class zzb<T extends Result> extends zzbay<T, zzapu> {
        public zzb(GoogleApiClient googleApiClient) {
            super(zzaou.zzaiT, googleApiClient);
        }

        public final /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.setResult((Result) obj);
        }

        public abstract void zza(zzapp zzapp) throws RemoteException;
    }

    public static final class zzd extends zzapt<Status> {
        public zzd(zzbaz<Status> zzbaz) {
            super(zzbaz);
        }

        public final void zza(Status status) {
            this.zzajL.setResult(status);
        }
    }

    public static abstract class zzc<T extends Result> extends zzb<Status> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* Access modifiers changed, original: protected|final|synthetic */
        public final /* synthetic */ Result zzb(Status status) {
            return status;
        }
    }

    public static Intent zza(String str, Uri uri) {
        zzb(str, uri);
        if (zzk(uri)) {
            return new Intent("android.intent.action.VIEW", uri);
        }
        if (zzl(uri)) {
            return new Intent("android.intent.action.VIEW", zzj(uri));
        }
        String valueOf = String.valueOf(uri);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 70);
        stringBuilder.append("appIndexingUri is neither an HTTP(S) URL nor an \"android-app://\" URL: ");
        stringBuilder.append(valueOf);
        throw new RuntimeException(stringBuilder.toString());
    }

    private final PendingResult<Status> zza(GoogleApiClient googleApiClient, Action action, int i) {
        zzapl zza = zzapv.zza(action, System.currentTimeMillis(), googleApiClient.getContext().getPackageName(), i);
        return zza(googleApiClient, zza);
    }

    private static void zzb(String str, Uri uri) {
        String valueOf;
        StringBuilder stringBuilder;
        if (zzk(uri)) {
            if (uri.getHost().isEmpty()) {
                valueOf = String.valueOf(uri);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 98);
                stringBuilder.append("AppIndex: The web URL must have a host (follow the format http(s)://<host>/<path>). Provided URI: ");
                stringBuilder.append(valueOf);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        } else if (!zzl(uri)) {
            valueOf = String.valueOf(uri);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 176);
            stringBuilder.append("AppIndex: The URI scheme must either be 'http(s)' or 'android-app'. If the latter, it must follow the format 'android-app://<package_name>/<scheme>/<host_path>'. Provided URI: ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (str == null || str.equals(uri.getHost())) {
            List pathSegments = uri.getPathSegments();
            if (pathSegments.isEmpty() || ((String) pathSegments.get(0)).isEmpty()) {
                valueOf = String.valueOf(uri);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 128);
                stringBuilder.append("AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/<host_path>). Provided URI: ");
                stringBuilder.append(valueOf);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        } else {
            valueOf = String.valueOf(uri);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 150);
            stringBuilder.append("AppIndex: The android-app URI host must match the package name and follow the format android-app://<package_name>/<scheme>/<host_path>. Provided URI: ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    private static Uri zzj(Uri uri) {
        List pathSegments = uri.getPathSegments();
        String str = (String) pathSegments.get(0);
        Builder builder = new Builder();
        builder.scheme(str);
        if (pathSegments.size() > 1) {
            builder.authority((String) pathSegments.get(1));
            for (int i = 2; i < pathSegments.size(); i++) {
                builder.appendPath((String) pathSegments.get(i));
            }
        } else {
            String str2 = TAG;
            str = String.valueOf(uri);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 88);
            stringBuilder.append("The app URI must have the format: android-app://<package_name>/<scheme>/<path>. But got ");
            stringBuilder.append(str);
            Log.e(str2, stringBuilder.toString());
        }
        builder.encodedQuery(uri.getEncodedQuery());
        builder.encodedFragment(uri.getEncodedFragment());
        return builder.build();
    }

    private static boolean zzk(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    private static boolean zzl(Uri uri) {
        return "android-app".equals(uri.getScheme());
    }

    public final ActionResult action(GoogleApiClient googleApiClient, Action action) {
        return new zza(this, zza(googleApiClient, action, 1), action);
    }

    public final PendingResult<Status> end(GoogleApiClient googleApiClient, Action action) {
        return zza(googleApiClient, action, 2);
    }

    public final PendingResult<Status> start(GoogleApiClient googleApiClient, Action action) {
        return zza(googleApiClient, action, 1);
    }

    public final PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Intent intent, String str, Uri uri, List<AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        if (list != null) {
            for (AppIndexingLink appIndexingLink : list) {
                zzb(null, appIndexingLink.appIndexingUrl);
            }
        }
        return zza(googleApiClient, new zzapl(packageName, intent, str, uri, null, list, 1));
    }

    public final PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Uri uri, String str, Uri uri2, List<AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        zzb(packageName, uri);
        return view(googleApiClient, activity, zza(packageName, uri), str, uri2, (List) list);
    }

    public final PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Intent intent) {
        String packageName = googleApiClient.getContext().getPackageName();
        return zza(googleApiClient, new zzapm().zza(zzapl.zza(packageName, intent)).zzv(System.currentTimeMillis()).zzS(0).zzT(2).zzmm());
    }

    public final PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Uri uri) {
        return viewEnd(googleApiClient, activity, zza(googleApiClient.getContext().getPackageName(), uri));
    }

    public final PendingResult<Status> zza(GoogleApiClient googleApiClient, zzapl... zzaplArr) {
        return googleApiClient.zzd(new zzapx(this, googleApiClient, zzaplArr));
    }
}
