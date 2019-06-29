package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.nearby.messages.MessageFilter;
import com.google.android.gms.nearby.messages.Strategy;

public final class SubscribeRequest extends zza implements ReflectedParcelable {
    public static final Creator<SubscribeRequest> CREATOR = new zzbb();
    private PendingIntent zzaLr;
    private int zzaku;
    private boolean zzbyA;
    private int zzbyB;
    @Deprecated
    private String zzbyW;
    @Deprecated
    private String zzbye;
    @Deprecated
    private boolean zzbyf;
    private zzp zzbza;
    @Deprecated
    private ClientAppContext zzbzb;
    private Strategy zzbzq;
    @Deprecated
    private boolean zzbzr;
    private zzm zzbzv;
    private MessageFilter zzbzw;
    @Deprecated
    private int zzbzx;
    private byte[] zzbzy;
    private zzaa zzbzz;

    public SubscribeRequest(int i, IBinder iBinder, Strategy strategy, IBinder iBinder2, MessageFilter messageFilter, PendingIntent pendingIntent, int i2, String str, String str2, byte[] bArr, boolean z, IBinder iBinder3, boolean z2, ClientAppContext clientAppContext, boolean z3, int i3) {
        zzm zzm;
        zzp zzp;
        IInterface queryLocalInterface;
        IBinder iBinder4 = iBinder;
        IBinder iBinder5 = iBinder2;
        String str3 = str;
        String str4 = str2;
        IBinder iBinder6 = iBinder3;
        boolean z4 = z2;
        this.zzaku = i;
        zzaa zzaa = null;
        if (iBinder4 == null) {
            zzm = null;
        } else {
            IInterface queryLocalInterface2 = iBinder4.queryLocalInterface("com.google.android.gms.nearby.messages.internal.IMessageListener");
            zzm = queryLocalInterface2 instanceof zzm ? (zzm) queryLocalInterface2 : new zzo(iBinder4);
        }
        this.zzbzv = zzm;
        this.zzbzq = strategy;
        if (iBinder5 == null) {
            zzp = null;
        } else {
            queryLocalInterface = iBinder5.queryLocalInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback");
            zzp = queryLocalInterface instanceof zzp ? (zzp) queryLocalInterface : new zzr(iBinder5);
        }
        this.zzbza = zzp;
        this.zzbzw = messageFilter;
        this.zzaLr = pendingIntent;
        this.zzbzx = i2;
        this.zzbye = str3;
        this.zzbyW = str4;
        this.zzbzy = bArr;
        this.zzbzr = z;
        if (!(iBinder6 == null || iBinder6 == null)) {
            queryLocalInterface = iBinder6.queryLocalInterface("com.google.android.gms.nearby.messages.internal.ISubscribeCallback");
            zzaa = queryLocalInterface instanceof zzaa ? (zzaa) queryLocalInterface : new zzac(iBinder6);
        }
        this.zzbzz = zzaa;
        this.zzbyf = z4;
        this.zzbzb = ClientAppContext.zza(clientAppContext, str4, str3, z4);
        this.zzbyA = z3;
        this.zzbyB = i3;
    }

    public SubscribeRequest(IBinder iBinder, Strategy strategy, IBinder iBinder2, MessageFilter messageFilter, PendingIntent pendingIntent, byte[] bArr, IBinder iBinder3, boolean z) {
        this(iBinder, strategy, iBinder2, messageFilter, null, null, iBinder3, z, 0);
    }

    public SubscribeRequest(IBinder iBinder, Strategy strategy, IBinder iBinder2, MessageFilter messageFilter, PendingIntent pendingIntent, byte[] bArr, IBinder iBinder3, boolean z, int i) {
        this(3, iBinder, strategy, iBinder2, messageFilter, pendingIntent, 0, null, null, bArr, false, iBinder3, false, null, z, i);
    }

    public final String toString() {
        Object obj;
        String valueOf = String.valueOf(this.zzbzv);
        String valueOf2 = String.valueOf(this.zzbzq);
        String valueOf3 = String.valueOf(this.zzbza);
        String valueOf4 = String.valueOf(this.zzbzw);
        String valueOf5 = String.valueOf(this.zzaLr);
        if (this.zzbzy == null) {
            obj = null;
        } else {
            int length = this.zzbzy.length;
            StringBuilder stringBuilder = new StringBuilder(19);
            stringBuilder.append("<");
            stringBuilder.append(length);
            stringBuilder.append(" bytes>");
            obj = stringBuilder.toString();
        }
        String valueOf6 = String.valueOf(this.zzbzz);
        boolean z = this.zzbyf;
        String valueOf7 = String.valueOf(this.zzbzb);
        boolean z2 = this.zzbyA;
        String str = this.zzbye;
        String str2 = this.zzbyW;
        boolean z3 = this.zzbzr;
        StringBuilder stringBuilder2 = new StringBuilder((((((((((String.valueOf(valueOf).length() + CallbackHandler.MSG_ROUTE_UNSELECTED) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length()) + String.valueOf(valueOf5).length()) + String.valueOf(obj).length()) + String.valueOf(valueOf6).length()) + String.valueOf(valueOf7).length()) + String.valueOf(str).length()) + String.valueOf(str2).length());
        stringBuilder2.append("SubscribeRequest{messageListener=");
        stringBuilder2.append(valueOf);
        stringBuilder2.append(", strategy=");
        stringBuilder2.append(valueOf2);
        stringBuilder2.append(", callback=");
        stringBuilder2.append(valueOf3);
        stringBuilder2.append(", filter=");
        stringBuilder2.append(valueOf4);
        stringBuilder2.append(", pendingIntent=");
        stringBuilder2.append(valueOf5);
        stringBuilder2.append(", hint=");
        stringBuilder2.append(obj);
        stringBuilder2.append(", subscribeCallback=");
        stringBuilder2.append(valueOf6);
        stringBuilder2.append(", useRealClientApiKey=");
        stringBuilder2.append(z);
        stringBuilder2.append(", clientAppContext=");
        stringBuilder2.append(valueOf7);
        stringBuilder2.append(", isDiscardPendingIntent=");
        stringBuilder2.append(z2);
        stringBuilder2.append(", zeroPartyPackageName=");
        stringBuilder2.append(str);
        stringBuilder2.append(", realClientPackageName=");
        stringBuilder2.append(str2);
        stringBuilder2.append(", isIgnoreNearbyPermission=");
        stringBuilder2.append(z3);
        stringBuilder2.append("}");
        return stringBuilder2.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        IBinder iBinder = null;
        zzd.zza(parcel, 2, this.zzbzv == null ? null : this.zzbzv.asBinder(), false);
        zzd.zza(parcel, 3, this.zzbzq, i, false);
        zzd.zza(parcel, 4, this.zzbza == null ? null : this.zzbza.asBinder(), false);
        zzd.zza(parcel, 5, this.zzbzw, i, false);
        zzd.zza(parcel, 6, this.zzaLr, i, false);
        zzd.zzc(parcel, 7, this.zzbzx);
        zzd.zza(parcel, 8, this.zzbye, false);
        zzd.zza(parcel, 9, this.zzbyW, false);
        zzd.zza(parcel, 10, this.zzbzy, false);
        zzd.zza(parcel, 11, this.zzbzr);
        if (this.zzbzz != null) {
            iBinder = this.zzbzz.asBinder();
        }
        zzd.zza(parcel, 12, iBinder, false);
        zzd.zza(parcel, 13, this.zzbyf);
        zzd.zza(parcel, 14, this.zzbzb, i, false);
        zzd.zza(parcel, 15, this.zzbyA);
        zzd.zzc(parcel, 16, this.zzbyB);
        zzd.zzI(parcel, zze);
    }
}
