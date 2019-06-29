.class Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Predicate<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 299
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;->apply(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Z

    move-result p1

    return p1
.end method

.method public apply(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;)Z"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
