.class final Lcom/google/inject/internal/DeferredLookups;
.super Ljava/lang/Object;
.source "DeferredLookups.java"

# interfaces
.implements Lcom/google/inject/internal/Lookups;


# instance fields
.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final lookups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/google/inject/internal/DeferredLookups;->injector:Lcom/google/inject/internal/InjectorImpl;

    return-void
.end method


# virtual methods
.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/inject/spi/MembersInjectorLookup;

    invoke-direct {v0, p1, p1}, Lcom/google/inject/spi/MembersInjectorLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;)V

    .line 60
    iget-object p1, p0, Lcom/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v0}, Lcom/google/inject/spi/MembersInjectorLookup;->getMembersInjector()Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/google/inject/spi/ProviderLookup;

    invoke-direct {v0, p1, p1}, Lcom/google/inject/spi/ProviderLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 54
    iget-object p1, p0, Lcom/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v0}, Lcom/google/inject/spi/ProviderLookup;->getProvider()Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method initialize(Lcom/google/inject/internal/Errors;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/inject/internal/DeferredLookups;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/DeferredLookups;->injector:Lcom/google/inject/internal/InjectorImpl;

    iput-object v1, v0, Lcom/google/inject/internal/InjectorImpl;->lookups:Lcom/google/inject/internal/Lookups;

    .line 49
    new-instance v0, Lcom/google/inject/internal/LookupProcessor;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/LookupProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object p1, p0, Lcom/google/inject/internal/DeferredLookups;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/google/inject/internal/LookupProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    return-void
.end method
