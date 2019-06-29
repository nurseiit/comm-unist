.class public final Lcom/google/android/gms/internal/ag;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbJZ:Lcom/google/android/gms/internal/zzcvy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcvy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ag;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ag;->zzbJZ:Lcom/google/android/gms/internal/zzcvy;

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

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    aget-object v1, p2, v0

    sget-object v2, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->zzbJZ:Lcom/google/android/gms/internal/zzcvy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcvy;->zzCy()Lcom/google/android/gms/internal/zzcut;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcut;->zzBh()Ljava/util/Map;

    move-result-object v1

    const-string v2, "_ldl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/eb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ed;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/dp;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/eb;

    if-nez v2, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/eb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    check-cast v1, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "conv"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzcvj;->zzV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/eb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    array-length v0, p2

    const/4 v2, 0x0

    if-le v0, p1, :cond_5

    aget-object v0, p2, p1

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    :cond_5
    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzcvj;->zzV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Lcom/google/android/gms/internal/eb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/eb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_7
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/eb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
