package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzasr;
import com.google.android.gms.internal.zzeh;
import java.io.IOException;

final class zze implements zzi<TokenData> {
    private /* synthetic */ Bundle val$options;
    private /* synthetic */ Account zzako;
    private /* synthetic */ String zzakp;

    zze(Account account, String str, Bundle bundle) {
        this.zzako = account;
        this.zzakp = str;
        this.val$options = bundle;
    }

    public final /* synthetic */ Object zzy(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle bundle = (Bundle) zzd.zzl(zzeh.zza(iBinder).zza(this.zzako, this.zzakp, this.val$options));
        TokenData zzd = TokenData.zzd(bundle, "tokenDetails");
        if (zzd != null) {
            return zzd;
        }
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        zzasr zzbW = zzasr.zzbW(string);
        int i = 1;
        Object obj = (zzasr.BAD_AUTHENTICATION.equals(zzbW) || zzasr.CAPTCHA.equals(zzbW) || zzasr.NEED_PERMISSION.equals(zzbW) || zzasr.NEED_REMOTE_CONSENT.equals(zzbW) || zzasr.NEEDS_BROWSER.equals(zzbW) || zzasr.USER_CANCEL.equals(zzbW) || zzasr.DEVICE_MANAGEMENT_REQUIRED.equals(zzbW) || zzasr.DM_INTERNAL_ERROR.equals(zzbW) || zzasr.DM_SYNC_DISABLED.equals(zzbW) || zzasr.DM_ADMIN_BLOCKED.equals(zzbW) || zzasr.DM_ADMIN_PENDING_APPROVAL.equals(zzbW) || zzasr.DM_STALE_SYNC_REQUIRED.equals(zzbW) || zzasr.DM_DEACTIVATED.equals(zzbW) || zzasr.DM_REQUIRED.equals(zzbW) || zzasr.THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(zzbW) || zzasr.DM_SCREENLOCK_REQUIRED.equals(zzbW)) ? 1 : null;
        if (obj != null) {
            Object[] objArr = new Object[1];
            String valueOf = String.valueOf(zzbW);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 31);
            stringBuilder.append("isUserRecoverableError status: ");
            stringBuilder.append(valueOf);
            objArr[0] = stringBuilder.toString();
            zzd.zzakn.zzf("GoogleAuthUtil", objArr);
            throw new UserRecoverableAuthException(string, intent);
        }
        if (!(zzasr.NETWORK_ERROR.equals(zzbW) || zzasr.SERVICE_UNAVAILABLE.equals(zzbW))) {
            i = 0;
        }
        if (i != 0) {
            throw new IOException(string);
        }
        throw new GoogleAuthException(string);
    }
}
