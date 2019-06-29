.class public final Lcom/google/android/gms/internal/zzcyf;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcwa;",
            "[",
            "Lcom/google/android/gms/internal/dp<",
            "*>;)",
            "Lcom/google/android/gms/internal/dp<",
            "*>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    array-length p1, p2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object p1, p2, v3

    instance-of p1, p1, Lcom/google/android/gms/internal/dw;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object p1, p2, v3

    check-cast p1, Lcom/google/android/gms/internal/dw;

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v4

    double-to-int v0, v4

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, p2

    if-ne v5, v1, :cond_4

    aget-object p2, p2, v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v1

    double-to-int p2, v1

    if-gez p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_4
    :goto_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-instance v1, Lcom/google/android/gms/internal/dw;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dw;-><init>(Ljava/util/List;)V

    return-object v1
.end method
