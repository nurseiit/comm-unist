.class final Lcom/google/android/gms/internal/zzbyb;
.super Lcom/google/android/gms/internal/zzbvd;


# instance fields
.field private synthetic zzaVG:Lcom/google/android/gms/fitness/data/DataSet;

.field private synthetic zzaVH:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbya;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyb;->zzaVG:Lcom/google/android/gms/fitness/data/DataSet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbyb;->zzaVH:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbva;

    new-instance v0, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbva;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwn;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyb;->zzaVG:Lcom/google/android/gms/fitness/data/DataSet;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbyb;->zzaVH:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/fitness/request/zzj;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzbxg;Z)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbwn;->zza(Lcom/google/android/gms/fitness/request/zzj;)V

    return-void
.end method
