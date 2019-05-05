.class final Lcom/google/android/gms/location/zzh;
.super Lcom/google/android/gms/internal/zzbey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbey<",
        "Lcom/google/android/gms/internal/zzcdj;",
        "Lcom/google/android/gms/location/LocationCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/internal/zzbdy;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdj;

    invoke-virtual {p0}, Lcom/google/android/gms/location/zzh;->zzqG()Lcom/google/android/gms/internal/zzbdy;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzcdj;->zzb(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method
