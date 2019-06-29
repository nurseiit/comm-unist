.class public Lcom/google/inject/internal/BindingBuilder;
.super Lcom/google/inject/internal/AbstractBindingBuilder;
.source "BindingBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/AbstractBindingBuilder<",
        "TT;>;",
        "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/AbstractBindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    return-void
.end method

.method private copyErrorsToBinder(Lcom/google/inject/ConfigurationException;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Message;

    .line 180
    iget-object v1, p0, Lcom/google/inject/internal/BindingBuilder;->binder:Lcom/google/inject/Binder;

    invoke-interface {v1, v0}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic annotatedWith(Ljava/lang/Class;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->annotatedWith(Ljava/lang/Class;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public annotatedWith(Ljava/lang/Class;)Lcom/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->annotatedWithInternal(Ljava/lang/Class;)Lcom/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->annotatedWithInternal(Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public bridge synthetic to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->to(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->to(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public to(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "+TT;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "linkedKey"

    .line 69
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 71
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {p0, v1}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public to(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "+TT;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->to(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;)Lcom/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->to(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/inject/internal/BindingBuilder;->toConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;",
            "Lcom/google/inject/TypeLiteral<",
            "+TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    const-string v0, "constructor"

    .line 149
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 150
    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 153
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 157
    :try_start_0
    invoke-static {p2}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 159
    invoke-direct {p0, v1}, Lcom/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/google/inject/ConfigurationException;)V

    .line 160
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_0

    .line 164
    :goto_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/google/inject/spi/InjectionPoint;->forConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object v6

    .line 165
    new-instance p1, Lcom/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;Lcom/google/inject/spi/InjectionPoint;Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;
    :try_end_1
    .catch Lcom/google/inject/ConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 168
    invoke-direct {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/google/inject/ConfigurationException;)V

    :goto_2
    return-object p0
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-direct {p0, v0}, Lcom/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/google/inject/ConfigurationException;)V

    .line 87
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/BindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 94
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 95
    new-instance v7, Lcom/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    sget-object v4, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    return-void
.end method

.method public bridge synthetic toProvider(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toProvider(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toProvider(Ljavax/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Ljavax/inject/Provider;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "providerKey"

    .line 134
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 137
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {p0, v1}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "+TT;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Ljavax/inject/Provider;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Ljava/lang/Class;)Lcom/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 124
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Ljavax/inject/Provider;)Lcom/google/inject/internal/BindingBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+TT;>;)",
            "Lcom/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "provider"

    .line 104
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 110
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    invoke-direct {p0, v0}, Lcom/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/google/inject/ConfigurationException;)V

    .line 113
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    move-object v5, v0

    .line 116
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 117
    new-instance v7, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v4

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljavax/inject/Provider;)V

    invoke-virtual {p0, v7}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindingBuilder<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
