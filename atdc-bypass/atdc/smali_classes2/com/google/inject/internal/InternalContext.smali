.class final Lcom/google/inject/internal/InternalContext;
.super Ljava/lang/Object;
.source "InternalContext.java"


# instance fields
.field private constructionContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/ConstructionContext<",
            "*>;>;"
        }
    .end annotation
.end field

.field private dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    .line 50
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConstructionContext(Ljava/lang/Object;)Lcom/google/inject/internal/ConstructionContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/ConstructionContext<",
            "TT;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ConstructionContext;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/inject/internal/ConstructionContext;

    invoke-direct {v0}, Lcom/google/inject/internal/ConstructionContext;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getDependency()Lcom/google/inject/spi/Dependency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    return-object v0
.end method

.method public getDependencyChain()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/DependencyAndSource;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    new-instance v2, Lcom/google/inject/spi/DependencyAndSource;

    iget-object v3, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/spi/Dependency;

    iget-object v4, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/inject/spi/DependencyAndSource;-><init>(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public popState()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Dependency<",
            "*>;)V"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/inject/internal/InternalContext;->popState()V

    .line 79
    iput-object p1, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    return-void
.end method

.method public pushDependency(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)Lcom/google/inject/spi/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Dependency<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    .line 70
    iput-object p1, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    .line 71
    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
