.class final Lcom/google/inject/internal/FactoryProxy;
.super Ljava/lang/Object;
.source "FactoryProxy.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;
.implements Lcom/google/inject/internal/CreationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory<",
        "TT;>;",
        "Lcom/google/inject/internal/CreationListener;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field private targetFactory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final targetKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/Key<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/inject/internal/FactoryProxy;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 39
    iput-object p2, p0, Lcom/google/inject/internal/FactoryProxy;->key:Lcom/google/inject/Key;

    .line 40
    iput-object p3, p0, Lcom/google/inject/internal/FactoryProxy;->targetKey:Lcom/google/inject/Key;

    .line 41
    iput-object p4, p0, Lcom/google/inject/internal/FactoryProxy;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency<",
            "*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 54
    iget-object p4, p0, Lcom/google/inject/internal/FactoryProxy;->targetKey:Lcom/google/inject/Key;

    iget-object v0, p0, Lcom/google/inject/internal/FactoryProxy;->source:Ljava/lang/Object;

    invoke-virtual {p2, p4, v0}, Lcom/google/inject/internal/InternalContext;->pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 56
    :try_start_0
    iget-object p4, p0, Lcom/google/inject/internal/FactoryProxy;->targetFactory:Lcom/google/inject/internal/InternalFactory;

    iget-object v0, p0, Lcom/google/inject/internal/FactoryProxy;->targetKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    throw p1
.end method

.method public notify(Lcom/google/inject/internal/Errors;)V
    .locals 4

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/FactoryProxy;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/FactoryProxy;->targetKey:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/internal/FactoryProxy;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    sget-object v3, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/inject/internal/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/FactoryProxy;->targetFactory:Lcom/google/inject/internal/InternalFactory;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    const-class v0, Lcom/google/inject/internal/FactoryProxy;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/google/inject/internal/FactoryProxy;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lcom/google/inject/internal/FactoryProxy;->targetFactory:Lcom/google/inject/internal/InternalFactory;

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
