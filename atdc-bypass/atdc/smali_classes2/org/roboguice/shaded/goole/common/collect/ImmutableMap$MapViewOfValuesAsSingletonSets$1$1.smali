.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

.field final synthetic val$backingIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Iterator;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TV;>;>;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 490
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method
