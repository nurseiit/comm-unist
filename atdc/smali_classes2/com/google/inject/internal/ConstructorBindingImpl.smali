.class final Lcom/google/inject/internal/ConstructorBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/ConstructorBinding;
.implements Lcom/google/inject/internal/DelayedInitialize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ConstructorBindingImpl$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/google/inject/spi/ConstructorBinding<",
        "TT;>;",
        "Lcom/google/inject/internal/DelayedInitialize;"
    }
.end annotation


# instance fields
.field private final constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

.field private final factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ConstructorBindingImpl$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;Lcom/google/inject/spi/InjectionPoint;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p2, p1, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 60
    new-instance p2, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;-><init>(ZLcom/google/inject/Key;)V

    iput-object p2, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    .line 61
    new-instance p1, Lcom/google/inject/internal/DefaultConstructionProxyFactory;

    invoke-direct {p1, p4}, Lcom/google/inject/internal/DefaultConstructionProxyFactory;-><init>(Lcom/google/inject/spi/InjectionPoint;)V

    invoke-virtual {p1}, Lcom/google/inject/internal/DefaultConstructionProxyFactory;->create()Lcom/google/inject/internal/ConstructionProxy;

    move-result-object p1

    .line 63
    iput-object p4, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 64
    iget-object p2, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    new-instance p3, Lcom/google/inject/internal/ConstructorInjector;

    const/4 p4, 0x0

    invoke-direct {p3, p5, p1, p4, p4}, Lcom/google/inject/internal/ConstructorInjector;-><init>(Ljava/util/Set;Lcom/google/inject/internal/ConstructionProxy;[Lcom/google/inject/internal/SingleParameterInjector;Lcom/google/inject/internal/MembersInjectorImpl;)V

    invoke-static {p2, p3}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$002(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/internal/ConstructorInjector;)Lcom/google/inject/internal/ConstructorInjector;

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/spi/InjectionPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory<",
            "+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/internal/ConstructorBindingImpl$Factory<",
            "TT;>;",
            "Lcom/google/inject/spi/InjectionPoint;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 53
    iput-object p6, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    .line 54
    iput-object p7, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-void
.end method

.method static create(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/Errors;ZZ)Lcom/google/inject/internal/ConstructorBindingImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/internal/Errors;",
            "ZZ)",
            "Lcom/google/inject/internal/ConstructorBindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 77
    invoke-virtual {p5}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    if-nez p2, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    goto :goto_0

    .line 85
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p5, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    .line 90
    :cond_1
    invoke-static {v1}, Lcom/google/inject/internal/util/Classes;->isInnerClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p5, v1}, Lcom/google/inject/internal/Errors;->cannotInjectInnerClass(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 94
    :cond_2
    invoke-virtual {p5, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    if-nez p2, :cond_3

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object p2

    invoke-static {p2}, Lcom/google/inject/spi/InjectionPoint;->forConstructorOf(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object p2

    if-eqz p7, :cond_3

    .line 100
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p7

    check-cast p7, Ljava/lang/reflect/Constructor;

    invoke-static {p7}, Lcom/google/inject/internal/ConstructorBindingImpl;->hasAtInject(Ljava/lang/reflect/Constructor;)Z

    move-result p7

    if-nez p7, :cond_3

    .line 101
    invoke-virtual {p5, v1}, Lcom/google/inject/internal/Errors;->atInjectRequired(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    move-object v7, p2

    .line 109
    invoke-virtual {p4}, Lcom/google/inject/internal/Scoping;->isExplicitlyScoped()Z

    move-result p2

    if-nez p2, :cond_4

    .line 110
    invoke-virtual {v7}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    .line 111
    invoke-static {p5, p2}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 113
    invoke-static {p2}, Lcom/google/inject/internal/Scoping;->forAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Scoping;

    move-result-object p2

    invoke-virtual {p5, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p4

    invoke-static {p2, p0, p4}, Lcom/google/inject/internal/Scoping;->makeInjectable(Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Scoping;

    move-result-object p4

    :cond_4
    move-object v5, p4

    .line 118
    invoke-virtual {p5, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 120
    new-instance v6, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-direct {v6, p6, p1}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;-><init>(ZLcom/google/inject/Key;)V

    .line 121
    invoke-static {p1, p0, v6, p3, v5}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 124
    new-instance p2, Lcom/google/inject/internal/ConstructorBindingImpl;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/spi/InjectionPoint;)V

    return-object p2
.end method

.method private static hasAtInject(Ljava/lang/reflect/Constructor;)Z
    .locals 1

    .line 130
    const-class v0, Lcom/google/inject/Inject;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljavax/inject/Inject;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingTargetVisitor<",
            "-TT;TV;>;)TV;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not initialized"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 177
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Lcom/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/inject/internal/Scoping;->applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 231
    instance-of v0, p1, Lcom/google/inject/internal/ConstructorBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 232
    check-cast p1, Lcom/google/inject/internal/ConstructorBindingImpl;

    .line 233
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/ConstructorBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Scoping;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    iget-object p1, p1, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getConstructor()Lcom/google/inject/spi/InjectionPoint;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Binding is not ready"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructorInjector;->getConstructionProxy()Lcom/google/inject/internal/ConstructionProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/internal/ConstructionProxy;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getInjectableMembers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInjectableMembers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Binding is not ready"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructorInjector;->getInjectableMembers()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getInternalConstructor()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructorInjector;->getConstructionProxy()Lcom/google/inject/internal/ConstructionProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/internal/ConstructionProxy;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method getInternalDependencies()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 159
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v1}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v1}, Lcom/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getInjectableMembers()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    .line 172
    :catch_0
    :goto_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 243
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v1, p1, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v1, v1, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$102(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Z)Z

    .line 137
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v1, p1, Lcom/google/inject/internal/InjectorImpl;->constructors:Lcom/google/inject/internal/ConstructorInjectorStore;

    iget-object v2, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v1, v2, p2}, Lcom/google/inject/internal/ConstructorInjectorStore;->get(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$002(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/internal/ConstructorInjector;)Lcom/google/inject/internal/ConstructorInjector;

    .line 139
    iget-object p2, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object p1, p1, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {p1, p0}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$202(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/internal/ProvisionListenerStackCallback;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 222
    const-class v0, Lcom/google/inject/spi/ConstructorBinding;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 210
    new-instance v8, Lcom/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v5

    iget-object v6, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v7, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    const/4 v1, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/spi/InjectionPoint;)V

    return-object v8
.end method

.method protected withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 205
    new-instance v8, Lcom/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/inject/internal/ConstructorBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v6, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v7, p0, Lcom/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/google/inject/spi/InjectionPoint;

    const/4 v1, 0x0

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/spi/InjectionPoint;)V

    return-object v8
.end method
