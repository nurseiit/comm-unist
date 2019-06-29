.class public final Lcom/google/android/gms/internal/zzczy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcxo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zzb(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 5
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v2, p2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ed;->zza(Lcom/google/android/gms/internal/zzcwa;Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/dw;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    check-cast v2, Lcom/google/android/gms/internal/dw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ds;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    check-cast v3, Lcom/google/android/gms/internal/ds;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ds;->zzDn()Ljava/lang/Boolean;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ed;->zza(Lcom/google/android/gms/internal/zzcwa;Ljava/util/List;)Lcom/google/android/gms/internal/dv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/dv;->zzbLr:Lcom/google/android/gms/internal/dv;

    if-ne v3, v4, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-object p1

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/dv;->zzDr()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    :goto_2
    aget-object v3, p2, v0

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ed;->zza(Lcom/google/android/gms/internal/zzcwa;Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcxp;->zza(Lcom/google/android/gms/internal/dp;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ed;->zza(Lcom/google/android/gms/internal/zzcwa;Ljava/util/List;)Lcom/google/android/gms/internal/dv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/dv;->zzbLr:Lcom/google/android/gms/internal/dv;

    if-ne v3, v4, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-object p1

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/dv;->zzDr()Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v3

    :cond_5
    aget-object v3, p2, v1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ed;->zza(Lcom/google/android/gms/internal/zzcwa;Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-object p1
.end method
