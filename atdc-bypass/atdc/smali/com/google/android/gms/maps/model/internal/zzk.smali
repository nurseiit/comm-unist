.class public abstract Lcom/google/android/gms/maps/model/internal/zzk;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/zzj;


# direct methods
.method public static zzad(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzj;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/zzj;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/maps/model/internal/zzj;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/zzl;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/internal/zzk;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzk;->hashCodeRemote()I

    move-result p1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/maps/model/internal/zzj;

    if-eqz p4, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/model/internal/zzj;

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/google/android/gms/maps/model/internal/zzl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/internal/zzl;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzk;->zzb(Lcom/google/android/gms/maps/model/internal/zzj;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzk;->isUnderground()Z

    move-result p1

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Z)V

    return v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzk;->getLevels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    return v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzk;->getDefaultLevelIndex()I

    move-result p1

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzk;->getActiveLevelIndex()I

    move-result p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method