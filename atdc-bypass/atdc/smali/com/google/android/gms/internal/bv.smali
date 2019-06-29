.class public final Lcom/google/android/gms/internal/bv;
.super Lcom/google/android/gms/internal/zzcxq;


# static fields
.field private static final zzbKj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbKi:Lcom/google/android/gms/internal/zzcux;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GET"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HEAD"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "POST"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "PUT"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/bv;->zzbKj:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzcux;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->zzbKi:Lcom/google/android/gms/internal/zzcux;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 12
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

    instance-of v0, v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dp;->zzfZ(Ljava/lang/String;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/eb;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    check-cast v0, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v2, p2, v1

    const-string v3, "method"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/dp;->zzfZ(Ljava/lang/String;)Lcom/google/android/gms/internal/dp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/eb;

    const-string v3, "GET"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    :cond_1
    instance-of v3, v2, Lcom/google/android/gms/internal/eb;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    check-cast v2, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/bv;->zzbKj:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v2, p2, v1

    const-string v3, "uniqueId"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/dp;->zzfZ(Ljava/lang/String;)Lcom/google/android/gms/internal/dp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    if-eq v2, v3, :cond_3

    instance-of v3, v2, Lcom/google/android/gms/internal/eb;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v9, v2

    goto :goto_4

    :cond_5
    :goto_3
    move-object v9, v4

    :goto_4
    aget-object v2, p2, v1

    const-string v3, "headers"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/dp;->zzfZ(Ljava/lang/String;)Lcom/google/android/gms/internal/dp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v2, v3, :cond_7

    instance-of v3, v2, Lcom/google/android/gms/internal/dz;

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v3, 0x1

    :goto_6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v2, v5, :cond_8

    move-object v10, v4

    goto :goto_8

    :cond_8
    check-cast v2, Lcom/google/android/gms/internal/dz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dz;->zzDt()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/dp;

    instance-of v7, v5, Lcom/google/android/gms/internal/eb;

    if-nez v7, :cond_9

    const-string v5, "Ignore the non-string value of header key %s."

    new-array v7, p1, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    check-cast v5, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    move-object v10, v3

    :goto_8
    aget-object p2, p2, v1

    const-string v2, "body"

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/dp;->zzfZ(Ljava/lang/String;)Lcom/google/android/gms/internal/dp;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq p2, v2, :cond_c

    instance-of v2, p2, Lcom/google/android/gms/internal/eb;

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    sget-object v2, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne p2, v2, :cond_d

    move-object p2, v4

    goto :goto_b

    :cond_d
    check-cast p2, Lcom/google/android/gms/internal/eb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_b
    const-string v2, "GET"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x2

    if-nez v2, :cond_e

    const-string v2, "HEAD"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    if-eqz p2, :cond_f

    const-string v2, "Body of %s hit will be ignored: %s."

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v8, v3, v1

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->zzbKi:Lcom/google/android/gms/internal/zzcux;

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcux;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    const-string v2, "QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v8, v3, p1

    aput-object v9, v3, v11

    const/4 p1, 0x3

    aput-object v10, v3, p1

    const/4 p1, 0x4

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-object p1
.end method
