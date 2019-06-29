.class public abstract Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public static zzah(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/zzv;-><init>(Landroid/os/IBinder;)V

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getTag()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setTag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getPattern()Ljava/util/List;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/maps/model/PatternItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setPattern(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getJointType()I

    move-result p1

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setJointType(I)V

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getEndCap()Lcom/google/android/gms/maps/model/Cap;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    goto/16 :goto_6

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getStartCap()Lcom/google/android/gms/maps/model/Cap;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v0

    :pswitch_9
    sget-object p1, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    goto/16 :goto_6

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->isClickable()Z

    move-result p1

    goto :goto_2

    :pswitch_b
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setClickable(Z)V

    goto/16 :goto_6

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->hashCodeRemote()I

    move-result p1

    goto :goto_3

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    if-eqz p4, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/google/android/gms/maps/model/internal/zzv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/internal/zzv;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->equalsRemote(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)Z

    move-result p1

    goto :goto_2

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->isGeodesic()Z

    move-result p1

    goto :goto_2

    :pswitch_f
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setGeodesic(Z)V

    goto/16 :goto_6

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->isVisible()Z

    move-result p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Z)V

    return v0

    :pswitch_11
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setVisible(Z)V

    goto :goto_6

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getZIndex()F

    move-result p1

    goto :goto_4

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setZIndex(F)V

    goto :goto_6

    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getColor()I

    move-result p1

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setColor(I)V

    goto :goto_6

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getWidth()F

    move-result p1

    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setWidth(F)V

    goto :goto_6

    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getPoints()Ljava/util/List;

    move-result-object p1

    :goto_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    :pswitch_19
    sget-object p1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setPoints(Ljava/util/List;)V

    goto :goto_6

    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->remove()V

    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
