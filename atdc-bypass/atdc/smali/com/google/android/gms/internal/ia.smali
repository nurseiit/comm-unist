.class public final Lcom/google/android/gms/internal/ia;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private zzbUA:[F

.field private zzbUB:[F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ib;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ib;-><init>()V

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4}, Lcom/google/android/gms/internal/ib;->moveTo(FF)V

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p2

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ib;->cubicTo(FFFFFF)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ia;->zza(Lcom/google/android/gms/internal/ib;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ib;)V
    .locals 8

    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ib;->zzf(F)[F

    move-result-object p1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    const/4 v2, 0x2

    aget v4, p1, v2

    cmpl-float v4, v4, v3

    if-nez v4, :cond_4

    array-length v4, p1

    sub-int/2addr v4, v2

    aget v2, p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    array-length v2, p1

    sub-int/2addr v2, v1

    aget v1, p1, v2

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v6, v5, 0x1

    aget v5, p1, v5

    add-int/lit8 v7, v6, 0x1

    aget v6, p1, v6

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    cmpl-float v3, v5, v4

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    cmpg-float v3, v5, v4

    if-gez v3, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot loop back on itself."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aput v5, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aput v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v4, v5

    move v2, v7

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aget p1, p1, v1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v0, v0, v1

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aget v1, v1, v2

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0
.end method
