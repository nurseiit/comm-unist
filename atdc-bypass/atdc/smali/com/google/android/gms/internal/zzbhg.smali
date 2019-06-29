.class public final Lcom/google/android/gms/internal/zzbhg;
.super Ljava/lang/Object;


# instance fields
.field private zzaKm:J

.field private zzaKn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaKo:I

.field private zzaKq:I

.field private zzaKr:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKm:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKq:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKr:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbhg;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKm:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbhg;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKn:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbhg;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKo:I

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbhg;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKq:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbhg;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKr:I

    return p0
.end method


# virtual methods
.method public final zzA(J)Lcom/google/android/gms/internal/zzbhg;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKm:J

    return-object p0
.end method

.method public final zzA(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbhg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKn:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKn:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKn:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzaE(I)Lcom/google/android/gms/internal/zzbhg;
    .locals 0

    const/16 p1, 0x283c

    iput p1, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKo:I

    return-object p0
.end method

.method public final zzaF(I)Lcom/google/android/gms/internal/zzbhg;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKq:I

    return-object p0
.end method

.method public final zzaG(I)Lcom/google/android/gms/internal/zzbhg;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbhg;->zzaKr:I

    return-object p0
.end method

.method public final zzsr()Lcom/google/android/gms/internal/zzbhf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbhf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbhf;-><init>(Lcom/google/android/gms/internal/zzbhg;Lcom/google/android/gms/internal/zzbhe;)V

    return-object v0
.end method
