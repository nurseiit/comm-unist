.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final originalDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 1

    .line 458
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 459
    iget-object v0, p1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->access$100(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)V"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 463
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method getDelegateIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 498
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 479
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 480
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 486
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 492
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->access$210(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;)I

    .line 493
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void
.end method

.method validateIterator()V
    .locals 2

    .line 471
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 472
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    .line 473
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
