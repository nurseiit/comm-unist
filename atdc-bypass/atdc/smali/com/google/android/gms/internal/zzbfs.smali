.class final Lcom/google/android/gms/internal/zzbfs;
.super Lcom/google/android/gms/internal/zzbfv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbfr;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbfv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfw;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbfz;

    new-instance v0, Lcom/google/android/gms/internal/zzbft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbft;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbfz;->zza(Lcom/google/android/gms/internal/zzbfx;)V

    return-void
.end method
