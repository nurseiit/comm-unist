.class final Lcom/google/android/gms/internal/zzcre;
.super Lcom/google/android/gms/internal/zzcrg;


# instance fields
.field private synthetic zzbAQ:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcra;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcre;->zzbAQ:Ljava/util/Collection;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcrg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcrb;)V

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

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcre;->zzbAQ:Ljava/util/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/internal/zzbaz;Ljava/util/Collection;)V

    return-void
.end method
