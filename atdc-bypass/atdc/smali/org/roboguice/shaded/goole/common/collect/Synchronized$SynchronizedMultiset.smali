.class Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedCollection<",
        "TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/Synchronized$1;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 443
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 436
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 429
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 473
    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 474
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 483
    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 484
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 493
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 497
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 499
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2

    .line 448
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 450
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
