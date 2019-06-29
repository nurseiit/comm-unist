.class final enum Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength$3;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->identity()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method referenceValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 325
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakValueReference;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method
