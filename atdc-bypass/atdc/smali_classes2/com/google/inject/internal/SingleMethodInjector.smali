.class final Lcom/google/inject/internal/SingleMethodInjector;
.super Ljava/lang/Object;
.source "SingleMethodInjector.java"

# interfaces
.implements Lcom/google/inject/internal/SingleMemberInjector;


# instance fields
.field private final injectionPoint:Lcom/google/inject/spi/InjectionPoint;

.field private final methodInvoker:Lcom/google/inject/internal/InjectorImpl$MethodInvoker;

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
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/google/inject/internal/SingleMethodInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 38
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 39
    invoke-direct {p0, v0}, Lcom/google/inject/internal/SingleMethodInjector;->createMethodInvoker(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/InjectorImpl$MethodInvoker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/SingleMethodInjector;->methodInvoker:Lcom/google/inject/internal/InjectorImpl$MethodInvoker;

    .line 40
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/inject/internal/InjectorImpl;->getParametersInjectors(Ljava/util/List;Lcom/google/inject/internal/Errors;)[Lcom/google/inject/internal/SingleParameterInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/SingleMethodInjector;->parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;

    return-void
.end method

.method private createMethodInvoker(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/InjectorImpl$MethodInvoker;
    .locals 2

    .line 46
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 64
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    :cond_2
    new-instance v0, Lcom/google/inject/internal/SingleMethodInjector$1;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/SingleMethodInjector$1;-><init>(Lcom/google/inject/internal/SingleMethodInjector;Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/inject/internal/SingleMethodInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V
    .locals 1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/SingleMethodInjector;->parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;

    invoke-static {p1, p2, v0}, Lcom/google/inject/internal/SingleParameterInjector;->getAll(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;[Lcom/google/inject/internal/SingleParameterInjector;)[Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/google/inject/internal/SingleMethodInjector;->methodInvoker:Lcom/google/inject/internal/InjectorImpl$MethodInvoker;

    invoke-interface {v0, p3, p2}, Lcom/google/inject/internal/InjectorImpl$MethodInvoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 95
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 98
    :cond_0
    iget-object p3, p0, Lcom/google/inject/internal/SingleMethodInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {p1, p3}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/inject/internal/Errors;->errorInjectingMethod(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 93
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p2

    .line 86
    invoke-virtual {p2}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    return-void
.end method
