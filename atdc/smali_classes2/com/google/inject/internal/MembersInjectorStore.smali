.class final Lcom/google/inject/internal/MembersInjectorStore;
.super Ljava/lang/Object;
.source "MembersInjectorStore.java"


# instance fields
.field private final cache:Lcom/google/inject/internal/FailableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/FailableCache<",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/google/inject/internal/MembersInjectorImpl<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final typeListenerBindings:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/inject/internal/MembersInjectorStore$1;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/MembersInjectorStore$1;-><init>(Lcom/google/inject/internal/MembersInjectorStore;)V

    iput-object v0, p0, Lcom/google/inject/internal/MembersInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    .line 51
    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 52
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorStore;->typeListenerBindings:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/MembersInjectorStore;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/MembersInjectorStore;->createWithListeners(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object p0

    return-object p0
.end method

.method private createWithListeners(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 89
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 93
    :try_start_0
    invoke-static {p1}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 96
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 98
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/google/inject/internal/MembersInjectorStore;->getInjectors(Ljava/util/Set;Lcom/google/inject/internal/Errors;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    .line 99
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 101
    new-instance v2, Lcom/google/inject/internal/EncounterImpl;

    iget-object v3, p0, Lcom/google/inject/internal/MembersInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, v3, Lcom/google/inject/internal/InjectorImpl;->lookups:Lcom/google/inject/internal/Lookups;

    invoke-direct {v2, p2, v3}, Lcom/google/inject/internal/EncounterImpl;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/Lookups;)V

    .line 102
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 103
    iget-object v4, p0, Lcom/google/inject/internal/MembersInjectorStore;->typeListenerBindings:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/spi/TypeListenerBinding;

    .line 104
    invoke-virtual {v5}, Lcom/google/inject/spi/TypeListenerBinding;->getListener()Lcom/google/inject/spi/TypeListener;

    move-result-object v6

    .line 105
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lcom/google/inject/spi/TypeListenerBinding;->getTypeMatcher()Lcom/google/inject/matcher/Matcher;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :try_start_1
    invoke-interface {v6, p1, v2}, Lcom/google/inject/spi/TypeListener;->hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 110
    invoke-virtual {p2, v5, p1, v6}, Lcom/google/inject/internal/Errors;->errorNotifyingTypeListener(Lcom/google/inject/spi/TypeListenerBinding;Lcom/google/inject/TypeLiteral;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v2}, Lcom/google/inject/internal/EncounterImpl;->invalidate()V

    .line 115
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 117
    new-instance p2, Lcom/google/inject/internal/MembersInjectorImpl;

    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-direct {p2, v0, p1, v2, v1}, Lcom/google/inject/internal/MembersInjectorImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/EncounterImpl;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    return-object p2
.end method


# virtual methods
.method public get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/FailableCache;->get(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/internal/MembersInjectorImpl;

    return-object p1
.end method

.method getInjectors(Ljava/util/Set;Lcom/google/inject/internal/Errors;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/spi/InjectionPoint;

    .line 128
    :try_start_0
    invoke-virtual {v1}, Lcom/google/inject/spi/InjectionPoint;->isOptional()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/inject/internal/Errors;

    invoke-direct {v2, v1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    .line 131
    :goto_1
    invoke-virtual {v1}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/inject/internal/SingleFieldInjector;

    iget-object v4, p0, Lcom/google/inject/internal/MembersInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/inject/internal/SingleFieldInjector;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/google/inject/internal/SingleMethodInjector;

    iget-object v4, p0, Lcom/google/inject/internal/MembersInjectorStore;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/inject/internal/SingleMethodInjector;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V

    .line 134
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public hasTypeListeners()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorStore;->typeListenerBindings:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method remove(Lcom/google/inject/TypeLiteral;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)Z"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/FailableCache;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
