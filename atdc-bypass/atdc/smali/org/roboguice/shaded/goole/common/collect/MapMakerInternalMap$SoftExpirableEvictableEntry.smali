.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoftExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<",
        "TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .param p4    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1353
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1358
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->time:J

    .line 1370
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1383
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1398
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1411
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .line 1362
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->time:J

    return-wide v0
.end method

.method public getNextEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1403
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0

    .line 1367
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->time:J

    return-void
.end method

.method public setNextEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1408
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method

.method public setNextExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1380
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method

.method public setPreviousEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1421
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method

.method public setPreviousExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1393
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method
