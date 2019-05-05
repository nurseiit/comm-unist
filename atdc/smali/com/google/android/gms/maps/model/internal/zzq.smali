.class public abstract Lcom/google/android/gms/maps/model/internal/zzq;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/zzp;


# direct methods
.method public static zzaf(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzp;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/zzp;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/maps/model/internal/zzp;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/zzr;-><init>(Landroid/os/IBinder;)V

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/internal/zzq;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getTag()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setTag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getZIndex()F

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setZIndex(F)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getAlpha()F

    move-result p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setAlpha(F)V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/maps/model/internal/zzq;->setInfoWindowAnchor(FF)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getRotation()F

    move-result p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setRotation(F)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->isFlat()Z

    move-result p1

    goto/16 :goto_2

    :pswitch_a
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setFlat(Z)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/maps/model/internal/zzq;->setAnchor(FF)V

    goto/16 :goto_4

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->zzK(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->hashCodeRemote()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/maps/model/internal/zzp;

    if-eqz p4, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/model/internal/zzp;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/google/android/gms/maps/model/internal/zzr;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/internal/zzr;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->zzj(Lcom/google/android/gms/maps/model/internal/zzp;)Z

    move-result p1

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->isVisible()Z

    move-result p1

    goto :goto_2

    :pswitch_10
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setVisible(Z)V

    goto :goto_4

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->isInfoWindowShown()Z

    move-result p1

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->hideInfoWindow()V

    goto :goto_4

    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->showInfoWindow()V

    goto :goto_4

    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->isDraggable()Z

    move-result p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Z)V

    return v0

    :pswitch_15
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setDraggable(Z)V

    goto :goto_4

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getSnippet()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setSnippet(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setTitle(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v0

    :pswitch_1b
    sget-object p1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/zzq;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_4

    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzq;->remove()V

    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
