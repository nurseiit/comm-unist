.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractSequentialIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractSequentialIterator<",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0

    .line 3844
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3844
    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;->computeNext(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method protected computeNext(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3847
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    .line 3848
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
