.class final Lcom/google/inject/internal/SingleFieldInjector;
.super Ljava/lang/Object;
.source "SingleFieldInjector.java"

# interfaces
.implements Lcom/google/inject/internal/SingleMemberInjector;


# instance fields
.field final binding:Lcom/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;"
        }
    .end annotation
.end field

.field final dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation
.end field

.field final field:Ljava/lang/reflect/Field;

.field final injectionPoint:Lcom/google/inject/spi/InjectionPoint;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 37
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    .line 38
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/inject/spi/Dependency;

    iput-object p2, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    .line 41
    iget-object p2, p0, Lcom/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    iget-object p2, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p2}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object p2

    sget-object v0, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/SingleFieldInjector;->binding:Lcom/google/inject/internal/BindingImpl;

    return-void
.end method


# virtual methods
.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    iget-object v1, p0, Lcom/google/inject/internal/SingleFieldInjector;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/inject/internal/InternalContext;->pushDependency(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/SingleFieldInjector;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    new-instance p3, Ljava/lang/AssertionError;

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :catch_1
    move-exception p3

    .line 57
    iget-object v1, p0, Lcom/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    return-void

    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    throw p1
.end method
