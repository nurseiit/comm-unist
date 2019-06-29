.class final Lcom/google/android/gms/internal/zzccg;
.super Lcom/google/android/gms/internal/zzccm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccb;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdj;

    new-instance v0, Lcom/google/android/gms/internal/zzccn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzccn;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcdj;->zza(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method
