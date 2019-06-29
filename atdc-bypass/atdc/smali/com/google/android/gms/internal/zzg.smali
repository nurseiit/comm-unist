.class public final Lcom/google/android/gms/internal/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzx;


# instance fields
.field private zzn:I

.field private zzo:I

.field private final zzp:I

.field private final zzq:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzg;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    iput p1, p0, Lcom/google/android/gms/internal/zzg;->zzn:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzg;->zzp:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/zzg;->zzq:F

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzg;->zzn:I

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaa;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaa;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzg;->zzo:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzg;->zzo:I

    iget v0, p0, Lcom/google/android/gms/internal/zzg;->zzn:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzg;->zzn:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/zzg;->zzq:F

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzg;->zzn:I

    iget v0, p0, Lcom/google/android/gms/internal/zzg;->zzo:I

    iget v2, p0, Lcom/google/android/gms/internal/zzg;->zzp:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    throw p1

    :cond_1
    return-void
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzg;->zzo:I

    return v0
.end method
