.class public abstract Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method public static from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 90
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$1;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$1;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static from(Lorg/roboguice/shaded/goole/common/collect/FluentIterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    return-object p0
.end method


# virtual methods
.method public final allMatch(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->all(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->any(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 133
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final copyInto(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "-TE;>;>(TC;)TC;"
        }
    .end annotation

    .line 448
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v0, v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 453
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public final cycle()Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public final first()Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Optional;->absent()Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final firstMatch(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->tryFind(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final index(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TE;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TE;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->index(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final last()Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    check-cast v0, Ljava/util/List;

    .line 255
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Optional;->absent()Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    return-object v0

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Optional;->absent()Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    return-object v0

    .line 270
    :cond_2
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v1, v1, Ljava/util/SortedSet;

    if-eqz v1, :cond_3

    .line 271
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    check-cast v0, Ljava/util/SortedSet;

    .line 272
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    return-object v0

    .line 276
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final limit(I)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final skip(I)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public final toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Array.newArray(Class, int)"
    .end annotation

    .line 436
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TE;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TE;TV;>;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->toMap(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public final toSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 348
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object p1

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedSet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TE;TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public transformAndConcat(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TE;+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->transform(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public final uniqueIndex(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TE;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TE;>;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->uniqueIndex(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method
