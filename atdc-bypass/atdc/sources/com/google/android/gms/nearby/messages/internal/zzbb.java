package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.nearby.messages.MessageFilter;
import com.google.android.gms.nearby.messages.Strategy;

public final class zzbb implements Creator<SubscribeRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        Strategy strategy = iBinder;
        IBinder iBinder2 = strategy;
        MessageFilter messageFilter = iBinder2;
        PendingIntent pendingIntent = messageFilter;
        String str = pendingIntent;
        String str2 = str;
        byte[] bArr = str2;
        IBinder iBinder3 = bArr;
        ClientAppContext clientAppContext = iBinder3;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 2:
                    iBinder = zzb.zzr(parcel2, readInt);
                    break;
                case 3:
                    strategy = (Strategy) zzb.zza(parcel2, readInt, Strategy.CREATOR);
                    break;
                case 4:
                    iBinder2 = zzb.zzr(parcel2, readInt);
                    break;
                case 5:
                    messageFilter = (MessageFilter) zzb.zza(parcel2, readInt, MessageFilter.CREATOR);
                    break;
                case 6:
                    pendingIntent = (PendingIntent) zzb.zza(parcel2, readInt, PendingIntent.CREATOR);
                    break;
                case 7:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    bArr = zzb.zzt(parcel2, readInt);
                    break;
                case 11:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 12:
                    iBinder3 = zzb.zzr(parcel2, readInt);
                    break;
                case 13:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 14:
                    clientAppContext = (ClientAppContext) zzb.zza(parcel2, readInt, ClientAppContext.CREATOR);
                    break;
                case 15:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 16:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new SubscribeRequest(i, iBinder, strategy, iBinder2, messageFilter, pendingIntent, i2, str, str2, bArr, z, iBinder3, z2, clientAppContext, z3, i3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SubscribeRequest[i];
    }
}
