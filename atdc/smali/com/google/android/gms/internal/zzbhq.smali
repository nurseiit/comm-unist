.class final Lcom/google/android/gms/internal/zzbhq;
.super Lcom/google/android/gms/internal/zzbhn;


# instance fields
.field private synthetic zzaKw:Lcom/google/android/gms/internal/zzbhp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbhp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzaKw:Lcom/google/android/gms/internal/zzbhp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbhn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzbia;)V
    .locals 7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbia;->getStatusCode()I

    move-result p1

    const/16 v0, 0x1966

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbia;->getStatusCode()I

    move-result p1

    const/16 v0, 0x196b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzaKw:Lcom/google/android/gms/internal/zzbhp;

    new-instance v0, Lcom/google/android/gms/internal/zzbhr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbia;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbhl;->zzaI(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbhl;->zzc(Lcom/google/android/gms/internal/zzbia;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbhl;->zzb(Lcom/google/android/gms/internal/zzbia;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/zzbhr;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbhp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzaKw:Lcom/google/android/gms/internal/zzbhp;

    new-instance v6, Lcom/google/android/gms/internal/zzbhr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbia;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhl;->zzaI(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbhl;->zzc(Lcom/google/android/gms/internal/zzbia;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbia;->getThrottleEndTimeMillis()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbhl;->zzb(Lcom/google/android/gms/internal/zzbia;)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbhr;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;JLjava/util/List;)V

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/zzbhp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
