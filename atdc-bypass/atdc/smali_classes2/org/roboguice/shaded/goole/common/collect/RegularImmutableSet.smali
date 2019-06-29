.class final Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.source "RegularImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;

.field private final transient hashCode:I

.field private final transient mask:I

.field final transient table:[Ljava/lang/Object;
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    .line 40
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 41
    iput p4, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->mask:I

    .line 42
    iput p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->hashCode:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 50
    :goto_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    iget v3, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->mask:I

    and-int/2addr v3, v1

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    return v0

    .line 54
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr p2, p1

    return p2
.end method

.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->hashCode:I

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
