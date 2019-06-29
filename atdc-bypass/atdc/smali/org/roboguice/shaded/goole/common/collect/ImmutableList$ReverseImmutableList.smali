.class Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;-><init>()V

    .line 517
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method private reverseIndex(I)I
    .locals 1

    .line 521
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private reversePosition(I)I
    .locals 1

    .line 525
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 533
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkElementIndex(II)I

    .line 554
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 537
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 538
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method isPartialView()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 513
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 542
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 543
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 513
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 513
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 547
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 548
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result p2

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->reverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
