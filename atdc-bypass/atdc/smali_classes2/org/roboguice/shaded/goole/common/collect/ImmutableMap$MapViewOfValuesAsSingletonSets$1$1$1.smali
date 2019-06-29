.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapEntry;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapEntry<",
        "TK;",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

.field final synthetic val$backingEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;Ljava/util/Map$Entry;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 490
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;->getValue()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
