.class final Lcom/google/android/gms/internal/zzbmm;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOf:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmh;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmm;->zzaOf:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v0, Lcom/google/android/gms/internal/zzbku;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmm;->zzaOf:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbku;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbku;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
