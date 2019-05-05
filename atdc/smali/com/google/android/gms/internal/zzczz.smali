.class public final Lcom/google/android/gms/internal/zzczz;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 3
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

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    aget-object p1, p2, p1

    instance-of p2, v0, Lcom/google/android/gms/internal/dv;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v0, p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    if-ne v0, p2, :cond_2

    :cond_1
    instance-of p2, p1, Lcom/google/android/gms/internal/dv;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq p1, p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    if-eq p1, p2, :cond_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal InternalType passed to Add."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    instance-of p2, v0, Lcom/google/android/gms/internal/dz;

    if-nez p2, :cond_5

    instance-of p2, v0, Lcom/google/android/gms/internal/dw;

    if-nez p2, :cond_5

    instance-of p2, v0, Lcom/google/android/gms/internal/du;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, v0

    goto :goto_2

    :cond_5
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    :goto_2
    instance-of v0, p1, Lcom/google/android/gms/internal/dz;

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/internal/dw;

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/internal/du;

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/eb;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :cond_7
    instance-of v0, p2, Lcom/google/android/gms/internal/eb;

    if-nez v0, :cond_9

    instance-of v0, p1, Lcom/google/android/gms/internal/eb;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/dt;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzcxp;->zza(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/dp;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_9
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/eb;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
