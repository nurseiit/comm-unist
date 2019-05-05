package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AdditionalUserInfo;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseUser;
import java.util.List;

public final class lp implements AuthResult {
    private ls zzbXF;
    private lo zzbXG = null;

    public lp(@NonNull ls lsVar) {
        this.zzbXF = (ls) zzbo.zzu(lsVar);
        List zzEY = this.zzbXF.zzEY();
        for (int i = 0; i < zzEY.size(); i++) {
            if (!TextUtils.isEmpty(((lq) zzEY.get(i)).getRawUserInfo())) {
                this.zzbXG = new lo(((lq) zzEY.get(i)).getProviderId(), ((lq) zzEY.get(i)).getRawUserInfo());
            }
        }
    }

    @Nullable
    public final AdditionalUserInfo getAdditionalUserInfo() {
        return this.zzbXG;
    }

    @Nullable
    public final FirebaseUser getUser() {
        return this.zzbXF;
    }
}
