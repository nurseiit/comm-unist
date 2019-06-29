.class public final Lcom/google/android/gms/internal/zzcyb;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 13
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

    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v4

    instance-of v0, v0, Lcom/google/android/gms/internal/du;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v3

    check-cast v0, Lcom/google/android/gms/internal/dw;

    aget-object v5, p2, v4

    check-cast v5, Lcom/google/android/gms/internal/du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    array-length v8, p2

    if-ne v8, v1, :cond_2

    aget-object p2, p2, v2

    const/4 v9, 0x0

    goto :goto_6

    :cond_2
    if-lez v7, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/dw;->zzbG(I)Lcom/google/android/gms/internal/dp;

    move-result-object p2

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_5

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/dw;->zzbH(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/dw;->zzbG(I)Lcom/google/android/gms/internal/dp;

    move-result-object p2

    add-int/lit8 v9, v8, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x1

    :goto_4
    if-ge v8, v7, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    :goto_6
    if-ge v9, v7, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v9, v8, :cond_8

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/dw;->zzbH(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/du;->zzDp()Lcom/google/android/gms/internal/zzcxo;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcxo;

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/android/gms/internal/dp;

    aput-object p2, v10, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/dp;

    aput-object p2, v10, v4

    new-instance p2, Lcom/google/android/gms/internal/dt;

    int-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {p2, v11}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    aput-object p2, v10, v2

    aput-object v0, v10, v1

    invoke-interface {v8, p1, v10}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    move-result-object p2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    return-object p2
.end method
