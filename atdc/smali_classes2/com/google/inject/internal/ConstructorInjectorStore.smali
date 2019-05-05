.class final Lcom/google/inject/internal/ConstructorInjectorStore;
.super Ljava/lang/Object;
.source "ConstructorInjectorStore.java"


# instance fields
.field private final cache:Lcom/google/inject/internal/FailableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/FailableCache<",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Lcom/google/inject/internal/ConstructorInjector<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/internal/InjectorImpl;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/inject/internal/ConstructorInjectorStore$1;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ConstructorInjectorStore$1;-><init>(Lcom/google/inject/internal/ConstructorInjectorStore;)V

    iput-object v0, p0, Lcom/google/inject/internal/ConstructorInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    .line 42
    iput-object p1, p0, Lcom/google/inject/internal/ConstructorInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ConstructorInjectorStore;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ConstructorInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/ConstructorInjectorStore;->createConstructor(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object p0

    return-object p0
.end method

.method private createConstructor(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ConstructorInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/ConstructorInjector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/inject/internal/ConstructorInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/inject/internal/InjectorImpl;->getParametersInjectors(Ljava/util/List;Lcom/google/inject/internal/Errors;)[Lcom/google/inject/internal/SingleParameterInjector;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/google/inject/internal/ConstructorInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/google/inject/TypeLiteral;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/inject/internal/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/google/inject/internal/DefaultConstructionProxyFactory;

    invoke-direct {v3, p1}, Lcom/google/inject/internal/DefaultConstructionProxyFactory;-><init>(Lcom/google/inject/spi/InjectionPoint;)V

    .line 88
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 90
    new-instance p1, Lcom/google/inject/internal/ConstructorInjector;

    invoke-virtual {v2}, Lcom/google/inject/internal/MembersInjectorImpl;->getInjectionPoints()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p2

    invoke-interface {v3}, Lcom/google/inject/internal/ConstructionProxyFactory;->create()Lcom/google/inject/internal/ConstructionProxy;

    move-result-object v0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/google/inject/internal/ConstructorInjector;-><init>(Ljava/util/Set;Lcom/google/inject/internal/ConstructionProxy;[Lcom/google/inject/internal/SingleParameterInjector;Lcom/google/inject/internal/MembersInjectorImpl;)V

    return-object p1
.end method


# virtual methods
.method public get(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ConstructorInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/ConstructorInjector<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/FailableCache;->get(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/internal/ConstructorInjector;

    return-object p1
.end method

.method remove(Lcom/google/inject/spi/InjectionPoint;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/FailableCache;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
