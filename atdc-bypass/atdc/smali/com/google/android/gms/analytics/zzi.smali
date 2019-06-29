.class public final Lcom/google/android/gms/analytics/zzi;
.super Ljava/lang/Object;


# instance fields
.field private final zzadQ:Lcom/google/android/gms/analytics/zzk;

.field private zzadR:Z

.field private zzadS:J

.field private zzadT:J

.field private zzadU:J

.field private zzadV:J

.field private zzadW:J

.field private zzadX:Z

.field private final zzadY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzadZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/zzi;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/analytics/zzi;->zzadQ:Lcom/google/android/gms/analytics/zzk;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadQ:Lcom/google/android/gms/analytics/zzk;

    iget-object v0, p1, Lcom/google/android/gms/analytics/zzi;->zzvw:Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzvw:Lcom/google/android/gms/common/util/zze;

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzi;->zzadS:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadS:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzi;->zzadT:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadT:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzi;->zzadU:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadU:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzi;->zzadV:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadV:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzi;->zzadW:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadW:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/analytics/zzi;->zzadZ:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadZ:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzi;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzj;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/zzj;->zzb(Lcom/google/android/gms/analytics/zzj;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzi;->zzadQ:Lcom/google/android/gms/analytics/zzk;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzi;->zzvw:Lcom/google/android/gms/common/util/zze;

    const-wide/32 p1, 0x1b7740

    iput-wide p1, p0, Lcom/google/android/gms/analytics/zzi;->zzadV:J

    const-wide p1, 0xb43e9400L

    iput-wide p1, p0, Lcom/google/android/gms/analytics/zzi;->zzadW:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzi;->zzadZ:Ljava/util/List;

    return-void
.end method

.method private static zzc(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/zzj;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/analytics/zzj;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType default constructor is not accessible"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType doesn\'t have default constructor"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/zzj;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/analytics/zzj;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/analytics/zzj;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/analytics/zzj;

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzi;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzj;->zzb(Lcom/google/android/gms/analytics/zzj;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/zzj;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzj;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzi;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final zzjp()Lcom/google/android/gms/analytics/zzi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/zzi;-><init>(Lcom/google/android/gms/analytics/zzi;)V

    return-object v0
.end method

.method public final zzjq()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zzjr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/zzo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadZ:Ljava/util/List;

    return-object v0
.end method

.method public final zzjs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadS:J

    return-wide v0
.end method

.method public final zzjt()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadQ:Lcom/google/android/gms/analytics/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzk;->zzjz()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/zzl;->zze(Lcom/google/android/gms/analytics/zzi;)V

    return-void
.end method

.method public final zzju()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadR:Z

    return v0
.end method

.method final zzjv()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadU:J

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadT:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadT:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadS:J

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadR:Z

    return-void
.end method

.method final zzjw()Lcom/google/android/gms/analytics/zzk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadQ:Lcom/google/android/gms/analytics/zzk;

    return-object v0
.end method

.method final zzjx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadX:Z

    return v0
.end method

.method final zzjy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzi;->zzadX:Z

    return-void
.end method

.method public final zzl(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/analytics/zzi;->zzadT:J

    return-void
.end method
