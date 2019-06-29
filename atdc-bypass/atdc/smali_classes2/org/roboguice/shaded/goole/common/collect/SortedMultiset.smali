.class public interface abstract Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
.super Ljava/lang/Object;
.source "SortedMultiset.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SortedMultisetBridge;
.implements Lorg/roboguice/shaded/goole/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/collect/SortedMultisetBridge<",
        "TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# virtual methods
.method public abstract comparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end method

.method public abstract descendingMultiset()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract elementSet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract firstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollFirstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollLastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract subMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method
