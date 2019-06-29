.class public final Lcom/google/android/gms/internal/hz;
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
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/4 v1, 0x0

    aget-object v2, p2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v0

    const/4 v3, 0x1

    aget-object v4, p2, v3

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    mul-float v2, v2, v0

    aget-object v4, p2, v3

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, v0

    const/4 v5, 0x2

    aget-object v6, p2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, p1

    add-float/2addr v4, v6

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    aget-object v1, p2, v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v0

    aget-object v4, p2, v3

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, p1

    add-float/2addr v1, v4

    mul-float v1, v1, v0

    aget-object v3, p2, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v3

    aget-object p2, p2, v5

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    mul-float p1, p1, v0

    add-float/2addr v1, p1

    invoke-virtual {p3, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method
