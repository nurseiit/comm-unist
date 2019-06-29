.class public abstract Lcom/google/android/gms/wearable/internal/zzdj;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/zzdi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/zzdj;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzcr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzcr;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzct;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzcp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzcp;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzeq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzeq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzeq;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzf;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzcg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzcg;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzci;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzci;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzci;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzbb;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzaz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzaz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzaz;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzcm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzcm;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzck;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzck;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzck;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zzb(Lcom/google/android/gms/wearable/internal/zzbf;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzbf;)V

    goto/16 :goto_0

    :pswitch_e
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzei;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzei;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzei;)V

    goto/16 :goto_0

    :pswitch_f
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzcw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzcw;)V

    goto/16 :goto_0

    :pswitch_10
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzew;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzew;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzew;)V

    goto/16 :goto_0

    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :pswitch_12
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzcy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzcy;)V

    goto :goto_0

    :pswitch_13
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzde;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzde;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzde;)V

    goto :goto_0

    :pswitch_14
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzdc;)V

    goto :goto_0

    :pswitch_15
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzes;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzes;)V

    goto :goto_0

    :pswitch_16
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzce;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzce;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzce;)V

    goto :goto_0

    :pswitch_17
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zzT(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    :pswitch_18
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzda;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzda;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzda;)V

    goto :goto_0

    :pswitch_19
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzem;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzem;)V

    goto :goto_0

    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzcu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzdj;->zza(Lcom/google/android/gms/wearable/internal/zzcu;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_data_0
    .packed-switch 0x2
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
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
