.class final Lcom/google/android/gms/internal/zzaih;
.super Lcom/google/android/gms/internal/zzar;


# instance fields
.field private synthetic zzaah:[B

.field private synthetic zzaai:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaie;ILjava/lang/String;Lcom/google/android/gms/internal/zzv;Lcom/google/android/gms/internal/zzu;[BLjava/util/Map;)V
    .locals 0

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaih;->zzaah:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaih;->zzaai:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzar;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzv;Lcom/google/android/gms/internal/zzu;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->zzaai:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzar;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->zzaai:Ljava/util/Map;

    return-object v0
.end method

.method public final zzg()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->zzaah:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzar;->zzg()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->zzaah:[B

    return-object v0
.end method
