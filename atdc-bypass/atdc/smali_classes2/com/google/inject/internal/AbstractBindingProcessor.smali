.class abstract Lcom/google/inject/internal/AbstractBindingProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "AbstractBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/AbstractBindingProcessor$Processor;
    }
.end annotation


# static fields
.field private static final FORBIDDEN_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final bindingData:Lcom/google/inject/internal/ProcessedBindingData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    const-class v0, Lcom/google/inject/AbstractModule;

    const-class v1, Lcom/google/inject/Binder;

    const-class v2, Lcom/google/inject/Binding;

    const-class v3, Lcom/google/inject/Injector;

    const-class v4, Lcom/google/inject/Key;

    const-class v5, Lcom/google/inject/MembersInjector;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Lcom/google/inject/Module;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Lcom/google/inject/Provider;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Lcom/google/inject/Scope;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-class v7, Lcom/google/inject/Stage;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-class v7, Lcom/google/inject/TypeLiteral;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/AbstractBindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/ProcessedBindingData;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 62
    iput-object p2, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->bindingData:Lcom/google/inject/internal/ProcessedBindingData;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/AbstractBindingProcessor;Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/AbstractBindingProcessor;->validateKey(Ljava/lang/Object;Lcom/google/inject/Key;)V

    return-void
.end method

.method private isOkayDuplicate(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/State;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;",
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;",
            "Lcom/google/inject/internal/State;",
            ")Z"
        }
    .end annotation

    .line 113
    instance-of v0, p1, Lcom/google/inject/internal/ExposedBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    check-cast p1, Lcom/google/inject/internal/ExposedBindingImpl;

    .line 115
    invoke-virtual {p1}, Lcom/google/inject/internal/ExposedBindingImpl;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object p1

    check-cast p1, Lcom/google/inject/internal/InjectorImpl;

    .line 116
    invoke-virtual {p2}, Lcom/google/inject/internal/BindingImpl;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 118
    :cond_1
    invoke-interface {p3}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/internal/BindingImpl;

    if-nez p1, :cond_2

    return v1

    .line 124
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private validateKey(Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    invoke-virtual {p2}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-static {p2, p1, v0}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    return-void
.end method


# virtual methods
.method protected invalidBinding(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/UntargettedBindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/inject/internal/UntargettedBindingImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/inject/internal/UntargettedBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected putBinding(Lcom/google/inject/internal/BindingImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 74
    sget-object v2, Lcom/google/inject/internal/AbstractBindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object p1, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->cannotBindToGuiceType(Ljava/lang/String;)Lcom/google/inject/internal/Errors;

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v2, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2, v0}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-direct {p0, v1, p1, v2}, Lcom/google/inject/internal/AbstractBindingProcessor;->isOkayDuplicate(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/State;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    iget-object p1, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/inject/internal/Errors;->bindingAlreadySet(Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 89
    iget-object v2, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/inject/internal/Errors;->errorCheckingDuplicateBinding(Lcom/google/inject/Key;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    return-void

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->jitBindingAlreadySet(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1}, Lcom/google/inject/internal/State;->parent()Lcom/google/inject/internal/State;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/inject/internal/State;->blacklist(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1, v0, p1}, Lcom/google/inject/internal/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    return-void
.end method
