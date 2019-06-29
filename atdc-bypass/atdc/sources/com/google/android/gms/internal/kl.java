package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.PhoneAuthCredential;

final class kl extends kb {
    final /* synthetic */ kj zzbXd;

    private kl(kj kjVar) {
        this.zzbXd = kjVar;
    }

    private final void zza(kr krVar) {
        this.zzbXd.zzbWS.execute(new kq(this, krVar));
    }

    public final void onFailure(@NonNull Status status) throws RemoteException {
        if (this.zzbXd.zzbWJ == 8) {
            this.zzbXd.zzbMh = true;
            this.zzbXd.zzbWZ = false;
            zza(new kp(this, status));
            return;
        }
        this.zzbXd.zzM(status);
        this.zzbXd.zzL(status);
    }

    public final void onVerificationCompleted(@NonNull PhoneAuthCredential phoneAuthCredential) throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 8;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWY = phoneAuthCredential;
        this.zzbXd.zzbMh = true;
        this.zzbXd.zzbWZ = true;
        zza(new kn(this, phoneAuthCredential));
    }

    public final void zzEN() throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 5;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzEQ();
    }

    public final void zzEO() throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 6;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzEQ();
    }

    public final void zza(@NonNull kt ktVar) throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 3;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWV = ktVar;
        this.zzbXd.zzEQ();
    }

    public final void zza(@NonNull kx kxVar, @NonNull kv kvVar) throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 2;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Unexpected response type: ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWT = kxVar;
        this.zzbXd.zzbWU = kvVar;
        this.zzbXd.zzEQ();
    }

    public final void zza(@Nullable ld ldVar) throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 4;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWW = ldVar;
        this.zzbXd.zzEQ();
    }

    public final void zzb(@NonNull kx kxVar) throws RemoteException {
        boolean z = true;
        if (this.zzbXd.zzbWJ != 1) {
            z = false;
        }
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Unexpected response type: ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWT = kxVar;
        this.zzbXd.zzEQ();
    }

    public final void zzgq(@NonNull String str) throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 7;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWX = str;
        this.zzbXd.zzEQ();
    }

    public final void zzgr(@NonNull String str) throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 8;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWn = str;
        zza(new km(this, str));
    }

    public final void zzgs(@NonNull String str) throws RemoteException {
        boolean z = this.zzbXd.zzbWJ == 8;
        int i = this.zzbXd.zzbWJ;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Unexpected response type ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        this.zzbXd.zzbWn = str;
        this.zzbXd.zzbMh = true;
        this.zzbXd.zzbWZ = true;
        zza(new ko(this, str));
    }
}
