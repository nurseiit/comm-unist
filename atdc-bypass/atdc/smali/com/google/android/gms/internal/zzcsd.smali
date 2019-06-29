.class final Lcom/google/android/gms/internal/zzcsd;
.super Lcom/google/android/gms/internal/zzcsa$zzf;


# instance fields
.field private synthetic zzbBP:Ljava/lang/String;

.field private synthetic zzbBR:Ljava/lang/String;

.field private synthetic zzbBS:[I

.field private synthetic zzbBT:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;[IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBS:[I

    iput p3, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBT:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBR:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBP:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcsa$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBS:[I

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBW:Lcom/google/android/gms/internal/zzcrw;

    iget v3, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBT:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBR:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcsd;->zzbBP:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcsn;->zza(Lcom/google/android/gms/internal/zzcrw;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
