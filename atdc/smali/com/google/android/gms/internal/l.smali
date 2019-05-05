.class public final Lcom/google/android/gms/internal/l;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 11
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

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lez v0, :cond_0

    array-length v0, p2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v3, p2

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_1

    move-wide v7, v5

    goto :goto_1

    :cond_1
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v7

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v9, p1

    array-length p1, p2

    if-ne p1, v1, :cond_2

    aget-object p1, p2, v4

    sget-object v1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq p1, v1, :cond_2

    aget-object p1, p2, v4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v9

    :cond_2
    cmpg-double p1, v7, v5

    if-gez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    add-double/2addr p1, v7

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    :goto_2
    double-to-int p1, p1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_2

    :goto_3
    cmpg-double p2, v9, v5

    if-gez p2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v3, p2

    add-double/2addr v3, v9

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    :goto_4
    double-to-int p2, v3

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v3, p2

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_4

    :goto_5
    sub-int/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, p1

    new-instance v1, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
