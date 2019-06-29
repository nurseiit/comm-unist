.class abstract Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not needed in emulated source."
    .end annotation
.end field


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;-><init>()V

    .line 62
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 63
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;->size()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    return-void
.end method

.method static synthetic access$000(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$110(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;)J
    .locals 6

    .line 48
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;J)J
    .locals 4

    .line 48
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    sub-long v2, v0, p1

    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v2
.end method

.method private static getAndSet(Lorg/roboguice/shaded/goole/common/collect/Count;I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Count;->getAndSet(I)I

    move-result p0

    return p0
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectStreamException"
    .end annotation

    .line 296
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "occurrences cannot be negative: %s"

    .line 218
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Count;

    if-nez v2, :cond_2

    .line 224
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/Count;

    invoke-direct {v2, p2}, Lorg/roboguice/shaded/goole/common/collect/Count;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_2

    .line 226
    :cond_2
    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/Count;->get()I

    move-result p1

    int-to-long v3, p1

    int-to-long v5, p2

    add-long v7, v3, v5

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v7, v3

    if-gtz v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const-string v4, "too many occurrences: %s"

    .line 228
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v3, v4, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v2, p2}, Lorg/roboguice/shaded/goole/common/collect/Count;->getAndAdd(I)I

    .line 232
    :goto_2
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v2, p2

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    return p1
.end method

.method public clear()V
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/Count;

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Count;->set(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Count;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/Count;->get()I

    move-result p1

    :goto_0
    return p1
.end method

.method distinctElements()I
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 82
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "occurrences cannot be negative: %s"

    .line 240
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Count;

    if-nez v0, :cond_2

    return v1

    .line 247
    :cond_2
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Count;->get()I

    move-result v1

    if-le v1, p2, :cond_3

    goto :goto_1

    .line 254
    :cond_3
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    :goto_1
    neg-int p1, p2

    .line 257
    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Count;->addAndGet(I)I

    .line 258
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long p1, p2

    sub-long v4, v2, p1

    iput-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    return v1
.end method

.method setBackingMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 264
    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 269
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Count;

    .line 270
    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->getAndSet(Lorg/roboguice/shaded/goole/common/collect/Count;I)I

    move-result p1

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Count;

    .line 273
    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->getAndSet(Lorg/roboguice/shaded/goole/common/collect/Count;I)I

    move-result v1

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/Count;

    invoke-direct {v2, p2}, Lorg/roboguice/shaded/goole/common/collect/Count;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move p1, v1

    .line 280
    :goto_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int/2addr p2, p1

    int-to-long v2, p2

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    return p1
.end method

.method public size()I
    .locals 2

    .line 147
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
