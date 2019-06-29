package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;

@zzzn
public final class zznq extends zzpc implements zzob {
    private Bundle mExtras;
    private Object mLock = new Object();
    private String zzHB;
    private List<zznp> zzHC;
    private String zzHD;
    private zzos zzHE;
    private String zzHF;
    private double zzHG;
    private String zzHH;
    private String zzHI;
    @Nullable
    private zznn zzHJ;
    @Nullable
    private zzks zzHK;
    @Nullable
    private View zzHL;
    private zzny zzHM;

    public zznq(String str, List list, String str2, zzos zzos, String str3, double d, String str4, String str5, @Nullable zznn zznn, Bundle bundle, zzks zzks, View view) {
        this.zzHB = str;
        this.zzHC = list;
        this.zzHD = str2;
        this.zzHE = zzos;
        this.zzHF = str3;
        this.zzHG = d;
        this.zzHH = str4;
        this.zzHI = str5;
        this.zzHJ = zznn;
        this.mExtras = bundle;
        this.zzHK = zzks;
        this.zzHL = view;
    }

    public final void destroy() {
        zzagz.zzZr.post(new zznr(this));
        this.zzHB = null;
        this.zzHC = null;
        this.zzHD = null;
        this.zzHE = null;
        this.zzHF = null;
        this.zzHG = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzHH = null;
        this.zzHI = null;
        this.zzHJ = null;
        this.mExtras = null;
        this.mLock = null;
        this.zzHK = null;
        this.zzHL = null;
    }

    public final String getBody() {
        return this.zzHD;
    }

    public final String getCallToAction() {
        return this.zzHF;
    }

    public final String getCustomTemplateId() {
        return "";
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public final String getHeadline() {
        return this.zzHB;
    }

    public final List getImages() {
        return this.zzHC;
    }

    public final String getPrice() {
        return this.zzHI;
    }

    public final double getStarRating() {
        return this.zzHG;
    }

    public final String getStore() {
        return this.zzHH;
    }

    public final zzks getVideoController() {
        return this.zzHK;
    }

    public final void zzb(zzny zzny) {
        synchronized (this.mLock) {
            this.zzHM = zzny;
        }
    }

    public final void zzc(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to perform click before app install ad initialized.");
                return;
            }
            this.zzHM.zzc(bundle);
        }
    }

    public final boolean zzd(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to record impression before app install ad initialized.");
                return false;
            }
            boolean zzd = this.zzHM.zzd(bundle);
            return zzd;
        }
    }

    public final void zze(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to perform click before app install ad initialized.");
                return;
            }
            this.zzHM.zze(bundle);
        }
    }

    public final zzos zzeh() {
        return this.zzHE;
    }

    public final IObjectWrapper zzei() {
        return zzn.zzw(this.zzHM);
    }

    public final String zzej() {
        return "2";
    }

    public final zznn zzek() {
        return this.zzHJ;
    }

    public final View zzel() {
        return this.zzHL;
    }
}
