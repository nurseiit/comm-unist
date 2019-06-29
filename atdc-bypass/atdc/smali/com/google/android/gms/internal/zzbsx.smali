.class public abstract Lcom/google/android/gms/internal/zzbsx;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/internal/zzbsw;


# direct methods
.method public static zzL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbsw;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbsw;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbsw;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbsy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbsy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzbsx;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbtn;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v1, :cond_2

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_0

    :cond_2
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(ILcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbtb;

    if-eqz p4, :cond_4

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_1

    :cond_4
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zzc(Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v1, :cond_6

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_2

    :cond_6
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v1, :cond_8

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_3

    :cond_8
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(ZLcom/google/android/gms/internal/zzbtb;)V

    goto :goto_6

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    const-string p4, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/internal/zzbsz;

    if-eqz v2, :cond_a

    check-cast p4, Lcom/google/android/gms/internal/zzbsz;

    goto :goto_4

    :cond_a
    new-instance p4, Lcom/google/android/gms/internal/zzbta;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbta;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbsz;)V

    goto :goto_6

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    const-string p2, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsc;

    if-eqz p4, :cond_c

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsc;

    goto :goto_5

    :cond_c
    new-instance p4, Lcom/google/android/gms/internal/zzbsd;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsd;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zzc(Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsx;->zztw()V

    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v3, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v3, :cond_e

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_7

    :cond_e
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsq;)V

    goto :goto_6

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_f

    goto :goto_8

    :cond_f
    const-string p4, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/internal/zzbsi;

    if-eqz v2, :cond_10

    check-cast p4, Lcom/google/android/gms/internal/zzbsi;

    goto :goto_8

    :cond_10
    new-instance p4, Lcom/google/android/gms/internal/zzbsj;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsj;-><init>(Landroid/os/IBinder;)V

    :goto_8
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsi;)V

    goto :goto_6

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/zzbsa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbsa;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_9

    :cond_11
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v1, :cond_12

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_9

    :cond_12
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_9
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsa;Lcom/google/android/gms/internal/zzbsq;)V

    goto :goto_6

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_a

    :cond_13
    const-string p2, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsu;

    if-eqz p4, :cond_14

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsu;

    goto :goto_a

    :cond_14
    new-instance p4, Lcom/google/android/gms/internal/zzbsv;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsv;-><init>(Landroid/os/IBinder;)V

    :goto_a
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsu;)V

    goto/16 :goto_6

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_15

    goto :goto_b

    :cond_15
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v1, :cond_16

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_b

    :cond_16
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_b
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_17

    goto :goto_c

    :cond_17
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v1, :cond_18

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_c

    :cond_18
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_c
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_19

    :goto_d
    move-object v6, p4

    goto :goto_e

    :cond_19
    const-string p2, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsq;

    if-eqz p4, :cond_1a

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_d

    :cond_1a
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :goto_e
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_f

    :cond_1b
    const-string p2, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsm;

    if-eqz p4, :cond_1c

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsm;

    goto :goto_f

    :cond_1c
    new-instance p4, Lcom/google/android/gms/internal/zzbsn;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsn;-><init>(Landroid/os/IBinder;)V

    :goto_f
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsm;)V

    goto/16 :goto_6

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_10

    :cond_1d
    const-string p2, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbtb;

    if-eqz p4, :cond_1e

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_10

    :cond_1e
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_10
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_11

    :cond_1f
    const-string p2, "com.google.android.gms.drive.realtime.internal.IErrorCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbso;

    if-eqz p4, :cond_20

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbso;

    goto :goto_11

    :cond_20
    new-instance p4, Lcom/google/android/gms/internal/zzbsp;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsp;-><init>(Landroid/os/IBinder;)V

    :goto_11
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbso;)V

    goto/16 :goto_6

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_21

    goto :goto_12

    :cond_21
    const-string p2, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsc;

    if-eqz p4, :cond_22

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsc;

    goto :goto_12

    :cond_22
    new-instance p4, Lcom/google/android/gms/internal/zzbsd;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsd;-><init>(Landroid/os/IBinder;)V

    :goto_12
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Lcom/google/android/gms/internal/zzbsc;)V

    goto/16 :goto_6

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_23

    goto :goto_13

    :cond_23
    const-string p2, "com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbse;

    if-eqz p4, :cond_24

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbse;

    goto :goto_13

    :cond_24
    new-instance p4, Lcom/google/android/gms/internal/zzbsf;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsf;-><init>(Landroid/os/IBinder;)V

    :goto_13
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbse;)V

    goto/16 :goto_6

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_14

    :cond_25
    const-string p2, "com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsg;

    if-eqz p4, :cond_26

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsg;

    goto :goto_14

    :cond_26
    new-instance p4, Lcom/google/android/gms/internal/zzbsh;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsh;-><init>(Landroid/os/IBinder;)V

    :goto_14
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsg;)V

    goto/16 :goto_6

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_27

    goto :goto_15

    :cond_27
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v1, :cond_28

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_15

    :cond_28
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_15
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(ILcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_29

    goto :goto_16

    :cond_29
    const-string p2, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsu;

    if-eqz p4, :cond_2a

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsu;

    goto :goto_16

    :cond_2a
    new-instance p4, Lcom/google/android/gms/internal/zzbsv;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsv;-><init>(Landroid/os/IBinder;)V

    :goto_16
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Lcom/google/android/gms/internal/zzbsu;)V

    goto/16 :goto_6

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2b

    goto :goto_17

    :cond_2b
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v2, :cond_2c

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_17

    :cond_2c
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_17
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2d

    goto :goto_18

    :cond_2d
    const-string p4, "com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbss;

    if-eqz v1, :cond_2e

    check-cast p4, Lcom/google/android/gms/internal/zzbss;

    goto :goto_18

    :cond_2e
    new-instance p4, Lcom/google/android/gms/internal/zzbst;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbst;-><init>(Landroid/os/IBinder;)V

    :goto_18
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbss;)V

    goto/16 :goto_6

    :pswitch_19
    sget-object p1, Lcom/google/android/gms/internal/zzbtf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbtf;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2f

    goto :goto_19

    :cond_2f
    const-string p4, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsz;

    if-eqz v1, :cond_30

    check-cast p4, Lcom/google/android/gms/internal/zzbsz;

    goto :goto_19

    :cond_30
    new-instance p4, Lcom/google/android/gms/internal/zzbta;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbta;-><init>(Landroid/os/IBinder;)V

    :goto_19
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbtf;Lcom/google/android/gms/internal/zzbsz;)V

    goto/16 :goto_6

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_31

    goto :goto_1a

    :cond_31
    const-string p2, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsc;

    if-eqz p4, :cond_32

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsc;

    goto :goto_1a

    :cond_32
    new-instance p4, Lcom/google/android/gms/internal/zzbsd;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsd;-><init>(Landroid/os/IBinder;)V

    :goto_1a
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zze(Lcom/google/android/gms/internal/zzbsc;)V

    goto/16 :goto_6

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_33

    goto :goto_1b

    :cond_33
    const-string p2, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsc;

    if-eqz p4, :cond_34

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsc;

    goto :goto_1b

    :cond_34
    new-instance p4, Lcom/google/android/gms/internal/zzbsd;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsd;-><init>(Landroid/os/IBinder;)V

    :goto_1b
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zzd(Lcom/google/android/gms/internal/zzbsc;)V

    goto/16 :goto_6

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_35

    goto :goto_1c

    :cond_35
    const-string p2, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsq;

    if-eqz p4, :cond_36

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_1c

    :cond_36
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_1c
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Lcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_37

    goto :goto_1d

    :cond_37
    const-string p2, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsq;

    if-eqz p4, :cond_38

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_1d

    :cond_38
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_1d
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_39

    goto :goto_1e

    :cond_39
    const-string p4, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/internal/zzbsk;

    if-eqz v2, :cond_3a

    check-cast p4, Lcom/google/android/gms/internal/zzbsk;

    goto :goto_1e

    :cond_3a
    new-instance p4, Lcom/google/android/gms/internal/zzbsl;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsl;-><init>(Landroid/os/IBinder;)V

    :goto_1e
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsk;)V

    goto/16 :goto_6

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3b

    goto :goto_1f

    :cond_3b
    const-string p4, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsi;

    if-eqz v1, :cond_3c

    check-cast p4, Lcom/google/android/gms/internal/zzbsi;

    goto :goto_1f

    :cond_3c
    new-instance p4, Lcom/google/android/gms/internal/zzbsj;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsj;-><init>(Landroid/os/IBinder;)V

    :goto_1f
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsi;)V

    goto/16 :goto_6

    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/zzbsa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbsa;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3d

    goto :goto_20

    :cond_3d
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v1, :cond_3e

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_20

    :cond_3e
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_20
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsa;Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_21
    sget-object p1, Lcom/google/android/gms/internal/zzbry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbry;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3f

    goto :goto_21

    :cond_3f
    const-string p4, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbtb;

    if-eqz v1, :cond_40

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_21

    :cond_40
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_21
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbry;Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_41

    goto :goto_22

    :cond_41
    const-string p4, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v3, p4, Lcom/google/android/gms/internal/zzbsk;

    if-eqz v3, :cond_42

    check-cast p4, Lcom/google/android/gms/internal/zzbsk;

    goto :goto_22

    :cond_42
    new-instance p4, Lcom/google/android/gms/internal/zzbsl;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsl;-><init>(Landroid/os/IBinder;)V

    :goto_22
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzbsk;)V

    goto/16 :goto_6

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_43

    goto :goto_23

    :cond_43
    const-string p4, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v3, p4, Lcom/google/android/gms/internal/zzbsk;

    if-eqz v3, :cond_44

    check-cast p4, Lcom/google/android/gms/internal/zzbsk;

    goto :goto_23

    :cond_44
    new-instance p4, Lcom/google/android/gms/internal/zzbsl;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsl;-><init>(Landroid/os/IBinder;)V

    :goto_23
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsk;)V

    goto/16 :goto_6

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_45

    goto :goto_24

    :cond_45
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v3, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v3, :cond_46

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_24

    :cond_46
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_24
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_47

    goto :goto_25

    :cond_47
    const-string p4, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsu;

    if-eqz v1, :cond_48

    check-cast p4, Lcom/google/android/gms/internal/zzbsu;

    goto :goto_25

    :cond_48
    new-instance p4, Lcom/google/android/gms/internal/zzbsv;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsv;-><init>(Landroid/os/IBinder;)V

    :goto_25
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsu;)V

    goto/16 :goto_6

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_49

    goto :goto_26

    :cond_49
    const-string p4, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsi;

    if-eqz v1, :cond_4a

    check-cast p4, Lcom/google/android/gms/internal/zzbsi;

    goto :goto_26

    :cond_4a
    new-instance p4, Lcom/google/android/gms/internal/zzbsj;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsj;-><init>(Landroid/os/IBinder;)V

    :goto_26
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsi;)V

    goto/16 :goto_6

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4b

    goto :goto_27

    :cond_4b
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v2, :cond_4c

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_27

    :cond_4c
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_27
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4d

    goto :goto_28

    :cond_4d
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v3, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v3, :cond_4e

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_28

    :cond_4e
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_28
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4f

    goto :goto_29

    :cond_4f
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v3, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v3, :cond_50

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_29

    :cond_50
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_29
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_51

    goto :goto_2a

    :cond_51
    const-string p4, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsz;

    if-eqz v1, :cond_52

    check-cast p4, Lcom/google/android/gms/internal/zzbsz;

    goto :goto_2a

    :cond_52
    new-instance p4, Lcom/google/android/gms/internal/zzbta;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbta;-><init>(Landroid/os/IBinder;)V

    :goto_2a
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsz;)V

    goto/16 :goto_6

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_53

    goto :goto_2b

    :cond_53
    const-string p4, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsu;

    if-eqz v1, :cond_54

    check-cast p4, Lcom/google/android/gms/internal/zzbsu;

    goto :goto_2b

    :cond_54
    new-instance p4, Lcom/google/android/gms/internal/zzbsv;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsv;-><init>(Landroid/os/IBinder;)V

    :goto_2b
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsu;)V

    goto/16 :goto_6

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_55

    goto :goto_2c

    :cond_55
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v1, :cond_56

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_2c

    :cond_56
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_2c
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_57

    goto :goto_2d

    :cond_57
    const-string p4, "com.google.android.gms.drive.realtime.internal.IEventCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/internal/zzbsq;

    if-eqz v2, :cond_58

    check-cast p4, Lcom/google/android/gms/internal/zzbsq;

    goto :goto_2d

    :cond_58
    new-instance p4, Lcom/google/android/gms/internal/zzbsr;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsr;-><init>(Landroid/os/IBinder;)V

    :goto_2d
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzbsq;)V

    goto/16 :goto_6

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_59

    goto :goto_2e

    :cond_59
    const-string p4, "com.google.android.gms.drive.realtime.internal.IIntCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsu;

    if-eqz v1, :cond_5a

    check-cast p4, Lcom/google/android/gms/internal/zzbsu;

    goto :goto_2e

    :cond_5a
    new-instance p4, Lcom/google/android/gms/internal/zzbsv;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsv;-><init>(Landroid/os/IBinder;)V

    :goto_2e
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsu;)V

    goto/16 :goto_6

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_5b

    goto :goto_2f

    :cond_5b
    const-string p4, "com.google.android.gms.drive.realtime.internal.IDataHolderCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/internal/zzbsi;

    if-eqz v2, :cond_5c

    check-cast p4, Lcom/google/android/gms/internal/zzbsi;

    goto :goto_2f

    :cond_5c
    new-instance p4, Lcom/google/android/gms/internal/zzbsj;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbsj;-><init>(Landroid/os/IBinder;)V

    :goto_2f
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbsi;)V

    goto/16 :goto_6

    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5d

    goto :goto_30

    :cond_5d
    const-string p2, "com.google.android.gms.drive.realtime.internal.ISuccessCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbtb;

    if-eqz p4, :cond_5e

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbtb;

    goto :goto_30

    :cond_5e
    new-instance p4, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbtc;-><init>(Landroid/os/IBinder;)V

    :goto_30
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbtb;)V

    goto/16 :goto_6

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5f

    goto :goto_31

    :cond_5f
    const-string p2, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzbsc;

    if-eqz p4, :cond_60

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzbsc;

    goto :goto_31

    :cond_60
    new-instance p4, Lcom/google/android/gms/internal/zzbsd;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzbsd;-><init>(Landroid/os/IBinder;)V

    :goto_31
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsc;)V

    goto/16 :goto_6

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_61

    goto :goto_32

    :cond_61
    const-string p4, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbsz;

    if-eqz v1, :cond_62

    check-cast p4, Lcom/google/android/gms/internal/zzbsz;

    goto :goto_32

    :cond_62
    new-instance p4, Lcom/google/android/gms/internal/zzbta;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/zzbta;-><init>(Landroid/os/IBinder;)V

    :goto_32
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzbsx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsz;)V

    goto/16 :goto_6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
