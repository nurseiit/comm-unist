.class Lcom/google/inject/internal/ProvidedByInternalFactory;
.super Lcom/google/inject/internal/ProviderInternalFactory;
.source "ProvidedByInternalFactory.java"

# interfaces
.implements Lcom/google/inject/internal/DelayedInitialize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ProviderInternalFactory<",
        "TT;>;",
        "Lcom/google/inject/internal/DelayedInitialize;"
    }
.end annotation


# instance fields
.field private providerBinding:Lcom/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/BindingImpl<",
            "+",
            "Lcom/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final providerKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "+",
            "Lcom/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final providerType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/inject/Provider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/inject/Key;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/inject/Provider<",
            "*>;>;",
            "Lcom/google/inject/Key<",
            "+",
            "Lcom/google/inject/Provider<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;-><init>(Ljava/lang/Object;Z)V

    .line 48
    iput-object p1, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->rawType:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerType:Ljava/lang/Class;

    .line 50
    iput-object p3, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "not initialized"

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v2}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/inject/internal/InternalContext;->pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v4

    .line 69
    iget-object p1, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object p1

    invoke-interface {p1, v4, p2, p3, v1}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/inject/Provider;

    .line 71
    iget-object v8, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/inject/internal/ProvidedByInternalFactory;->circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    throw p1
.end method

.method public initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

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

    .line 82
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p3, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->rawType:Ljava/lang/Class;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 84
    iget-object p1, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerType:Ljava/lang/Class;

    iget-object p3, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->rawType:Ljava/lang/Class;

    invoke-virtual {p2, p1, p3}, Lcom/google/inject/internal/Errors;->subtypeNotProvided(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method setProvisionListenerCallback(Lcom/google/inject/internal/ProvisionListenerStackCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    return-void
.end method
