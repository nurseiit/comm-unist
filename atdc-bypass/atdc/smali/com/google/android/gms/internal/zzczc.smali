.class public final Lcom/google/android/gms/internal/zzczc;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 2
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

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/ea;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ed;->zzm(Lcom/google/android/gms/internal/dp;)Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object p1, p2, v1

    const-string p2, "object"

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne p1, v0, :cond_2

    const-string p2, "undefined"

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/internal/ds;

    if-eqz v0, :cond_3

    const-string p2, "boolean"

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/dt;

    if-eqz v0, :cond_4

    const-string p2, "number"

    goto :goto_2

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/eb;

    if-eqz v0, :cond_5

    const-string p2, "string"

    goto :goto_2

    :cond_5
    instance-of p1, p1, Lcom/google/android/gms/internal/du;

    if-eqz p1, :cond_6

    const-string p2, "function"

    :cond_6
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/eb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
