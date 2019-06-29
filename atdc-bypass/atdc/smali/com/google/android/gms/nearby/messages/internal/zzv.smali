.class public abstract Lcom/google/android/gms/nearby/messages/internal/zzv;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.nearby.messages.internal.IPublishCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzv;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/nearby/messages/internal/zzv;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    if-ne p1, p3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzv;->onExpired()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
