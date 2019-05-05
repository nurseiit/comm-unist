.class public final Lcom/google/android/gms/internal/hy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(F[Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v1, v0, v0

    mul-float v2, v1, v0

    mul-float v3, p1, p1

    mul-float v4, v3, p1

    const/4 v5, 0x0

    aget-object v6, p2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v2

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v1, v1, v7

    mul-float v1, v1, p1

    const/4 p1, 0x1

    aget-object v8, p2, p1

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v1

    add-float/2addr v6, v8

    mul-float v0, v0, v7

    mul-float v0, v0, v3

    const/4 v3, 0x2

    aget-object v7, p2, v3

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float v7, v7, v0

    add-float/2addr v6, v7

    const/4 v7, 0x3

    aget-object v8, p2, v7

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v4

    add-float/2addr v6, v8

    aget-object v5, p2, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v5

    aget-object p1, p2, p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, p1

    add-float/2addr v2, v1

    aget-object p1, p2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    aget-object p1, p2, v7

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    invoke-virtual {p3, v6, v2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method
