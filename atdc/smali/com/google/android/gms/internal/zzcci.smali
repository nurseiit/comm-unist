.class final Lcom/google/android/gms/internal/zzcci;
.super Lcom/google/android/gms/internal/zzccm;


# instance fields
.field private synthetic zzbiD:Lcom/google/android/gms/location/LocationRequest;

.field private synthetic zzbiF:Lcom/google/android/gms/location/LocationCallback;

.field private synthetic zzbiI:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccb;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcci;->zzbiD:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcci;->zzbiF:Lcom/google/android/gms/location/LocationCallback;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcci;->zzbiI:Landroid/os/Looper;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdj;

    new-instance v0, Lcom/google/android/gms/internal/zzccn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzccn;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcci;->zzbiD:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcdn;->zza(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzcdn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcci;->zzbiF:Lcom/google/android/gms/location/LocationCallback;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcci;->zzbiI:Landroid/os/Looper;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzceb;->zzb(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzbea;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzcdj;->zza(Lcom/google/android/gms/internal/zzcdn;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method
