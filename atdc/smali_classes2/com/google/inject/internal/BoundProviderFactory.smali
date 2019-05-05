.class final Lcom/google/inject/internal/BoundProviderFactory;
.super Lcom/google/inject/internal/ProviderInternalFactory;
.source "BoundProviderFactory.java"

# interfaces
.implements Lcom/google/inject/internal/CreationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ProviderInternalFactory<",
        "TT;>;",
        "Lcom/google/inject/internal/CreationListener;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private providerFactory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final providerKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;-><init>(Ljava/lang/Object;Z)V

    const-string p3, "provisionCallback"

    .line 44
    invoke-static {p5, p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/inject/internal/ProvisionListenerStackCallback;

    iput-object p3, p0, Lcom/google/inject/internal/BoundProviderFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .line 45
    iput-object p1, p0, Lcom/google/inject/internal/BoundProviderFactory;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 46
    iput-object p2, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency<",
            "*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/internal/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/google/inject/internal/InternalContext;->pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    .line 62
    iget-object p1, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerFactory:Lcom/google/inject/internal/InternalFactory;

    const/4 v0, 0x1

    invoke-interface {p1, v3, p2, p3, v0}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljavax/inject/Provider;

    .line 63
    iget-object v7, p0, Lcom/google/inject/internal/BoundProviderFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/inject/internal/BoundProviderFactory;->circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    throw p1
.end method

.method public notify(Lcom/google/inject/internal/Errors;)V
    .locals 4

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/internal/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    sget-object v3, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/inject/internal/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerFactory:Lcom/google/inject/internal/InternalFactory;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    :goto_0
    return-void
.end method

.method protected provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/spi/Dependency<",
            "*>;",
            "Lcom/google/inject/internal/ConstructionContext<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
