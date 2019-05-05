.class final Lcom/google/inject/internal/InjectionRequestProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "InjectionRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
    }
.end annotation


# instance fields
.field private final initializer:Lcom/google/inject/internal/Initializer;

.field private final staticInjections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/Initializer;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 39
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->initializer:Lcom/google/inject/internal/Initializer;

    return-void
.end method


# virtual methods
.method injectMembers()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    .line 79
    invoke-virtual {v1}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injectMembers()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method validate()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    .line 68
    invoke-virtual {v1}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->validate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionRequest<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getInjectionPoints()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 58
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->initializer:Lcom/google/inject/internal/Initializer;

    iget-object v2, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/google/inject/internal/Initializer;->requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;

    const/4 p1, 0x1

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    new-instance v1, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    iget-object v2, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-direct {v1, p0, v2, p1}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;-><init>(Lcom/google/inject/internal/InjectionRequestProcessor;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/StaticInjectionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectionRequestProcessor;->visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectionRequestProcessor;->visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
