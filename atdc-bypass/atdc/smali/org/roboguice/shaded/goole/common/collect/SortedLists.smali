.class final Lorg/roboguice/shaded/goole/common/collect/SortedLists;
.super Ljava/lang/Object;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;,
        Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Comparable;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;TE;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;",
            ")I"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result p0

    return p0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;TE;",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;",
            ")I"
        }
    .end annotation

    .line 258
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_0

    .line 263
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    .line 268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt v0, v1, :cond_3

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 272
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 278
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    sub-int/2addr v2, v0

    invoke-virtual {p3, p2, p1, p0, v2}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 282
    :cond_3
    invoke-virtual {p4, v0}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->resultIndex(I)I

    move-result p0

    return p0
.end method

.method public static binarySearch(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/lang/Comparable;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;)I
    .locals 6
    .param p2    # Ljava/lang/Comparable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TE;TK;>;TK;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;",
            ")I"
        }
    .end annotation

    .line 205
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/roboguice/shaded/goole/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result p0

    return p0
.end method

.method public static binarySearch(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;)I
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TE;TK;>;TK;",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;",
            "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;",
            ")I"
        }
    .end annotation

    .line 228
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Lists;->transform(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2, p3, p4, p5}, Lorg/roboguice/shaded/goole/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result p0

    return p0
.end method
