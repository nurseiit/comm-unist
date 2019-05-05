.class public final Lcom/google/android/gms/internal/zzcyu;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 4
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

    aget-object p2, p2, p1

    instance-of v2, v0, Lcom/google/android/gms/internal/dz;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/google/android/gms/internal/dw;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/google/android/gms/internal/du;

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    instance-of v2, p2, Lcom/google/android/gms/internal/dz;

    if-nez v2, :cond_3

    instance-of v2, p2, Lcom/google/android/gms/internal/dw;

    if-nez v2, :cond_3

    instance-of v2, p2, Lcom/google/android/gms/internal/du;

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/eb;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    move-object p2, v2

    :cond_4
    instance-of v2, v0, Lcom/google/android/gms/internal/eb;

    if-eqz v2, :cond_5

    instance-of v2, p2, Lcom/google/android/gms/internal/eb;

    if-nez v2, :cond_6

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/dp;)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 v1, 0x1

    :cond_7
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ds;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method
