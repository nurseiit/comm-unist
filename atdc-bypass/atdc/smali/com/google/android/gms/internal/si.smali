.class final Lcom/google/android/gms/internal/si;
.super Ljava/lang/Object;


# instance fields
.field private zzceA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/wp;",
            "Lcom/google/android/gms/internal/si;",
            ">;"
        }
    .end annotation
.end field

.field private zzcez:Lcom/google/android/gms/internal/xm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    iput-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/sm;->zzf(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/sk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/sk;-><init>(Lcom/google/android/gms/internal/si;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wp;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/si;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/si;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 4

    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, v0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/xm;->zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/internal/si;

    invoke-direct {v3}, Lcom/google/android/gms/internal/si;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/si;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    goto :goto_0
.end method

.method public final zzq(Lcom/google/android/gms/internal/qr;)Z
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    iput-object v2, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    check-cast v0, Lcom/google/android/gms/internal/wr;

    iput-object v2, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    new-instance v1, Lcom/google/android/gms/internal/sj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/sj;-><init>(Lcom/google/android/gms/internal/si;Lcom/google/android/gms/internal/qr;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/wr;->zza(Lcom/google/android/gms/internal/wu;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/si;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/si;->zzq(Lcom/google/android/gms/internal/qr;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v2, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    return v1

    :cond_4
    return v3

    :cond_5
    return v1
.end method
