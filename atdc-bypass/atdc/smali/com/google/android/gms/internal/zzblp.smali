.class final Lcom/google/android/gms/internal/zzblp;
.super Lcom/google/android/gms/internal/zzbmc;


# instance fields
.field private synthetic zzaNK:Lcom/google/android/gms/drive/query/Query;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblo;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzblp;->zzaNK:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v0, Lcom/google/android/gms/internal/zzbqi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblp;->zzaNK:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbqi;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbmd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbmd;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbqi;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
