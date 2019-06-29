.class public final Lcom/google/android/gms/internal/id;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/if;


# instance fields
.field private zzbUH:F

.field private zzbUI:F

.field private zzbUJ:F

.field private zzbUK:F

.field private zzbUL:F

.field private zzbUM:F

.field private final zzbUN:Z


# direct methods
.method public constructor <init>(FFFFFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/id;->zzbUH:F

    iput p2, p0, Lcom/google/android/gms/internal/id;->zzbUI:F

    iput p3, p0, Lcom/google/android/gms/internal/id;->zzbUJ:F

    iput p4, p0, Lcom/google/android/gms/internal/id;->zzbUK:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/id;->zzbUL:F

    iput p1, p0, Lcom/google/android/gms/internal/id;->zzbUM:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/id;->zzbUN:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    new-instance p3, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    :goto_0
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    aput-object p3, v2, v1

    new-instance p3, Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/gms/internal/id;->zzbUH:F

    iget v3, p0, Lcom/google/android/gms/internal/id;->zzbUI:F

    invoke-direct {p3, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p3, v2, v0

    const/4 p3, 0x2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/gms/internal/id;->zzbUJ:F

    iget v3, p0, Lcom/google/android/gms/internal/id;->zzbUK:F

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v2, p3

    const/4 p3, 0x3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/gms/internal/id;->zzbUL:F

    iget v3, p0, Lcom/google/android/gms/internal/id;->zzbUM:F

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v2, p3

    invoke-static {}, Lcom/google/android/gms/internal/ib;->zzEm()Lcom/google/android/gms/internal/hy;

    move-result-object v3

    const/4 v4, 0x1

    const v7, 0x368637be    # 4.0000004E-6f

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ib;->zzb([Landroid/graphics/PointF;Lcom/google/android/gms/internal/hx;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    return-void
.end method
