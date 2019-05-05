.class public abstract Lcom/google/android/gms/tagmanager/zzcu;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzct;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/tagmanager/zzcu;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzct;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/tagmanager/zzct;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/tagmanager/zzct;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzcu;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    const/4 v1, 0x0

    if-nez p4, :cond_1

    move-object p4, v1

    goto :goto_0

    :cond_1
    const-string v2, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-interface {p4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/tagmanager/zzcn;

    if-eqz v3, :cond_2

    move-object p4, v2

    check-cast p4, Lcom/google/android/gms/tagmanager/zzcn;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/tagmanager/zzcp;

    invoke-direct {v2, p4}, Lcom/google/android/gms/tagmanager/zzcp;-><init>(Landroid/os/IBinder;)V

    move-object p4, v2

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/tagmanager/zzce;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/gms/tagmanager/zzce;

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/google/android/gms/tagmanager/zzcg;

    invoke-direct {v1, p2}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0, p1, p4, v1}, Lcom/google/android/gms/tagmanager/zzcu;->getService(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcvg;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
