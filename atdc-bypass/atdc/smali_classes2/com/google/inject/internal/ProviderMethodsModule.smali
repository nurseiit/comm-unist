.class public final Lcom/google/inject/internal/ProviderMethodsModule;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"

# interfaces
.implements Lcom/google/inject/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ProviderMethodsModule$LogProvider;,
        Lcom/google/inject/internal/ProviderMethodsModule$Signature;
    }
.end annotation


# static fields
.field private static final LOGGER_KEY:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Ljava/lang/Object;

.field private filter:Lcom/google/inject/HierarchyTraversalFilter;

.field private final skipFastClassGeneration:Z

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Ljava/util/logging/Logger;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/ProviderMethodsModule;->LOGGER_KEY:Lcom/google/inject/Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 61
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 64
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    .line 65
    iput-boolean p2, p0, Lcom/google/inject/internal/ProviderMethodsModule;->skipFastClassGeneration:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ProviderMethodsModule;)Lcom/google/inject/TypeLiteral;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    return-object p0
.end method

.method private createProviderMethod(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/google/inject/internal/ProviderMethod;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binder;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/inject/internal/ProviderMethod<",
            "TT;>;"
        }
    .end annotation

    .line 209
    invoke-interface {p1, p2}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    .line 210
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p2}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 215
    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v2, p2}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v2

    .line 216
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    const/4 v4, 0x0

    .line 217
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 218
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/TypeLiteral;

    aget-object v7, v3, v4

    invoke-virtual {p0, v0, v5, p2, v7}, Lcom/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v5

    .line 219
    sget-object v7, Lcom/google/inject/internal/ProviderMethodsModule;->LOGGER_KEY:Lcom/google/inject/Key;

    invoke-virtual {v5, v7}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    const-class v5, Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/inject/internal/UniqueAnnotations;->create()Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v5

    .line 224
    invoke-interface {p1, v5}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v7

    new-instance v8, Lcom/google/inject/internal/ProviderMethodsModule$LogProvider;

    invoke-direct {v8, p2}, Lcom/google/inject/internal/ProviderMethodsModule$LogProvider;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v7, v8}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 227
    :cond_0
    invoke-static {v5}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {p1, v5}, Lcom/google/inject/Binder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v2, p2}, Lcom/google/inject/TypeLiteral;->getReturnType(Ljava/lang/reflect/Method;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    .line 234
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-virtual {p0, v0, v2, p2, v3}, Lcom/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v2

    .line 235
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v7

    .line 238
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/spi/Message;

    .line 239
    invoke-interface {p1, v3}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    goto :goto_1

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v5

    iget-boolean v8, p0, Lcom/google/inject/internal/ProviderMethodsModule;->skipFastClassGeneration:Z

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/google/inject/internal/ProviderMethod;->create(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Z)Lcom/google/inject/internal/ProviderMethod;

    move-result-object p1

    return-object p1
.end method

.method public static forModule(Lcom/google/inject/Module;)Lcom/google/inject/Module;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0}, Lcom/google/inject/internal/ProviderMethodsModule;->forObject(Ljava/lang/Object;Z)Lcom/google/inject/Module;

    move-result-object p0

    return-object p0
.end method

.method public static forObject(Ljava/lang/Object;)Lcom/google/inject/Module;
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-static {p0, v0}, Lcom/google/inject/internal/ProviderMethodsModule;->forObject(Ljava/lang/Object;Z)Lcom/google/inject/Module;

    move-result-object p0

    return-object p0
.end method

.method private static forObject(Ljava/lang/Object;Z)Lcom/google/inject/Module;
    .locals 1

    .line 88
    instance-of v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    .line 89
    sget-object p0, Lcom/google/inject/util/Modules;->EMPTY_MODULE:Lcom/google/inject/Module;

    return-object p0

    .line 92
    :cond_0
    new-instance v0, Lcom/google/inject/internal/ProviderMethodsModule;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/ProviderMethodsModule;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private static isProvider(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/inject/Provides;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 197
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 198
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public declared-synchronized configure(Lcom/google/inject/Binder;)V
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ProviderMethodsModule;->getProviderMethods(Lcom/google/inject/Binder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/ProviderMethod;

    .line 97
    invoke-virtual {v1, p1}, Lcom/google/inject/internal/ProviderMethod;->configure(Lcom/google/inject/Binder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 252
    instance-of v0, p1, Lcom/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/inject/internal/ProviderMethodsModule;

    iget-object p1, p1, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 247
    invoke-static {p1, p3, p4}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_0

    .line 248
    invoke-static {p2}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getProviderMethods(Lcom/google/inject/Binder;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/inject/internal/ProviderMethod<",
            "*>;>;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->create()Lorg/roboguice/shaded/goole/common/collect/HashMultimap;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v2}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 105
    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v4, Lcom/google/inject/Provides;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForMethods(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    iget-object v3, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v4, Lcom/google/inject/Provides;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 113
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    new-instance v5, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    invoke-direct {v5, p0, v4}, Lcom/google/inject/internal/ProviderMethodsModule$Signature;-><init>(Lcom/google/inject/internal/ProviderMethodsModule;Ljava/lang/reflect/Method;)V

    invoke-interface {v1, v5, v4}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    :cond_1
    invoke-static {v4}, Lcom/google/inject/internal/ProviderMethodsModule;->isProvider(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    invoke-direct {p0, p1, v4}, Lcom/google/inject/internal/ProviderMethodsModule;->createProviderMethod(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/google/inject/internal/ProviderMethod;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/internal/ProviderMethod;

    .line 127
    invoke-virtual {v3}, Lcom/google/inject/internal/ProviderMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 128
    new-instance v4, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    invoke-direct {v4, p0, v3}, Lcom/google/inject/internal/ProviderMethodsModule$Signature;-><init>(Lcom/google/inject/internal/ProviderMethodsModule;Ljava/lang/reflect/Method;)V

    invoke-interface {v1, v4}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 131
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 135
    :cond_6
    invoke-static {v5, v3}, Lcom/google/inject/internal/ProviderMethodsModule;->overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, "Overriding @Provides methods is not allowed.\n\t@Provides method: %s\n\toverridden by: %s"

    const/4 v6, 0x2

    .line 136
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    invoke-interface {p1, v4, v6}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
