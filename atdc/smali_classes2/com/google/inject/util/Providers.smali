.class public final Lcom/google/inject/util/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;,
        Lcom/google/inject/util/Providers$GuicifiedProvider;,
        Lcom/google/inject/util/Providers$ConstantProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guicify(Ljavax/inject/Provider;)Lcom/google/inject/Provider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 90
    instance-of v0, p0, Lcom/google/inject/Provider;

    if-eqz v0, :cond_0

    .line 91
    check-cast p0, Lcom/google/inject/Provider;

    return-object p0

    :cond_0
    const-string v0, "provider"

    .line 94
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    .line 99
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 100
    new-instance p0, Lcom/google/inject/util/Providers$GuicifiedProvider;

    invoke-direct {p0, v0, v2}, Lcom/google/inject/util/Providers$GuicifiedProvider;-><init>(Ljavax/inject/Provider;Lcom/google/inject/util/Providers$1;)V

    return-object p0

    .line 102
    :cond_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 103
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/spi/InjectionPoint;

    .line 104
    invoke-virtual {v3}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    .line 107
    new-instance v1, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;-><init>(Ljava/util/Set;Ljavax/inject/Provider;Lcom/google/inject/util/Providers$1;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/google/inject/util/Providers$ConstantProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/inject/util/Providers$ConstantProvider;-><init>(Ljava/lang/Object;Lcom/google/inject/util/Providers$1;)V

    return-object v0
.end method
