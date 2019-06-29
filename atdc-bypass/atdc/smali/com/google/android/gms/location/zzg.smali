.class final Lcom/google/android/gms/location/zzg;
.super Lcom/google/android/gms/internal/zzbee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbee<",
        "Lcom/google/android/gms/internal/zzcdj;",
        "Lcom/google/android/gms/location/LocationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbhD:Lcom/google/android/gms/internal/zzcdn;

.field private synthetic zzbhE:Lcom/google/android/gms/internal/zzbdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzcdn;Lcom/google/android/gms/internal/zzbdw;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/location/zzg;->zzbhD:Lcom/google/android/gms/internal/zzcdn;

    iput-object p4, p0, Lcom/google/android/gms/location/zzg;->zzbhE:Lcom/google/android/gms/internal/zzbdw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbee;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdj;

    new-instance v0, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;

    invoke-direct {v0, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/location/zzg;->zzbhD:Lcom/google/android/gms/internal/zzcdn;

    iget-object v1, p0, Lcom/google/android/gms/location/zzg;->zzbhE:Lcom/google/android/gms/internal/zzbdw;

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/zzcdj;->zza(Lcom/google/android/gms/internal/zzcdn;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method
