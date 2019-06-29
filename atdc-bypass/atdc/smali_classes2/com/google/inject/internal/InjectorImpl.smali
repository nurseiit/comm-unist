.class final Lcom/google/inject/internal/InjectorImpl;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/Injector;
.implements Lcom/google/inject/internal/Lookups;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/InjectorImpl$MethodInvoker;,
        Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;,
        Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;,
        Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl;,
        Lcom/google/inject/internal/InjectorImpl$JitLimitation;,
        Lcom/google/inject/internal/InjectorImpl$InjectorOptions;
    }
.end annotation


# static fields
.field public static final STRING_TYPE:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

.field final constructors:Lcom/google/inject/internal/ConstructorInjectorStore;

.field final failedJitBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/inject/Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field final jitBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final localContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lookups:Lcom/google/inject/internal/Lookups;

.field membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

.field final options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

.field final parent:Lcom/google/inject/internal/InjectorImpl;

.field provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

.field final state:Lcom/google/inject/internal/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/InjectorImpl;->STRING_TYPE:Lcom/google/inject/TypeLiteral;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/State;Lcom/google/inject/internal/InjectorImpl$InjectorOptions;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;-><init>(Lcom/google/inject/internal/InjectorImpl$1;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    .line 114
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    .line 119
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->failedJitBindings:Ljava/util/Set;

    .line 121
    new-instance v0, Lcom/google/inject/internal/DeferredLookups;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/DeferredLookups;-><init>(Lcom/google/inject/internal/InjectorImpl;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->lookups:Lcom/google/inject/internal/Lookups;

    .line 966
    new-instance v0, Lcom/google/inject/internal/ConstructorInjectorStore;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ConstructorInjectorStore;-><init>(Lcom/google/inject/internal/InjectorImpl;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->constructors:Lcom/google/inject/internal/ConstructorInjectorStore;

    .line 124
    iput-object p1, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    .line 125
    iput-object p2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    .line 126
    iput-object p3, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p1, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    goto :goto_0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    :goto_0
    return-void
.end method

.method private cleanup(Lcom/google/inject/internal/BindingImpl;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;",
            "Ljava/util/Set<",
            "Lcom/google/inject/Key;",
            ">;)Z"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getInternalDependencies(Lcom/google/inject/internal/BindingImpl;)Ljava/util/Set;

    move-result-object p1

    .line 569
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/spi/Dependency;

    .line 570
    invoke-virtual {v1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    .line 571
    invoke-virtual {v1}, Lcom/google/inject/spi/Dependency;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v1

    .line 572
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 573
    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/internal/BindingImpl;

    if-eqz v3, :cond_3

    .line 575
    invoke-direct {p0, v3, p2}, Lcom/google/inject/internal/InjectorImpl;->cleanup(Lcom/google/inject/internal/BindingImpl;Ljava/util/Set;)Z

    move-result v2

    .line 576
    instance-of v5, v3, Lcom/google/inject/internal/ConstructorBindingImpl;

    if-eqz v5, :cond_1

    .line 577
    move-object v1, v3

    check-cast v1, Lcom/google/inject/internal/ConstructorBindingImpl;

    .line 578
    invoke-virtual {v1}, Lcom/google/inject/internal/ConstructorBindingImpl;->getInternalConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v5

    .line 579
    invoke-virtual {v1}, Lcom/google/inject/internal/ConstructorBindingImpl;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v1

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 584
    invoke-direct {p0, v3, v5}, Lcom/google/inject/internal/InjectorImpl;->removeFailedJitBinding(Lcom/google/inject/Binding;Lcom/google/inject/spi/InjectionPoint;)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 587
    :cond_3
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1, v2}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_4
    return v0
.end method

.method private convertConstantStringBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p2

    .line 415
    sget-object v1, Lcom/google/inject/internal/InjectorImpl;->STRING_TYPE:Lcom/google/inject/TypeLiteral;

    move-object v3, p1

    invoke-virtual {v3, v1}, Lcom/google/inject/Key;->ofType(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    .line 416
    iget-object v2, v7, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2, v1}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v5

    const/4 v1, 0x0

    if-eqz v5, :cond_4

    .line 417
    invoke-virtual {v5}, Lcom/google/inject/internal/BindingImpl;->isConstant()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 421
    :cond_0
    invoke-virtual {v5}, Lcom/google/inject/internal/BindingImpl;->getProvider()Lcom/google/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 422
    invoke-virtual {v5}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v10

    .line 425
    invoke-virtual {v3}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v11

    .line 426
    iget-object v2, v7, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2, v9, v11, v8, v10}, Lcom/google/inject/internal/State;->getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/spi/TypeConverterBinding;

    move-result-object v12

    if-nez v12, :cond_1

    return-object v1

    .line 436
    :cond_1
    :try_start_0
    invoke-virtual {v12}, Lcom/google/inject/spi/TypeConverterBinding;->getTypeConverter()Lcom/google/inject/spi/TypeConverter;

    move-result-object v1

    invoke-interface {v1, v9, v11}, Lcom/google/inject/spi/TypeConverter;->convert(Ljava/lang/String;Lcom/google/inject/TypeLiteral;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 439
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/inject/internal/Errors;->converterReturnedNull(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1

    .line 443
    :cond_2
    invoke-virtual {v11}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    .line 444
    invoke-virtual/range {v1 .. v6}, Lcom/google/inject/internal/Errors;->conversionTypeError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1

    .line 448
    :cond_3
    new-instance v13, Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    move-object v1, v13

    move-object v2, v7

    move-object v4, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/Binding;Lcom/google/inject/spi/TypeConverterBinding;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    .line 453
    invoke-virtual/range {v1 .. v6}, Lcom/google/inject/internal/Errors;->conversionError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 451
    throw v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private createImplementedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ImplementedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/ImplementedBy;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 731
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 732
    invoke-interface {p3}, Lcom/google/inject/ImplementedBy;->value()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, v4, :cond_0

    .line 736
    invoke-virtual {p4}, Lcom/google/inject/internal/Errors;->recursiveImplementationType()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 740
    :cond_0
    invoke-virtual {v4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    invoke-virtual {p4, p3, v4}, Lcom/google/inject/internal/Errors;->notASubtype(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 748
    :cond_1
    invoke-static {p3}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v7

    .line 749
    sget-object p3, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v7, p4, p3}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p3

    .line 751
    new-instance p4, Lcom/google/inject/internal/InjectorImpl$1;

    invoke-direct {p4, p0, v7, p3}, Lcom/google/inject/internal/InjectorImpl$1;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    .line 765
    new-instance p3, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-static {p1, p0, p4, v4, p2}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v5

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object p3
.end method

.method private createJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Z",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 819
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 825
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1, p1}, Lcom/google/inject/internal/State;->getSourcesForBlacklistedKey(Lcom/google/inject/Key;)Ljava/util/Set;

    move-result-object v1

    .line 826
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2, p1}, Lcom/google/inject/internal/State;->isBlacklisted(Lcom/google/inject/Key;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    invoke-virtual {p2, p1, v1}, Lcom/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/google/inject/Key;Ljava/util/Set;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 831
    :cond_0
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isProvider(Lcom/google/inject/Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl;->createProviderBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    .line 840
    :cond_1
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isMembersInjector(Lcom/google/inject/Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 844
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl;->createMembersInjectorBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    .line 849
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl;->convertConstantStringBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 854
    :cond_3
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isTypeLiteral(Lcom/google/inject/Key;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    if-eq p4, p3, :cond_4

    .line 857
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->jitDisabled(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 861
    :cond_4
    invoke-virtual {p1}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 863
    invoke-virtual {p1}, Lcom/google/inject/Key;->hasAttributes()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean p3, p3, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->exactBindingAnnotationsRequired:Z

    if-nez p3, :cond_5

    .line 865
    :try_start_0
    new-instance p3, Lcom/google/inject/internal/Errors;

    invoke-direct {p3}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 866
    invoke-virtual {p1}, Lcom/google/inject/Key;->withoutAttributes()Lcom/google/inject/Key;

    move-result-object p4

    sget-object v0, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p4, p3, v0}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p3
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    .line 871
    :catch_0
    :cond_5
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 874
    :cond_6
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 875
    sget-object v3, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/inject/internal/InjectorImpl;->createUninitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;Z)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    .line 876
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl;->initializeJitBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V

    return-object p1
.end method

.method private createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Z",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    if-eqz v0, :cond_1

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1}, Lcom/google/inject/internal/Errors;-><init>()V

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, v2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    goto :goto_0

    :cond_0
    move-object v2, p4

    :goto_0
    invoke-direct {v0, p1, v1, p3, v2}, Lcom/google/inject/internal/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 793
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/State;->getSourcesForBlacklistedKey(Lcom/google/inject/Key;)Ljava/util/Set;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1, p1}, Lcom/google/inject/internal/State;->isBlacklisted(Lcom/google/inject/Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    invoke-virtual {p2, p1, v0}, Lcom/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/google/inject/Key;Ljava/util/Set;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 798
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/InjectorImpl;->createJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p2

    .line 799
    iget-object p3, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {p3}, Lcom/google/inject/internal/State;->parent()Lcom/google/inject/internal/State;

    move-result-object p3

    iget-object p4, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-virtual {p2}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p1, p4, v0}, Lcom/google/inject/internal/State;->blacklist(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V

    .line 800
    iget-object p3, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private createMembersInjectorBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 318
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->cannotInjectRawMembersInjector()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 323
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v1, v0, p2}, Lcom/google/inject/internal/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object v8

    .line 327
    new-instance v6, Lcom/google/inject/internal/ConstantFactory;

    invoke-static {v8}, Lcom/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/internal/Initializable;

    move-result-object p2

    invoke-direct {v6, p2}, Lcom/google/inject/internal/ConstantFactory;-><init>(Lcom/google/inject/internal/Initializable;)V

    .line 331
    new-instance p2, Lcom/google/inject/internal/InstanceBindingImpl;

    sget-object v5, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object p2
.end method

.method private createProviderBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "Lcom/google/inject/Provider<",
            "TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "Lcom/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 341
    invoke-static {p1, p2}, Lcom/google/inject/internal/InjectorImpl;->getProvidedKey(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v0

    .line 342
    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p2

    .line 343
    new-instance v0, Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Binding;)V

    return-object v0
.end method

.method private createTypeLiteralBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 673
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 674
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 675
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->cannotInjectRawTypeLiteral()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 678
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 679
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 683
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    .line 686
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->cannotInjectTypeLiteralOf(Ljava/lang/reflect/Type;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 690
    :cond_1
    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v6

    .line 691
    new-instance v4, Lcom/google/inject/internal/ConstantFactory;

    invoke-static {v6}, Lcom/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/internal/Initializable;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/google/inject/internal/ConstantFactory;-><init>(Lcom/google/inject/internal/Initializable;)V

    .line 693
    new-instance p2, Lcom/google/inject/internal/InstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v5

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object p2
.end method

.method private getInternalDependencies(Lcom/google/inject/internal/BindingImpl;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 611
    instance-of v0, p1, Lcom/google/inject/internal/ConstructorBindingImpl;

    if-eqz v0, :cond_0

    .line 612
    check-cast p1, Lcom/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {p1}, Lcom/google/inject/internal/ConstructorBindingImpl;->getInternalDependencies()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 613
    :cond_0
    instance-of v0, p1, Lcom/google/inject/spi/HasDependencies;

    if-eqz v0, :cond_1

    .line 614
    check-cast p1, Lcom/google/inject/spi/HasDependencies;

    invoke-interface {p1}, Lcom/google/inject/spi/HasDependencies;->getDependencies()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 616
    :cond_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method private getJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 243
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isProvider(Lcom/google/inject/Key;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isTypeLiteral(Lcom/google/inject/Key;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isMembersInjector(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_4

    .line 248
    :try_start_0
    iget-object v3, v2, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/internal/BindingImpl;

    if-eqz v3, :cond_3

    .line 253
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, v2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    if-ne p3, v2, :cond_2

    if-nez v0, :cond_2

    instance-of p3, v3, Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    if-nez p3, :cond_2

    .line 257
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->jitDisabled(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 259
    :cond_2
    monitor-exit v1

    return-object v3

    .line 246
    :cond_3
    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->failedJitBindings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v0, v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/inject/internal/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 282
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getProvidedKey(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "Lcom/google/inject/Provider<",
            "TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 298
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->cannotInjectRawProvider()Lcom/google/inject/internal/Errors;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p0

    throw p0

    .line 302
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/inject/Key;->ofType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object p0

    return-object p0
.end method

.method private static isMembersInjector(Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/inject/MembersInjector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isProvider(Lcom/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/google/inject/Provider;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isTypeLiteral(Lcom/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/google/inject/TypeLiteral;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private removeFailedJitBinding(Lcom/google/inject/Binding;Lcom/google/inject/spi/InjectionPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "*>;",
            "Lcom/google/inject/spi/InjectionPoint;",
            ")V"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->failedJitBindings:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/MembersInjectorStore;->remove(Lcom/google/inject/TypeLiteral;)Z

    .line 602
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->remove(Lcom/google/inject/Binding;)Z

    if-eqz p2, :cond_0

    .line 604
    iget-object p1, p0, Lcom/google/inject/internal/InjectorImpl;->constructors:Lcom/google/inject/internal/ConstructorInjectorStore;

    invoke-virtual {p1, p2}, Lcom/google/inject/internal/ConstructorInjectorStore;->remove(Lcom/google/inject/spi/InjectionPoint;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method callInContext(Lcom/google/inject/internal/ContextualCallable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/ContextualCallable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1053
    new-array v0, v0, [Ljava/lang/Object;

    .line 1054
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 1056
    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 1057
    new-instance v2, Lcom/google/inject/internal/InternalContext;

    invoke-direct {v2}, Lcom/google/inject/internal/InternalContext;-><init>()V

    aput-object v2, v0, v1

    const/4 v2, 0x0

    .line 1059
    :try_start_0
    aget-object v3, v0, v1

    check-cast v3, Lcom/google/inject/internal/InternalContext;

    invoke-interface {p1, v3}, Lcom/google/inject/internal/ContextualCallable;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    aput-object v2, v0, v1

    return-object p1

    :catchall_0
    move-exception p1

    aput-object v2, v0, v1

    throw p1

    .line 1066
    :cond_1
    aget-object v0, v0, v1

    check-cast v0, Lcom/google/inject/internal/InternalContext;

    invoke-interface {p1, v0}, Lcom/google/inject/internal/ContextualCallable;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/google/inject/internal/InternalInjectorCreator;

    invoke-direct {v0}, Lcom/google/inject/internal/InternalInjectorCreator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/inject/internal/InternalInjectorCreator;->parentInjector(Lcom/google/inject/internal/InjectorImpl;)Lcom/google/inject/internal/InternalInjectorCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/InternalInjectorCreator;->addModules(Ljava/lang/Iterable;)Lcom/google/inject/internal/InternalInjectorCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/InternalInjectorCreator;->build()Lcom/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public varargs createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 0

    .line 232
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method createParameterInjector(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/SingleParameterInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/Dependency<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/SingleParameterInjector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 955
    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p2

    .line 956
    new-instance v0, Lcom/google/inject/internal/SingleParameterInjector;

    invoke-direct {v0, p1, p2}, Lcom/google/inject/internal/SingleParameterInjector;-><init>(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/BindingImpl;)V

    return-object v0
.end method

.method createProvidedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ProvidedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/ProvidedBy;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 700
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 701
    invoke-interface {p3}, Lcom/google/inject/ProvidedBy;->value()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, v3, :cond_0

    .line 705
    invoke-virtual {p4}, Lcom/google/inject/internal/Errors;->recursiveProviderType()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 710
    :cond_0
    invoke-static {p3}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v6

    .line 711
    new-instance p4, Lcom/google/inject/internal/ProvidedByInternalFactory;

    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v0, v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p4, v3, p3, v6, v0}, Lcom/google/inject/internal/ProvidedByInternalFactory;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/inject/Key;Z)V

    .line 715
    invoke-static {p1, p0, p4, v3, p2}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->createWithInitializer(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)Lcom/google/inject/internal/LinkedProviderBindingImpl;

    move-result-object p1

    .line 723
    iget-object p2, p0, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {p2, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/google/inject/internal/ProvidedByInternalFactory;->setProvisionListenerCallback(Lcom/google/inject/internal/ProvisionListenerStackCallback;)V

    return-object p1
.end method

.method createUninitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;Z)Lcom/google/inject/internal/BindingImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Errors;",
            "Z)",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 626
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 628
    const-class v1, Lcom/google/inject/ImplementedBy;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/inject/ImplementedBy;

    .line 631
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 636
    :cond_0
    const-class v2, Lcom/google/inject/TypeLiteral;

    if-ne v0, v2, :cond_1

    .line 638
    invoke-direct {p0, p1, p4}, Lcom/google/inject/internal/InjectorImpl;->createTypeLiteralBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 645
    invoke-static {v0, p3, p4}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 646
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/google/inject/internal/InjectorImpl;->createImplementedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ImplementedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    .line 650
    :cond_2
    const-class v1, Lcom/google/inject/ProvidedBy;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/inject/ProvidedBy;

    if-eqz v1, :cond_3

    .line 652
    invoke-static {v0, p3, p4}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 653
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/google/inject/internal/InjectorImpl;->createProvidedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ProvidedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v2, 0x0

    if-eqz p5, :cond_4

    .line 657
    iget-object p5, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean p5, p5, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz p5, :cond_4

    const/4 p5, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 p5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object p5, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v7, p5, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->atInjectRequired:Z

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/google/inject/internal/ConstructorBindingImpl;->create(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/Errors;ZZ)Lcom/google/inject/internal/ConstructorBindingImpl;

    move-result-object p1

    return-object p1

    .line 632
    :cond_5
    :goto_1
    invoke-virtual {p4, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->getAll(Lcom/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllBindings()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 892
    :try_start_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    invoke-direct {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 896
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 154
    :try_start_0
    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    .line 155
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    new-instance v1, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1
.end method

.method getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 213
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/InjectorImpl;->getJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 172
    :try_start_0
    iget-object v2, v1, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/internal/BindingImpl;

    if-eqz v2, :cond_1

    .line 174
    monitor-exit v0

    return-object v2

    .line 170
    :cond_1
    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 177
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isProvider(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    :try_start_1
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    invoke-static {p1, v0}, Lcom/google/inject/internal/InjectorImpl;->getProvidedKey(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 190
    new-instance v0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 177
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1040
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1044
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/InternalFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 883
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object p1

    return-object p1
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 2
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

    .line 981
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 985
    new-instance v1, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 990
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method getParametersInjectors(Ljava/util/List;Lcom/google/inject/internal/Errors;)[Lcom/google/inject/internal/SingleParameterInjector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")[",
            "Lcom/google/inject/internal/SingleParameterInjector<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 934
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 938
    :cond_0
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 939
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/inject/internal/SingleParameterInjector;

    const/4 v2, 0x0

    .line 941
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/spi/Dependency;

    add-int/lit8 v4, v2, 0x1

    .line 943
    :try_start_0
    invoke-virtual {p2, v3}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/google/inject/internal/InjectorImpl;->createParameterInjector(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/SingleParameterInjector;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v2, v4

    goto :goto_0

    .line 949
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    return-object v1
.end method

.method public getParent()Lcom/google/inject/Injector;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 2
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

    .line 1029
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 1031
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/inject/internal/InjectorImpl;->getProviderOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Provider;

    move-result-object p1

    const/4 v1, 0x0

    .line 1032
    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1035
    new-instance v1, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 994
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method getProviderOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 998
    sget-object v0, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p2

    .line 999
    invoke-static {p1}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object p1

    .line 1001
    new-instance v0, Lcom/google/inject/internal/InjectorImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl$2;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/BindingImpl;)V

    return-object v0
.end method

.method public getScopeBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->getScopes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->getConvertersThisLevel()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method index()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Binding;

    .line 138
    invoke-virtual {p0, v1}, Lcom/google/inject/internal/InjectorImpl;->index(Lcom/google/inject/Binding;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method index(Lcom/google/inject/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->put(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Binding;)V

    return-void
.end method

.method initializeBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 531
    instance-of v0, p1, Lcom/google/inject/internal/DelayedInitialize;

    if-eqz v0, :cond_0

    .line 532
    check-cast p1, Lcom/google/inject/internal/DelayedInitialize;

    invoke-interface {p1, p0, p2}, Lcom/google/inject/internal/DelayedInitialize;->initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V

    :cond_0
    return-void
.end method

.method initializeJitBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 540
    instance-of v0, p1, Lcom/google/inject/internal/DelayedInitialize;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    move-object v0, p1

    check-cast v0, Lcom/google/inject/internal/DelayedInitialize;

    .line 546
    :try_start_0
    invoke-interface {v0, p0, p2}, Lcom/google/inject/internal/DelayedInitialize;->initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const/4 v0, 0x0

    .line 553
    invoke-direct {p0, p1, v0}, Lcom/google/inject/internal/InjectorImpl;->removeFailedJitBinding(Lcom/google/inject/Binding;Lcom/google/inject/spi/InjectionPoint;)V

    .line 554
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/inject/internal/InjectorImpl;->cleanup(Lcom/google/inject/internal/BindingImpl;Ljava/util/Set;)Z

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 976
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/InjectorImpl;->getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    .line 977
    invoke-interface {v0, p1}, Lcom/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1072
    const-class v0, Lcom/google/inject/Injector;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "bindings"

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
