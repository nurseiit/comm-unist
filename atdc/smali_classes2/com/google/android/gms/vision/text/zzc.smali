.class final Lcom/google/android/gms/vision/text/zzc;
.super Ljava/lang/Object;


# direct methods
.method static zza(Lcom/google/android/gms/vision/text/Text;)Landroid/graphics/Rect;
    .locals 8

    invoke-interface {p0}, Lcom/google/android/gms/vision/text/Text;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object p0

    array-length v0, p0

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v6, p0, v3

    iget v7, v6, Landroid/graphics/Point;->x:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v7, v6, Landroid/graphics/Point;->x:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v4, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/fe;)[Landroid/graphics/Point;
    .locals 12

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/gms/internal/fe;->zzbNW:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/internal/fe;->zzbNW:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    new-instance v5, Landroid/graphics/Point;

    iget v6, p0, Lcom/google/android/gms/internal/fe;->left:I

    iget v7, p0, Lcom/google/android/gms/internal/fe;->top:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v0, v6

    new-instance v5, Landroid/graphics/Point;

    iget v7, p0, Lcom/google/android/gms/internal/fe;->left:I

    int-to-double v7, v7

    iget v9, p0, Lcom/google/android/gms/internal/fe;->width:I

    int-to-double v9, v9

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, p0, Lcom/google/android/gms/internal/fe;->top:I

    int-to-double v8, v8

    iget v10, p0, Lcom/google/android/gms/internal/fe;->width:I

    int-to-double v10, v10

    mul-double v10, v10, v1

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v7, 0x1

    aput-object v5, v0, v7

    new-instance v5, Landroid/graphics/Point;

    aget-object v8, v0, v7

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    iget v10, p0, Lcom/google/android/gms/internal/fe;->height:I

    int-to-double v10, v10

    mul-double v10, v10, v1

    sub-double/2addr v8, v10

    double-to-int v1, v8

    aget-object v2, v0, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v8, v2

    iget p0, p0, Lcom/google/android/gms/internal/fe;->height:I

    int-to-double v10, p0

    mul-double v10, v10, v3

    add-double/2addr v8, v10

    double-to-int p0, v8

    invoke-direct {v5, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x2

    aput-object v5, v0, p0

    new-instance v1, Landroid/graphics/Point;

    aget-object v2, v0, v6

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, v0, p0

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    aget-object v3, v0, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object p0, v0, p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v4

    add-int/2addr v3, p0

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    return-object v0
.end method
