.class public final Lcom/google/android/gms/internal/zzbhf;
.super Ljava/lang/Object;


# instance fields
.field private final zzaKm:J

.field private final zzaKn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaKo:I

.field private final zzaKp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbhi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaKq:I

.field private final zzaKr:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbhg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbhg;->zza(Lcom/google/android/gms/internal/zzbhg;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKm:J

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbhg;->zzb(Lcom/google/android/gms/internal/zzbhg;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKn:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbhg;->zzc(Lcom/google/android/gms/internal/zzbhg;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKo:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKp:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbhg;->zzd(Lcom/google/android/gms/internal/zzbhg;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKq:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbhg;->zze(Lcom/google/android/gms/internal/zzbhg;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKr:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbhg;Lcom/google/android/gms/internal/zzbhe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbhf;-><init>(Lcom/google/android/gms/internal/zzbhg;)V

    return-void
.end method


# virtual methods
.method public final zzsm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKm:J

    return-wide v0
.end method

.method public final zzsn()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKn:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKn:Ljava/util/Map;

    return-object v0
.end method

.method public final zzso()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKo:I

    return v0
.end method

.method public final zzsp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKr:I

    return v0
.end method

.method public final zzsq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKq:I

    return v0
.end method
