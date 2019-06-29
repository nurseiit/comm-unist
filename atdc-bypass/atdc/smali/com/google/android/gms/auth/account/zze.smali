.class public abstract Lcom/google/android/gms/auth/account/zze;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/auth/account/zzd;


# direct methods
.method public static zzz(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zzd;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/auth/account/zzd;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/auth/account/zzd;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/account/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/account/zzf;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/auth/account/zze;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/auth/account/zza;

    if-eqz v1, :cond_2

    check-cast p4, Lcom/google/android/gms/auth/account/zza;

    goto :goto_0

    :cond_2
    new-instance p4, Lcom/google/android/gms/auth/account/zzc;

    invoke-direct {p4, p1}, Lcom/google/android/gms/auth/account/zzc;-><init>(Landroid/os/IBinder;)V

    :goto_0
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    invoke-virtual {p0, p4, p1}, Lcom/google/android/gms/auth/account/zze;->zza(Lcom/google/android/gms/auth/account/zza;Landroid/accounts/Account;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p4, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/auth/account/zza;

    if-eqz v1, :cond_4

    check-cast p4, Lcom/google/android/gms/auth/account/zza;

    goto :goto_1

    :cond_4
    new-instance p4, Lcom/google/android/gms/auth/account/zzc;

    invoke-direct {p4, p1}, Lcom/google/android/gms/auth/account/zzc;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/google/android/gms/auth/account/zze;->zza(Lcom/google/android/gms/auth/account/zza;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/account/zze;->zzO(Z)V

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
