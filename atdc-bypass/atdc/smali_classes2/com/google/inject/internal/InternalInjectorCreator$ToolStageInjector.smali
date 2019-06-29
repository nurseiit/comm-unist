.class Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;
.super Ljava/lang/Object;
.source "InternalInjectorCreator.java"

# interfaces
.implements Lcom/google/inject/Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/InternalInjectorCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolStageInjector"
.end annotation


# instance fields
.field private final delegateInjector:Lcom/google/inject/Injector;


# direct methods
.method constructor <init>(Lcom/google/inject/Injector;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    return-void
.end method


# virtual methods
.method public createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public varargs createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0}, Lcom/google/inject/Injector;->getAllBindings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p1

    return-object p1
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;

    move-result-object p1

    return-object p1
.end method

.method public getBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0}, Lcom/google/inject/Injector;->getBindings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 299
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getInstance(Key<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 303
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getInstance(Class<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 291
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getMembersInjector(TypeLiteral<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 295
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getMembersInjector(Class<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParent()Lcom/google/inject/Injector;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0}, Lcom/google/inject/Injector;->getParent()Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 283
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getProvider(Key<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 287
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getProvider(Class<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getScopeBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0}, Lcom/google/inject/Injector;->getScopeBindings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0}, Lcom/google/inject/Injector;->getTypeConverterBindings()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 246
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.injectMembers(Object) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
