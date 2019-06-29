.class public final Lcom/google/android/gms/internal/zzazf;
.super Lcom/google/android/gms/common/internal/zzz;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzz<",
        "Lcom/google/android/gms/internal/zzazj;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final zzapq:Lcom/google/android/gms/internal/zzayo;


# instance fields
.field private zzaoX:Lcom/google/android/gms/cast/CastDevice;

.field private zzazc:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

.field private zzazd:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayo;

    const-string v1, "CastRemoteDisplayClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzayo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzazf;->zzapq:Lcom/google/android/gms/internal/zzayo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/cast/CastDevice;Landroid/os/Bundle;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x53

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzz;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object p1, Lcom/google/android/gms/internal/zzazf;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string p2, "instance created"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/zzazf;->zzazc:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzazf;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzazf;->zzazd:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzazf;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzazf;->zzazc:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    return-object p0
.end method

.method static synthetic zzoQ()Lcom/google/android/gms/internal/zzayo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzapq:Lcom/google/android/gms/internal/zzayo;

    return-object v0
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method

.method public final disconnect()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzazc:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazf;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazj;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzz;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzz;->disconnect()V

    throw v0

    :catch_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzz;->disconnect()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzazh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazf;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzazj;->zza(Lcom/google/android/gms/internal/zzazh;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzazh;Lcom/google/android/gms/internal/zzazl;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/google/android/gms/internal/zzazg;

    invoke-direct {v5, p0, p2}, Lcom/google/android/gms/internal/zzazg;-><init>(Lcom/google/android/gms/internal/zzazf;Lcom/google/android/gms/internal/zzazl;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazf;->zzrf()Landroid/os/IInterface;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/google/android/gms/internal/zzazj;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzazf;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/internal/zzazf;->zzazd:Landroid/os/Bundle;

    move-object v4, p1

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/zzazj;->zza(Lcom/google/android/gms/internal/zzazh;Lcom/google/android/gms/internal/zzazl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzazj;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzazj;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzazk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzazk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final zzdb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.service.START"

    return-object v0
.end method

.method protected final zzdc()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    return-object v0
.end method
