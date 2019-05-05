.class final Lcom/google/inject/internal/WeakKeySet;
.super Ljava/lang/Object;
.source "WeakKeySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/WeakKeySet$KeyAndSource;
    }
.end annotation


# instance fields
.field private backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final evictionCache:Lorg/roboguice/shaded/goole/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Cache<",
            "Lcom/google/inject/internal/State;",
            "Ljava/util/Set<",
            "Lcom/google/inject/internal/WeakKeySet$KeyAndSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weakKeys()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/inject/internal/WeakKeySet$1;

    invoke-direct {v1, p0}, Lcom/google/inject/internal/WeakKeySet$1;-><init>(Lcom/google/inject/internal/WeakKeySet;)V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener(Lorg/roboguice/shaded/goole/common/cache/RemovalListener;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->evictionCache:Lorg/roboguice/shaded/goole/common/cache/Cache;

    .line 87
    iput-object p1, p0, Lcom/google/inject/internal/WeakKeySet;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/WeakKeySet;Ljava/util/Set;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/inject/internal/WeakKeySet;->cleanUpForCollectedState(Ljava/util/Set;)V

    return-void
.end method

.method private cleanUpForCollectedState(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/inject/internal/WeakKeySet$KeyAndSource;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;

    .line 75
    iget-object v2, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v2, :cond_0

    .line 77
    iget-object v3, v1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    iget-object v1, v1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public add(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/internal/State;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    .line 96
    :cond_0
    instance-of v0, p3, Ljava/lang/Class;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-ne p3, v0, :cond_2

    :cond_1
    const/4 p3, 0x0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-nez v0, :cond_3

    .line 101
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->create()Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3
    invoke-static {p3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 105
    invoke-interface {v0, p3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {p2}, Lcom/google/inject/internal/State;->parent()Lcom/google/inject/internal/State;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/State;->NONE:Lcom/google/inject/internal/State;

    if-eq v0, v1, :cond_5

    .line 109
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->evictionCache:Lorg/roboguice/shaded/goole/common/cache/Cache;

    invoke-interface {v0, p2}, Lorg/roboguice/shaded/goole/common/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->evictionCache:Lorg/roboguice/shaded/goole/common/cache/Cache;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/roboguice/shaded/goole/common/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 113
    :cond_4
    new-instance p2, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;

    invoke-direct {p2, p1, p3}, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;-><init>(Lcom/google/inject/Key;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public contains(Lcom/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->evictionCache:Lorg/roboguice/shaded/goole/common/cache/Cache;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/Cache;->cleanUp()V

    .line 119
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSources(Lcom/google/inject/Key;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->evictionCache:Lorg/roboguice/shaded/goole/common/cache/Cache;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/Cache;->cleanUp()V

    .line 124
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    return-object v1
.end method
