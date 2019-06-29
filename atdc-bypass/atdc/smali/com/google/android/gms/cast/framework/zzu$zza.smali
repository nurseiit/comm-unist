.class public abstract Lcom/google/android/gms/cast/framework/zzu$zza;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/zzu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public static zzD(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/zzu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.ISession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/cast/framework/zzu;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/cast/framework/zzu;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/framework/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/zzv;-><init>(Landroid/os/IBinder;)V

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/cast/framework/zzu$zza;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/zzu$zza;->notifySessionSuspended(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/zzu$zza;->notifyFailedToResumeSession(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/zzu$zza;->notifySessionResumed(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/zzu$zza;->notifySessionEnded(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/zzu$zza;->notifyFailedToStartSession(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/zzu$zza;->notifySessionStarted(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->isSuspended()Z

    move-result p1

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->isResuming()Z

    move-result p1

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->isDisconnected()Z

    move-result p1

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->isDisconnecting()Z

    move-result p1

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->isConnecting()Z

    move-result p1

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->isConnected()Z

    move-result p1

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Z)V

    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->zznx()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->getSessionId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->getCategory()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/zzu$zza;->zznw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
