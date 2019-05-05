.class final Lcom/google/android/gms/internal/zzayz;
.super Lcom/google/android/gms/internal/zzazb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayw;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzazb;-><init>(Lcom/google/android/gms/internal/zzayw;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzazf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayz;->zza(Lcom/google/android/gms/internal/zzazf;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzazf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzazd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/internal/zzazb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzazf;->zza(Lcom/google/android/gms/internal/zzazh;)V

    return-void
.end method
