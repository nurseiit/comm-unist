.class public final Lcom/google/inject/internal/PrivateElementsImpl;
.super Ljava/lang/Object;
.source "PrivateElementsImpl.java"

# interfaces
.implements Lcom/google/inject/spi/PrivateElements;


# instance fields
.field private elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private elementsMutable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private exposureBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/internal/ExposureBuilder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private injector:Lcom/google/inject/Injector;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 54
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    const-string v0, "source"

    .line 64
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 103
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addExposureBuilder(Lcom/google/inject/internal/ExposureBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ExposureBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/spi/Element;

    .line 118
    invoke-interface {v1, p1}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 122
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Key;

    invoke-interface {v2, v1}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method public getElementsMutable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    return-object v0
.end method

.method public getExposedKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/Key<",
            "*>;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/internal/ExposureBuilder;

    .line 93
    invoke-virtual {v2}, Lcom/google/inject/internal/ExposureBuilder;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/inject/internal/ExposureBuilder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 129
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "%s not exposed by %s."

    const/4 v5, 0x2

    .line 130
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v2

    invoke-static {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getInjector()Lcom/google/inject/Injector;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public initInjector(Lcom/google/inject/Injector;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "injector already initialized"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "injector"

    .line 86
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/Injector;

    iput-object p1, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    const-class v0, Lcom/google/inject/spi/PrivateElements;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "exposedKeys"

    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
