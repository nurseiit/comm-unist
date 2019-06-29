.class public final Lcom/google/android/gms/internal/zzbjq;
.super Ljava/lang/Object;


# instance fields
.field private final zzaLl:Lcom/google/android/gms/internal/adb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/adb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/adb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjq;->zzaLl:Lcom/google/android/gms/internal/adb;

    return-void
.end method

.method private static zza(IJJ)Lcom/google/android/gms/internal/adb;
    .locals 7

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/adb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adb;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/adb;->zzcqq:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/adb;->zzcrD:J

    iput-wide p3, v0, Lcom/google/android/gms/internal/adb;->zzcrE:J

    return-object v0
.end method

.method public static zzc(JJ)Lcom/google/android/gms/internal/zzbjq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbjq;

    const/4 v1, 0x1

    invoke-static {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbjq;->zza(IJJ)Lcom/google/android/gms/internal/adb;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjq;-><init>(Lcom/google/android/gms/internal/adb;)V

    return-object v0
.end method

.method public static zzd(JJ)Lcom/google/android/gms/internal/zzbjq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbjq;

    const/4 v1, 0x2

    invoke-static {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbjq;->zza(IJJ)Lcom/google/android/gms/internal/adb;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjq;-><init>(Lcom/google/android/gms/internal/adb;)V

    return-object v0
.end method


# virtual methods
.method public final zzsH()Lcom/google/android/gms/internal/adb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjq;->zzaLl:Lcom/google/android/gms/internal/adb;

    return-object v0
.end method
