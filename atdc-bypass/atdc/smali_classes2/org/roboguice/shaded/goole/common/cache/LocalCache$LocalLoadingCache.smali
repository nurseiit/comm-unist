.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;
.source "LocalCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/LoadingCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalLoadingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<",
        "TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/cache/LoadingCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "-TK;-TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 4814
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-direct {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 4845
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4821
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4835
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->getAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 4827
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4829
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 4840
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refresh(Ljava/lang/Object;)V

    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 4854
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-object v0
.end method
