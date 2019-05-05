.class public abstract Lcom/google/inject/internal/ProviderMethod;
.super Ljava/lang/Object;
.source "ProviderMethod.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderWithExtensionVisitor;
.implements Lcom/google/inject/spi/HasDependencies;
.implements Lcom/google/inject/spi/ProvidesMethodBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/ProviderWithExtensionVisitor<",
        "TT;>;",
        "Lcom/google/inject/spi/HasDependencies;",
        "Lcom/google/inject/spi/ProvidesMethodBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final exposed:Z

.field protected final instance:Ljava/lang/Object;

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final method:Ljava/lang/reflect/Method;

.field private final parameterProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/Provider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final scopeAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/google/inject/Provider<",
            "*>;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    .line 99
    iput-object p6, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    .line 100
    iput-object p3, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    .line 101
    iput-object p4, p0, Lcom/google/inject/internal/ProviderMethod;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 102
    iput-object p2, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    .line 103
    iput-object p5, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    .line 104
    const-class p1, Lcom/google/inject/Exposed;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/inject/internal/ProviderMethod;->exposed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Lcom/google/inject/internal/ProviderMethod$1;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/google/inject/internal/ProviderMethod;-><init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V

    return-void
.end method

.method static create(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Z)Lcom/google/inject/internal/ProviderMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/google/inject/Provider<",
            "*>;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z)",
            "Lcom/google/inject/internal/ProviderMethod<",
            "TT;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p6

    .line 74
    invoke-static {p6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Class;->getModifiers()I

    move-result p6

    invoke-static {p6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p6

    if-nez p6, :cond_1

    :cond_0
    const/4 p6, 0x1

    .line 76
    invoke-virtual {p1, p6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    :cond_1
    new-instance p6, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;-><init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V

    return-object p6
.end method


# virtual methods
.method public acceptExtensionVisitor(Lcom/google/inject/spi/BindingTargetVisitor;Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingTargetVisitor<",
            "TB;TV;>;",
            "Lcom/google/inject/spi/ProviderInstanceBinding<",
            "+TB;>;)TV;"
        }
    .end annotation

    .line 168
    instance-of v0, p1, Lcom/google/inject/spi/ProvidesMethodTargetVisitor;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Lcom/google/inject/spi/ProvidesMethodTargetVisitor;

    invoke-interface {p1, p0}, Lcom/google/inject/spi/ProvidesMethodTargetVisitor;->visit(Lcom/google/inject/spi/ProvidesMethodBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/google/inject/Binder;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 133
    :goto_0
    iget-boolean v0, p0, Lcom/google/inject/internal/ProviderMethod;->exposed:Z

    if-eqz v0, :cond_1

    .line 136
    check-cast p1, Lcom/google/inject/PrivateBinder;

    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    :cond_1
    return-void
.end method

.method abstract doProvision([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 180
    instance-of v0, p1, Lcom/google/inject/internal/ProviderMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    check-cast p1, Lcom/google/inject/internal/ProviderMethod;

    .line 182
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p1, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 142
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/Provider;

    invoke-interface {v2}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/ProviderMethod;->doProvision([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 153
    invoke-static {v0}, Lcom/google/inject/internal/Exceptions;->rethrowCause(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getEnclosingInstance()Ljava/lang/Object;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 194
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Provides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lcom/google/inject/internal/util/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
