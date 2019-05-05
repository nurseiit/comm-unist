package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.HashMap;

public final class zzall extends zzj<zzall> {
    private String mName;
    private String zzHg;
    private String zzIi;
    private String zzaeK;
    private String zzaeL;
    private String zzaeM;
    private String zzaeN;
    private String zzaeO;
    private String zzaeP;
    private String zzaeQ;

    public final String getContent() {
        return this.zzHg;
    }

    public final String getId() {
        return this.zzIi;
    }

    public final String getName() {
        return this.mName;
    }

    public final String getSource() {
        return this.zzaeK;
    }

    public final void setName(String str) {
        this.mName = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.mName);
        hashMap.put(Param.SOURCE, this.zzaeK);
        hashMap.put(Param.MEDIUM, this.zzaeL);
        hashMap.put("keyword", this.zzaeM);
        hashMap.put("content", this.zzHg);
        hashMap.put("id", this.zzIi);
        hashMap.put("adNetworkId", this.zzaeN);
        hashMap.put("gclid", this.zzaeO);
        hashMap.put("dclid", this.zzaeP);
        hashMap.put(Param.ACLID, this.zzaeQ);
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzall zzall = (zzall) zzj;
        if (!TextUtils.isEmpty(this.mName)) {
            zzall.mName = this.mName;
        }
        if (!TextUtils.isEmpty(this.zzaeK)) {
            zzall.zzaeK = this.zzaeK;
        }
        if (!TextUtils.isEmpty(this.zzaeL)) {
            zzall.zzaeL = this.zzaeL;
        }
        if (!TextUtils.isEmpty(this.zzaeM)) {
            zzall.zzaeM = this.zzaeM;
        }
        if (!TextUtils.isEmpty(this.zzHg)) {
            zzall.zzHg = this.zzHg;
        }
        if (!TextUtils.isEmpty(this.zzIi)) {
            zzall.zzIi = this.zzIi;
        }
        if (!TextUtils.isEmpty(this.zzaeN)) {
            zzall.zzaeN = this.zzaeN;
        }
        if (!TextUtils.isEmpty(this.zzaeO)) {
            zzall.zzaeO = this.zzaeO;
        }
        if (!TextUtils.isEmpty(this.zzaeP)) {
            zzall.zzaeP = this.zzaeP;
        }
        if (!TextUtils.isEmpty(this.zzaeQ)) {
            zzall.zzaeQ = this.zzaeQ;
        }
    }

    public final void zzba(String str) {
        this.zzaeK = str;
    }

    public final void zzbb(String str) {
        this.zzaeL = str;
    }

    public final void zzbc(String str) {
        this.zzaeM = str;
    }

    public final void zzbd(String str) {
        this.zzHg = str;
    }

    public final void zzbe(String str) {
        this.zzIi = str;
    }

    public final void zzbf(String str) {
        this.zzaeN = str;
    }

    public final void zzbg(String str) {
        this.zzaeO = str;
    }

    public final void zzbh(String str) {
        this.zzaeP = str;
    }

    public final void zzbi(String str) {
        this.zzaeQ = str;
    }

    public final String zzjJ() {
        return this.zzaeL;
    }

    public final String zzjK() {
        return this.zzaeM;
    }

    public final String zzjL() {
        return this.zzaeN;
    }

    public final String zzjM() {
        return this.zzaeO;
    }

    public final String zzjN() {
        return this.zzaeP;
    }

    public final String zzjO() {
        return this.zzaeQ;
    }
}
