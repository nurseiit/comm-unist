.class public Lroboguice/inject/ContextScopedRoboInjector;
.super Ljava/lang/Object;
.source "ContextScopedRoboInjector.java"

# interfaces
.implements Lroboguice/inject/RoboInjector;


# instance fields
.field protected context:Landroid/content/Context;

.field protected delegate:Lcom/google/inject/Injector;

.field protected scope:Lroboguice/inject/ContextScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/inject/Injector;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    .line 30
    iput-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    .line 31
    iget-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    const-class p2, Lroboguice/inject/ContextScope;

    invoke-interface {p1, p2}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lroboguice/inject/ContextScope;

    iput-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    return-void
.end method


# virtual methods
.method public createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .locals 3
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

    .line 36
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public varargs createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 3

    .line 48
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 3
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

    .line 60
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 67
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getAllBindings()Ljava/util/Map;
    .locals 4
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

    .line 72
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getAllBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 3
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

    .line 84
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;
    .locals 3
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

    .line 96
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 103
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getBindings()Ljava/util/Map;
    .locals 4
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

    .line 108
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 115
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 3
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

    .line 120
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 127
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 132
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 139
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 144
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 151
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 3
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

    .line 168
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 175
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 3
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

    .line 156
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 163
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getParent()Lcom/google/inject/Injector;
    .locals 4

    .line 180
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getParent()Lcom/google/inject/Injector;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :try_start_2
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 187
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 3
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

    .line 192
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 199
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 3
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

    .line 204
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :try_start_2
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 211
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getScopeBindings()Ljava/util/Map;
    .locals 4
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

    .line 216
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getScopeBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 223
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 228
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getTypeConverterBindings()Ljava/util/Set;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 235
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lroboguice/inject/ContextScopedRoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    return-void
.end method

.method public injectMembersWithoutViews(Ljava/lang/Object;)V
    .locals 3

    .line 244
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    iget-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 251
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 249
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 251
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public injectViewMembers(Ljava/lang/Object;)V
    .locals 3

    .line 256
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    invoke-static {p1}, Lroboguice/inject/ViewListener$ViewMembersInjector;->injectViews(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    iget-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 263
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 261
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 263
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
