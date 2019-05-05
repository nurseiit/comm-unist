.class final Lorg/roboguice/shaded/goole/common/collect/Multisets$5;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1063
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1063
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    check-cast p2, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multisets$5;->compare(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "*>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "*>;)I"
        }
    .end annotation

    .line 1066
    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result p2

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    invoke-static {p2, p1}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method
