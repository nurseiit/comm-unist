.class public final Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;
.source "LinkedHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->capacity(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static create()Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;-><init>()V

    return-object v0
.end method

.method public static create(I)Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->inferDistinctElements(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->create(I)Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 78
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 105
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 106
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->capacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->setBackingMap(Ljava/util/Map;)V

    .line 108
    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->populateMultiset(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 98
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->writeMultiset(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
