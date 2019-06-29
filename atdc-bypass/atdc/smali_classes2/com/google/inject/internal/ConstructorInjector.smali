.class final Lcom/google/inject/internal/ConstructorInjector;
.super Ljava/lang/Object;
.source "ConstructorInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final constructionProxy:Lcom/google/inject/internal/ConstructionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ConstructionProxy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final injectableMembers:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/inject/internal/SingleParameterInjector<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/inject/internal/ConstructionProxy;[Lcom/google/inject/internal/SingleParameterInjector;Lcom/google/inject/internal/MembersInjectorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/google/inject/internal/ConstructionProxy<",
            "TT;>;[",
            "Lcom/google/inject/internal/SingleParameterInjector<",
            "*>;",
            "Lcom/google/inject/internal/MembersInjectorImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/ConstructorInjector;->injectableMembers:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 44
    iput-object p2, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    .line 45
    iput-object p3, p0, Lcom/google/inject/internal/ConstructorInjector;->parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;

    .line 46
    iput-object p4, p0, Lcom/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ConstructorInjector;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/ConstructorInjector;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/internal/ConstructionContext<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjector;->parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;

    invoke-static {p1, p2, v0}, Lcom/google/inject/internal/SingleParameterInjector;->getAll(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;[Lcom/google/inject/internal/SingleParameterInjector;)[Ljava/lang/Object;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    invoke-interface {v1, v0}, Lcom/google/inject/internal/ConstructionProxy;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    invoke-virtual {p3, v0}, Lcom/google/inject/internal/ConstructionContext;->setProxyDelegates(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    .line 115
    invoke-virtual {p3, v0}, Lcom/google/inject/internal/ConstructionContext;->setCurrentReference(Ljava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/google/inject/internal/MembersInjectorImpl;->injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Z)V

    .line 118
    iget-object p2, p0, Lcom/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;

    invoke-virtual {p2, v0, p1}, Lcom/google/inject/internal/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    return-object v0

    :catchall_0
    move-exception p2

    .line 111
    :try_start_2
    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw p2
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 122
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    invoke-interface {v0}, Lcom/google/inject/internal/ConstructionProxy;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/inject/internal/Errors;->errorInjectingConstructor(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    :goto_0
    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    throw p1
.end method


# virtual methods
.method construct(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Class;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 65
    invoke-virtual {p2, p0}, Lcom/google/inject/internal/InternalContext;->getConstructionContext(Ljava/lang/Object;)Lcom/google/inject/internal/ConstructionContext;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->isConstructing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_0

    .line 70
    invoke-virtual {p1, p3}, Lcom/google/inject/internal/Errors;->circularProxiesDisabled(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 73
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/google/inject/internal/ConstructionContext;->createProxy(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->getCurrentReference()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    .line 84
    :cond_2
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->startConstruction()V

    .line 87
    :try_start_0
    invoke-virtual {p5}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->hasListeners()Z

    move-result p3

    if-nez p3, :cond_3

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/google/inject/internal/ConstructorInjector;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    return-object p1

    .line 90
    :cond_3
    :try_start_1
    new-instance p3, Lcom/google/inject/internal/ConstructorInjector$1;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/inject/internal/ConstructorInjector$1;-><init>(Lcom/google/inject/internal/ConstructorInjector;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)V

    invoke-virtual {p5, p1, p2, p3}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw p1
.end method

.method getConstructionProxy()Lcom/google/inject/internal/ConstructionProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ConstructionProxy<",
            "TT;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    return-object v0
.end method

.method public getInjectableMembers()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjector;->injectableMembers:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method
