.class final Lcom/google/android/gms/internal/zzcsb;
.super Lcom/google/android/gms/internal/zzcsa$zzb;


# instance fields
.field private synthetic zzbBO:[B

.field private synthetic zzbBP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcsb;->zzbBO:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcsb;->zzbBP:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcsa$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcsn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsb;->zzbBW:Lcom/google/android/gms/internal/zzcrw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsb;->zzbBO:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcsb;->zzbBP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcsn;->zzb(Lcom/google/android/gms/internal/zzcrw;[BLjava/lang/String;)V

    return-void
.end method
