.class abstract Lcom/google/inject/internal/ProviderInternalFactory;
.super Ljava/lang/Object;
.source "ProviderInternalFactory.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final allowProxy:Z

.field protected final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source"

    .line 39
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/ProviderInternalFactory;->source:Ljava/lang/Object;

    .line 40
    iput-boolean p2, p0, Lcom/google/inject/internal/ProviderInternalFactory;->allowProxy:Z

    return-void
.end method


# virtual methods
.method protected circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency<",
            "*>;Z",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 47
    invoke-virtual {p4}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p5

    .line 48
    invoke-virtual {p3, p0}, Lcom/google/inject/internal/InternalContext;->getConstructionContext(Ljava/lang/Object;)Lcom/google/inject/internal/ConstructionContext;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Lcom/google/inject/internal/ConstructionContext;->isConstructing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-boolean p1, p0, Lcom/google/inject/internal/ProviderInternalFactory;->allowProxy:Z

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p2, p5}, Lcom/google/inject/internal/Errors;->circularProxiesDisabled(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 57
    :cond_0
    invoke-virtual {v6, p2, p5}, Lcom/google/inject/internal/ConstructionContext;->createProxy(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :cond_1
    invoke-virtual {v6}, Lcom/google/inject/internal/ConstructionContext;->startConstruction()V

    .line 65
    :try_start_0
    invoke-virtual {p6}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->hasListeners()Z

    move-result p5

    if-nez p5, :cond_2

    .line 66
    invoke-virtual {p0, p1, p2, p4, v6}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    invoke-virtual {v6}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    .line 76
    invoke-virtual {v6}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    return-object p1

    .line 68
    :cond_2
    :try_start_1
    new-instance p5, Lcom/google/inject/internal/ProviderInternalFactory$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/ProviderInternalFactory$1;-><init>(Lcom/google/inject/internal/ProviderInternalFactory;Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)V

    invoke-virtual {p6, p2, p3, p5}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 75
    invoke-virtual {v6}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    .line 76
    invoke-virtual {v6}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw p1
.end method

.method protected provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 1
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

    .line 86
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/inject/internal/ProviderInternalFactory;->source:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/inject/internal/Errors;->checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object p1

    .line 87
    invoke-virtual {p4, p1}, Lcom/google/inject/internal/ConstructionContext;->setProxyDelegates(Ljava/lang/Object;)V

    return-object p1
.end method
