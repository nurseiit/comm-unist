.class final Lorg/roboguice/shaded/goole/common/collect/Sets$3;
.super Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Sets$SetView<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$notInSet2:Lorg/roboguice/shaded/goole/common/base/Predicate;

.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;Ljava/util/Set;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$notInSet2:Lorg/roboguice/shaded/goole/common/base/Predicate;

    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;-><init>(Lorg/roboguice/shaded/goole/common/collect/Sets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 689
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->val$notInSet2:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 686
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$3;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
