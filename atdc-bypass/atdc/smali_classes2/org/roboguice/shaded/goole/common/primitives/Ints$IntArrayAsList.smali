.class Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[I

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([I)V
    .locals 2

    .line 525
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    return-void
.end method

.method constructor <init>([III)V
    .locals 0

    .line 528
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 529
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    .line 530
    iput p2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    .line 531
    iput p3, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->end:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 549
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, p1, v1, v2}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->access$000([IIII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 596
    :cond_0
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;

    if-eqz v1, :cond_4

    .line 597
    check-cast p1, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;

    .line 598
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 599
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 603
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v5, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p1, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v6, p1, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 609
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 2

    .line 543
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkElementIndex(II)I

    .line 544
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 517
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 614
    iget v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 615
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v2, v2, v0

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 555
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, p1, v1, v2}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->access$000([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 558
    iget v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    .line 566
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, p1, v1, v2}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->access$100([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 569
    iget v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .line 576
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkElementIndex(II)I

    .line 577
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    .line 579
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v1, v2

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 517
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 535
    iget v0, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->end:I

    iget v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 585
    invoke-static {p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 589
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v2, p1

    iget p1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr p1, p2

    invoke-direct {v0, v1, v2, p1}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    return-object v0
.end method

.method toIntArray()[I
    .locals 5

    .line 631
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 632
    new-array v1, v0, [I

    .line 633
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    iget v1, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->start:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method