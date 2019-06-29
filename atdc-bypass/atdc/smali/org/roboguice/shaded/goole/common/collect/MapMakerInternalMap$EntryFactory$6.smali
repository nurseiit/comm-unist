.class final enum Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$6;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 0
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
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 423
    invoke-super {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    .line 424
    invoke-virtual {p0, p2, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$6;->copyExpirableEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object p1
.end method

.method newEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .param p4    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 417
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method
