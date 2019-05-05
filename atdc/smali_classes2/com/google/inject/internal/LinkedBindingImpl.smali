.class public final Lcom/google/inject/internal/LinkedBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "LinkedBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/LinkedKeyBinding;
.implements Lcom/google/inject/spi/HasDependencies;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/google/inject/spi/LinkedKeyBinding<",
        "TT;>;",
        "Lcom/google/inject/spi/HasDependencies;"
    }
.end annotation


# instance fields
.field final targetKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
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
            "+TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 38
    iput-object p6, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key<",
            "+TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 43
    iput-object p4, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

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

    .line 47
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/binder/LinkedBindingBuilder;->to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Scoping;->applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 81
    instance-of v0, p1, Lcom/google/inject/internal/LinkedBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lcom/google/inject/internal/LinkedBindingImpl;

    .line 83
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Scoping;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    iget-object p1, p1, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

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

    .line 55
    iget-object v0, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key<",
            "+TT;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    const-class v0, Lcom/google/inject/spi/LinkedKeyBinding;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "target"

    iget-object v2, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

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

    .line 63
    new-instance v0, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

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

    .line 59
    new-instance v0, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v0
.end method
