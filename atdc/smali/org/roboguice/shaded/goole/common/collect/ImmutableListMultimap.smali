.class public Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.source "ImmutableListMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<",
        "TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private transient inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 272
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    return-void
.end method

.method public static builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 242
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0

    .line 247
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_1

    .line 249
    move-object v0, p0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    .line 251
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 256
    :cond_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 260
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 263
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    .line 264
    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 268
    :cond_3
    new-instance p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    return-object p0
.end method

.method private invert()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 308
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    .line 313
    iput-object p0, v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 74
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 84
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 85
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 96
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 97
    invoke-virtual {v0, p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 98
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 109
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 110
    invoke-virtual {v0, p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 111
    invoke-virtual {v0, p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 112
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 123
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 124
    invoke-virtual {v0, p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 125
    invoke-virtual {v0, p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 126
    invoke-virtual {v0, p8, p9}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    .line 127
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .line 351
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 352
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    .line 354
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 361
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 362
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    if-gtz v6, :cond_1

    .line 364
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_1
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    .line 369
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 371
    :cond_2
    invoke-static {v7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    sget-object p1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    invoke-virtual {p1, p0, v4}, Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    return-void

    :catch_0
    move-exception p1

    .line 379
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InvalidObjectException;

    throw p1
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

    .line 344
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 345
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->writeMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    if-nez p1, :cond_0

    .line 286
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->invert()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
