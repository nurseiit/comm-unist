.class public abstract Lcom/google/android/gms/common/internal/zzap;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzao;


# direct methods
.method public static zzH(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzao;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ICancelToken"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzao;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/zzao;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzaq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzaq;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzap;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzap;->cancel()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
