.class final Lcom/google/inject/internal/LinkedProviderBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "LinkedProviderBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderKeyBinding;
.implements Lcom/google/inject/spi/HasDependencies;
.implements Lcom/google/inject/internal/DelayedInitialize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/google/inject/spi/ProviderKeyBinding<",
        "TT;>;",
        "Lcom/google/inject/spi/HasDependencies;",
        "Lcom/google/inject/internal/DelayedInitialize;"
    }
.end annotation


# instance fields
.field final delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

.field final providerKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
    .locals 8
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
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 48
    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)V
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
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;",
            "Lcom/google/inject/internal/DelayedInitialize;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 41
    iput-object p6, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    .line 42
    iput-object p7, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 54
    iput-object p4, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    return-void
.end method

.method static createWithInitializer(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)Lcom/google/inject/internal/LinkedProviderBindingImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory<",
            "+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;",
            "Lcom/google/inject/internal/DelayedInitialize;",
            ")",
            "Lcom/google/inject/internal/LinkedProviderBindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v8, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)V

    return-object v8
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingTargetVisitor<",
            "-TT;TV;>;)TV;"
        }
    .end annotation

    .line 67
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getProviderKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Scoping;->applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 108
    instance-of v0, p1, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    check-cast p1, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    .line 110
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Scoping;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    iget-object p1, p1, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
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

    .line 81
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getProviderKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    invoke-interface {v0, p1, p2}, Lcom/google/inject/internal/DelayedInitialize;->initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    const-class v0, Lcom/google/inject/spi/ProviderKeyBinding;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v0
.end method

.method public withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v0
.end method
