.class final Lcom/google/inject/internal/ScopeBindingProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "ScopeBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;
    .locals 3

    .line 39
    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v0

    const-string v1, "scope"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Scope;

    .line 40
    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "annotation type"

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 42
    invoke-static {v1}, Lcom/google/inject/internal/Annotations;->isScopeAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v2, v1}, Lcom/google/inject/internal/Errors;->missingScopeAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 47
    :cond_0
    invoke-static {v1}, Lcom/google/inject/internal/Annotations;->isRetainedAtRuntime(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v2, v1}, Lcom/google/inject/internal/Errors;->missingRuntimeRetention(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2, v1}, Lcom/google/inject/internal/State;->getScopeBinding(Ljava/lang/Class;)Lcom/google/inject/spi/ScopeBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v2}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/inject/internal/Errors;->duplicateScopes(Lcom/google/inject/spi/ScopeBinding;Ljava/lang/Class;Lcom/google/inject/Scope;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, v1, p1}, Lcom/google/inject/internal/State;->putScopeBinding(Ljava/lang/Class;Lcom/google/inject/spi/ScopeBinding;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ScopeBindingProcessor;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
