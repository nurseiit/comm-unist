.class final Lcom/google/android/gms/internal/zzcsc;
.super Lcom/google/android/gms/internal/zzcsa$zzf;


# instance fields
.field private synthetic zzbBP:Ljava/lang/String;

.field private synthetic zzbBQ:Ljava/util/List;

.field private synthetic zzbBR:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcsa;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcsc;->zzbBQ:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcsc;->zzbBR:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcsc;->zzbBP:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcsa$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzcsn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsc;->zzbBW:Lcom/google/android/gms/internal/zzcrw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcsc;->zzbBQ:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcsc;->zzbBR:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcsc;->zzbBP:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcsn;->zza(Lcom/google/android/gms/internal/zzcrw;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
