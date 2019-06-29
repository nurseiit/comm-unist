.class public final Lcom/google/android/gms/internal/uf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uc;


# instance fields
.field private zzcgb:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/uf;->zzcgb:J

    return-void
.end method


# virtual methods
.method public final zzHK()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public final zzHL()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public final zzax(J)Z
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzi(JJ)Z
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/uf;->zzcgb:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    const-wide/16 p1, 0x3e8

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
