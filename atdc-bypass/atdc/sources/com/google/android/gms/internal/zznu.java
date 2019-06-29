package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.util.Arrays;
import java.util.List;

@zzzn
public final class zznu extends zzpk implements zzoa {
    private final Object mLock = new Object();
    private final zznn zzHJ;
    @Nullable
    private zzks zzHK;
    @Nullable
    private View zzHL;
    private zzny zzHM;
    private final String zzHR;
    private final SimpleArrayMap<String, zznp> zzHS;
    private final SimpleArrayMap<String, String> zzHT;

    public zznu(String str, SimpleArrayMap<String, zznp> simpleArrayMap, SimpleArrayMap<String, String> simpleArrayMap2, zznn zznn, zzks zzks, View view) {
        this.zzHR = str;
        this.zzHS = simpleArrayMap;
        this.zzHT = simpleArrayMap2;
        this.zzHJ = zznn;
        this.zzHK = zzks;
        this.zzHL = view;
    }

    public final void destroy() {
        this.zzHM = null;
        this.zzHK = null;
        this.zzHL = null;
    }

    public final List<String> getAvailableAssetNames() {
        String[] strArr = new String[(this.zzHS.size() + this.zzHT.size())];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.zzHS.size()) {
            strArr[i3] = (String) this.zzHS.keyAt(i2);
            i2++;
            i3++;
        }
        while (i < this.zzHT.size()) {
            strArr[i3] = (String) this.zzHT.keyAt(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    public final String getCustomTemplateId() {
        return this.zzHR;
    }

    public final zzks getVideoController() {
        return this.zzHK;
    }

    public final void performClick(String str) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to call performClick before ad initialized.");
                return;
            }
            this.zzHM.zza(null, str, null, null, null);
        }
    }

    public final void recordImpression() {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to perform recordImpression before ad initialized.");
                return;
            }
            this.zzHM.zza(null, null);
        }
    }

    public final String zzP(String str) {
        return (String) this.zzHT.get(str);
    }

    public final zzos zzQ(String str) {
        return (zzos) this.zzHS.get(str);
    }

    public final void zzb(zzny zzny) {
        synchronized (this.mLock) {
            this.zzHM = zzny;
        }
    }

    public final IObjectWrapper zzei() {
        return zzn.zzw(this.zzHM);
    }

    public final String zzej() {
        return "3";
    }

    public final zznn zzek() {
        return this.zzHJ;
    }

    public final View zzel() {
        return this.zzHL;
    }

    public final IObjectWrapper zzen() {
        return zzn.zzw(this.zzHM.getContext().getApplicationContext());
    }

    public final boolean zzj(IObjectWrapper iObjectWrapper) {
        if (this.zzHM == null) {
            zzajc.e("Attempt to call renderVideoInMediaView before ad initialized.");
            return false;
        } else if (this.zzHL == null) {
            return false;
        } else {
            View view = (FrameLayout) zzn.zzE(iObjectWrapper);
            this.zzHM.zza(view, new zznv(this));
            return true;
        }
    }
}
