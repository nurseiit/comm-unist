.class final Lcom/google/inject/internal/InstanceBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "InstanceBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/InstanceBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/google/inject/spi/InstanceBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final provider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory<",
            "+TT;>;",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;TT;)V"
        }
    .end annotation

    .line 42
    sget-object v5, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 43
    invoke-static {p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 44
    iput-object p6, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    .line 45
    invoke-static {p6}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/InstanceBindingImpl;->provider:Lcom/google/inject/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;TT;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 51
    invoke-static {p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 52
    iput-object p5, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    .line 53
    invoke-static {p5}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/InstanceBindingImpl;->provider:Lcom/google/inject/Provider;

    return-void
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

    .line 61
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 101
    instance-of v0, p1, Lcom/google/inject/internal/InstanceBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Lcom/google/inject/internal/InstanceBindingImpl;

    .line 103
    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/InstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Scoping;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

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

    .line 73
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/inject/spi/HasDependencies;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    check-cast v0, Lcom/google/inject/spi/HasDependencies;

    invoke-interface {v0}, Lcom/google/inject/spi/HasDependencies;->getDependencies()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInjectionPoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getProvider()Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->provider:Lcom/google/inject/Provider;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    const-class v0, Lcom/google/inject/spi/InstanceBinding;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "instance"

    iget-object v2, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 83
    new-instance v6, Lcom/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    iget-object v5, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v6
.end method

.method public withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 79
    new-instance v6, Lcom/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v4, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    iget-object v5, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v6
.end method
