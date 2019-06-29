.class final Lcom/google/android/gms/internal/zzcsf;
.super Lcom/google/android/gms/internal/zzcsa$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcsa;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcsa$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzcsn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsf;->zzbBW:Lcom/google/android/gms/internal/zzcrw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcsn;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcry;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzcry;->zzc(Lcom/google/android/gms/internal/zzcrw;)V

    return-void
.end method
