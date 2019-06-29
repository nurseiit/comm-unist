.class Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;,
        Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,
        Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;,
        Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;,
        Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V

    .line 52
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    return-void
.end method


# virtual methods
.method createSegment(II)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    invoke-direct {v0, p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method getOrCompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    .line 66
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 67
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v1, p1, v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getOrCompute(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/base/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    return-object p1
.end method

.method bridge synthetic segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 15

    .line 382
    new-instance v14, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->expireAfterWriteNanos:J

    iget-wide v7, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->expireAfterAccessNanos:J

    iget v9, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->maximumSize:I

    iget v10, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->concurrencyLevel:I

    iget-object v11, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    iget-object v13, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    move-object v0, v14

    move-object v12, p0

    invoke-direct/range {v0 .. v13}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v14
.end method
