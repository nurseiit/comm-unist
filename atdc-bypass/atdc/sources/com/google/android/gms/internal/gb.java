package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.fragment.WalletFragmentInitParams;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public abstract class gb extends zzee implements ga {
    public static ga zzal(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate");
        return queryLocalInterface instanceof ga ? (ga) queryLocalInterface : new gc(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza(zza.zzM(parcel.readStrongBinder()), (WalletFragmentOptions) zzef.zza(parcel, WalletFragmentOptions.CREATOR), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 2:
                onCreate((Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 3:
                IInterface onCreateView = onCreateView(zza.zzM(parcel.readStrongBinder()), zza.zzM(parcel.readStrongBinder()), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzef.zza(parcel2, onCreateView);
                return true;
            case 4:
                onStart();
                break;
            case 5:
                onResume();
                break;
            case 6:
                onPause();
                break;
            case 7:
                onStop();
                break;
            case 8:
                Bundle bundle = (Bundle) zzef.zza(parcel, Bundle.CREATOR);
                onSaveInstanceState(bundle);
                parcel2.writeNoException();
                zzef.zzb(parcel2, bundle);
                return true;
            case 9:
                onActivityResult(parcel.readInt(), parcel.readInt(), (Intent) zzef.zza(parcel, Intent.CREATOR));
                break;
            case 10:
                initialize((WalletFragmentInitParams) zzef.zza(parcel, WalletFragmentInitParams.CREATOR));
                break;
            case 11:
                updateMaskedWalletRequest((MaskedWalletRequest) zzef.zza(parcel, MaskedWalletRequest.CREATOR));
                break;
            case 12:
                setEnabled(zzef.zza(parcel));
                break;
            case 13:
                i = getState();
                parcel2.writeNoException();
                parcel2.writeInt(i);
                return true;
            case 14:
                updateMaskedWallet((MaskedWallet) zzef.zza(parcel, MaskedWallet.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
