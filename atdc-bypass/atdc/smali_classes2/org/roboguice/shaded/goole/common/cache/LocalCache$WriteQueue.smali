.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3591
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3592
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 3694
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3695
    :goto_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3696
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3697
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullifyWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    move-object v0, v1

    goto :goto_0

    .line 3701
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3702
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 3673
    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3674
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 3679
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3707
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$2;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->peek()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$2;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3591
    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->offer(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Z

    move-result p1

    return p1
.end method

.method public offer(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3632
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3635
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3636
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 3591
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->peek()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3643
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3644
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 3591
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->poll()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3649
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3650
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3654
    :cond_0
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 3661
    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3662
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3663
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3664
    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3665
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullifyWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3667
    sget-object p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;

    if-eq v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 3

    .line 3685
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3686
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
