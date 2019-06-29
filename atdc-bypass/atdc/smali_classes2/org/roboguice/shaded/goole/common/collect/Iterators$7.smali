.class final Lorg/roboguice/shaded/goole/common/collect/Iterators$7;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$7;->val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$7;->val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 651
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators$7;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
