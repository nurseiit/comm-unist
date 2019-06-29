.class public final Lorg/roboguice/shaded/goole/common/collect/HashMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;
.source "HashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final DEFAULT_VALUES_PER_KEY:I = 0x2

.field private static final serialVersionUID:J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source"
    .end annotation
.end field


# instance fields
.field transient expectedValuesPerKey:I
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 95
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    .line 53
    iput p1, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    iput p2, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    return-void
.end method

.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 103
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Z

    return-void
.end method

.method public static create()Lorg/roboguice/shaded/goole/common/collect/HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;-><init>()V

    return-object v0
.end method

.method public static create(II)Lorg/roboguice/shaded/goole/common/collect/HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 134
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 135
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->setMap(Ljava/util/Map;)V

    .line 137
    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->populateMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 125
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 126
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->writeMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 114
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
