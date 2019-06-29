package com.google.firebase.dynamiclinks;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.util.zzi;
import com.google.android.gms.internal.zi;

public class PendingDynamicLinkData {
    private final zi zzcjR;

    public PendingDynamicLinkData(zi ziVar) {
        if (ziVar == null) {
            this.zzcjR = null;
            return;
        }
        if (ziVar.getClickTimestamp() == 0) {
            ziVar.zzaA(zzi.zzrY().currentTimeMillis());
        }
        this.zzcjR = ziVar;
    }

    protected PendingDynamicLinkData(String str, int i, long j, Uri uri) {
        this.zzcjR = new zi(null, str, i, j, null, uri);
    }

    private final Uri zzJK() {
        return this.zzcjR == null ? null : this.zzcjR.zzJK();
    }

    public long getClickTimestamp() {
        return this.zzcjR == null ? 0 : this.zzcjR.getClickTimestamp();
    }

    public Uri getLink() {
        if (this.zzcjR == null) {
            return null;
        }
        String zzJL = this.zzcjR.zzJL();
        return zzJL != null ? Uri.parse(zzJL) : null;
    }

    public int getMinimumAppVersion() {
        return this.zzcjR == null ? 0 : this.zzcjR.zzJM();
    }

    public Intent getUpdateAppIntent(Context context) {
        if (getMinimumAppVersion() == 0) {
            return null;
        }
        try {
            if (context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0).versionCode < getMinimumAppVersion() && zzJK() != null) {
                return new Intent("android.intent.action.VIEW").setData(zzJK()).setPackage("com.android.vending");
            }
        } catch (NameNotFoundException unused) {
        }
        return null;
    }

    public final Bundle zzJJ() {
        return this.zzcjR == null ? new Bundle() : this.zzcjR.zzJN();
    }
}
