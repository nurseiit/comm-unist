package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import java.util.List;

@zzzn
public final class zznl implements aeq {
    @Nullable
    private CustomTabsSession zzHi;
    @Nullable
    private CustomTabsClient zzHj;
    @Nullable
    private CustomTabsServiceConnection zzHk;
    @Nullable
    private zznm zzHl;

    public static boolean zzi(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (!(queryIntentActivities == null || resolveActivity == null)) {
            for (int i = 0; i < queryIntentActivities.size(); i++) {
                if (resolveActivity.activityInfo.name.equals(((ResolveInfo) queryIntentActivities.get(i)).activityInfo.name)) {
                    return resolveActivity.activityInfo.packageName.equals(aeo.zzbU(context));
                }
            }
        }
        return false;
    }

    public final boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        if (this.zzHj == null) {
            return false;
        }
        CustomTabsSession zzdY = zzdY();
        return zzdY == null ? false : zzdY.mayLaunchUrl(uri, null, null);
    }

    public final void zza(CustomTabsClient customTabsClient) {
        this.zzHj = customTabsClient;
        this.zzHj.warmup(0);
        if (this.zzHl != null) {
            this.zzHl.zzea();
        }
    }

    public final void zza(zznm zznm) {
        this.zzHl = zznm;
    }

    public final void zzc(Activity activity) {
        if (this.zzHk != null) {
            activity.unbindService(this.zzHk);
            this.zzHj = null;
            this.zzHi = null;
            this.zzHk = null;
        }
    }

    public final void zzd(Activity activity) {
        if (this.zzHj == null) {
            String zzbU = aeo.zzbU(activity);
            if (zzbU != null) {
                this.zzHk = new aep(this);
                CustomTabsClient.bindCustomTabsService(activity, zzbU, this.zzHk);
            }
        }
    }

    @Nullable
    public final CustomTabsSession zzdY() {
        if (this.zzHj == null) {
            this.zzHi = null;
        } else if (this.zzHi == null) {
            this.zzHi = this.zzHj.newSession(null);
        }
        return this.zzHi;
    }

    public final void zzdZ() {
        this.zzHj = null;
        this.zzHi = null;
        if (this.zzHl != null) {
            this.zzHl.zzeb();
        }
    }
}
