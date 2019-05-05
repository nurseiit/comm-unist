.class public abstract Lcom/google/firebase/database/connection/idl/zzl;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/firebase/database/connection/idl/zzk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider"

    invoke-virtual {p0, p0, v0}, Lcom/google/firebase/database/connection/idl/zzl;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/connection/idl/zzl;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string p4, "com.google.firebase.database.connection.idl.IGetTokenCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/firebase/database/connection/idl/zzn;

    if-eqz v1, :cond_2

    move-object p2, p4

    check-cast p2, Lcom/google/firebase/database/connection/idl/zzn;

    goto :goto_0

    :cond_2
    new-instance p4, Lcom/google/firebase/database/connection/idl/zzp;

    invoke-direct {p4, p2}, Lcom/google/firebase/database/connection/idl/zzp;-><init>(Landroid/os/IBinder;)V

    move-object p2, p4

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/connection/idl/zzl;->zza(ZLcom/google/firebase/database/connection/idl/zzn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
