.class public final Lcom/google/android/gms/internal/zzbin;
.super Ljava/lang/Object;


# instance fields
.field private final zzaKO:Lcom/google/android/gms/internal/ach;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ach;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ach;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbin;->zzaKO:Lcom/google/android/gms/internal/ach;

    return-void
.end method

.method public static zza(I[I)Lcom/google/android/gms/internal/zzbin;
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbin;

    new-instance v1, Lcom/google/android/gms/internal/ach;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ach;-><init>()V

    iput p0, v1, Lcom/google/android/gms/internal/ach;->zzcqq:I

    const-wide/16 v2, 0xbb8

    iput-wide v2, v1, Lcom/google/android/gms/internal/ach;->zzcqr:J

    iput-object p1, v1, Lcom/google/android/gms/internal/ach;->zzcqs:[I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbin;-><init>(Lcom/google/android/gms/internal/ach;)V

    return-object v0
.end method


# virtual methods
.method public final zzsB()Lcom/google/android/gms/internal/ach;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbin;->zzaKO:Lcom/google/android/gms/internal/ach;

    return-object v0
.end method
