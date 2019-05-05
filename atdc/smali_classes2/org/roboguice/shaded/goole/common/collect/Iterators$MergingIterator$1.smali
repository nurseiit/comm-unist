.class Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;

.field final synthetic val$itemComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;Ljava/util/Comparator;)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1270
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;

    check-cast p2, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;

    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->compare(Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator<",
            "TT;>;",
            "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator<",
            "TT;>;)I"
        }
    .end annotation

    .line 1273
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
