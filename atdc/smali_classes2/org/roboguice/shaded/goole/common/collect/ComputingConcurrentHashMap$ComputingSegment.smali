.class final Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;II)V

    return-void
.end method


# virtual methods
.method compute(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingValueReference<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 181
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 182
    :try_start_1
    invoke-virtual {p4, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->compute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_0

    const/4 p3, 0x1

    .line 187
    :try_start_4
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 190
    sget-object p3, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    cmp-long p3, v4, v0

    if-nez p3, :cond_1

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :cond_1
    if-nez v3, :cond_2

    .line 199
    invoke-virtual {p0, p1, p2, p4}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)Z

    :cond_2
    return-object v3

    :catchall_0
    move-exception v2

    move-wide v4, v0

    goto :goto_0

    :catchall_1
    move-exception v3

    move-wide v4, v0

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 184
    :goto_0
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p3

    goto :goto_1

    :catchall_3
    move-exception v2

    goto :goto_0

    :catchall_4
    move-exception p3

    move-wide v4, v0

    move-object v3, v2

    :goto_1
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :cond_3
    if-nez v3, :cond_4

    .line 199
    invoke-virtual {p0, p1, p2, p4}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)Z

    :cond_4
    throw p3
.end method

.method getOrCompute(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/base/Function;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getLiveValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    return-object v1

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 92
    :try_start_1
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_2
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->preWriteCleanup()V

    .line 99
    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    sub-int/2addr v2, v1

    .line 100
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 101
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    sub-int/2addr v4, v1

    and-int/2addr v4, p2

    .line 102
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_7

    .line 105
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 106
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_6

    if-eqz v7, :cond_6

    iget-object v8, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 108
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 109
    invoke-interface {v8}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 112
    :cond_3
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    invoke-interface {v8}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 114
    sget-object v9, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v7, p2, v8, v9}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;)V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v9, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v9}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expires()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v9, v6}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->isExpired(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 118
    sget-object v9, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v7, p2, v8, v9}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;)V

    .line 125
    :goto_1
    iget-object v7, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v7, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 127
    iput v2, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {p0, v6}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordLockedRead(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    return-object v8

    .line 104
    :cond_6
    :try_start_4
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v6

    goto :goto_0

    :cond_7
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_9

    .line 134
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingValueReference;

    invoke-direct {v0, p3}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;)V

    if-nez v6, :cond_8

    .line 137
    invoke-virtual {p0, p1, p2, v5}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v5

    .line 138
    invoke-interface {v5, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 139
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move-object v0, v5

    goto :goto_4

    .line 141
    :cond_8
    invoke-interface {v6, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    move-object v3, v0

    move-object v0, v6

    .line 145
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    if-eqz v2, :cond_a

    .line 151
    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->compute(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    return-object p1

    .line 156
    :cond_a
    :try_start_6
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    const-string v2, "Recursive computation"

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 158
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 167
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    return-object v1

    :catchall_0
    move-exception p1

    .line 145
    :try_start_7
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 167
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    throw p1
.end method
