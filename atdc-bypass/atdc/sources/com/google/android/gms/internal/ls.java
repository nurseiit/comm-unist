package com.google.android.gms.internal;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuthProvider;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.UserInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ls extends FirebaseUser {
    private kx zzbXH;
    private lq zzbXI;
    private String zzbXJ;
    private String zzbXK = "com.google.firebase.auth.internal.DefaultFirebaseUser";
    private List<lq> zzbXL;
    private List<String> zzbXM;
    private Map<String, lq> zzbXN;
    private String zzbXO = "2";
    private boolean zzbXP;

    public ls(@NonNull FirebaseApp firebaseApp, @NonNull List<? extends UserInfo> list) {
        zzbo.zzu(firebaseApp);
        this.zzbXJ = firebaseApp.getName();
        zzP(list);
    }

    @Nullable
    public String getDisplayName() {
        return this.zzbXI.getDisplayName();
    }

    @Nullable
    public String getEmail() {
        return this.zzbXI.getEmail();
    }

    @Nullable
    public String getPhoneNumber() {
        return this.zzbXI.getPhoneNumber();
    }

    @Nullable
    public Uri getPhotoUrl() {
        return this.zzbXI.getPhotoUrl();
    }

    @NonNull
    public List<? extends UserInfo> getProviderData() {
        return this.zzbXL;
    }

    @NonNull
    public String getProviderId() {
        return this.zzbXI.getProviderId();
    }

    @Nullable
    public final List<String> getProviders() {
        return this.zzbXM;
    }

    @NonNull
    public String getUid() {
        return this.zzbXI.getUid();
    }

    public boolean isAnonymous() {
        return this.zzbXP;
    }

    public boolean isEmailVerified() {
        return this.zzbXI.isEmailVerified();
    }

    @NonNull
    public final FirebaseApp zzEF() {
        return FirebaseApp.getInstance(this.zzbXJ);
    }

    @NonNull
    public final kx zzEG() {
        return this.zzbXH;
    }

    @NonNull
    public final String zzEH() {
        return this.zzbXH.zzmC();
    }

    @NonNull
    public final String zzEI() {
        return this.zzbXH.getAccessToken();
    }

    public final List<lq> zzEY() {
        return this.zzbXL;
    }

    @NonNull
    public final FirebaseUser zzP(@NonNull List<? extends UserInfo> list) {
        zzbo.zzu(list);
        this.zzbXL = new ArrayList(list.size());
        this.zzbXM = new ArrayList(list.size());
        this.zzbXN = new ArrayMap();
        for (int i = 0; i < list.size(); i++) {
            UserInfo userInfo = (UserInfo) list.get(i);
            if (userInfo.getProviderId().equals(FirebaseAuthProvider.PROVIDER_ID)) {
                this.zzbXI = (lq) userInfo;
            } else {
                this.zzbXM.add(userInfo.getProviderId());
            }
            lq lqVar = (lq) userInfo;
            this.zzbXL.add(lqVar);
            this.zzbXN.put(userInfo.getProviderId(), lqVar);
        }
        if (this.zzbXI == null) {
            this.zzbXI = (lq) this.zzbXL.get(0);
        }
        return this;
    }

    public final void zza(@NonNull kx kxVar) {
        this.zzbXH = (kx) zzbo.zzu(kxVar);
    }

    public final /* synthetic */ FirebaseUser zzax(boolean z) {
        this.zzbXP = z;
        return this;
    }

    public final ls zzay(boolean z) {
        this.zzbXP = z;
        return this;
    }

    public final ls zzgw(@NonNull String str) {
        this.zzbXO = str;
        return this;
    }
}
