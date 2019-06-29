.class public final Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 224
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 216
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 167
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 178
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 183
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 188
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
