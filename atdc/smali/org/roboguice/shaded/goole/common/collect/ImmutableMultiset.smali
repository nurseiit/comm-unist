.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$SerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
        "TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final EMPTY:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient entrySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->EMPTY:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 466
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;-><init>()V

    return-object v0
.end method

.method static copyFromEntries(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "+TE;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 201
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 202
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 203
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 207
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    int-to-long v5, v6

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_0

    :cond_1
    cmp-long p0, v3, v1

    if-nez p0, :cond_2

    .line 213
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0

    .line 215
    :cond_2
    new-instance p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 174
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_0

    .line 176
    move-object v0, p0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    .line 177
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 182
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    move-result-object p0

    .line 186
    :goto_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 231
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->create()Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 232
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 233
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method private static copyOfInternal(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 195
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method private static varargs copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method private final createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;)V

    :goto_0
    return-object v0
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->EMPTY:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 107
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not present in emulated superclass"
    .end annotation

    .line 323
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 324
    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 325
    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 331
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract getEntry(I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 240
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 458
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-object v0
.end method
