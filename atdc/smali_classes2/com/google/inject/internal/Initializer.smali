.class final Lcom/google/inject/internal/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/Initializer$InjectableReference;
    }
.end annotation


# instance fields
.field private final creatingThread:Ljava/lang/Thread;

.field private final pendingInjection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Initializer$InjectableReference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final pendingMembersInjectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/MembersInjectorImpl<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ready:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->creatingThread:Ljava/lang/Thread;

    .line 47
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    .line 50
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingMembersInjectors:Ljava/util/Map;

    .line 54
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/inject/internal/Initializer;)Ljava/lang/Thread;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/inject/internal/Initializer;->creatingThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/inject/internal/Initializer;->pendingMembersInjectors:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method injectAll(Lcom/google/inject/internal/Errors;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/Initializer$InjectableReference;

    .line 108
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/inject/internal/Initializer$InjectableReference;->get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to satisfy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "TT;",
            "Lcom/google/inject/Binding<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;)",
            "Lcom/google/inject/internal/Initializable<",
            "TT;>;"
        }
    .end annotation

    .line 66
    invoke-static {p4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v7, v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p1, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v1, p3}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v1

    move-object v7, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 72
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p1, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {p5}, Lcom/google/inject/internal/MembersInjectorStore;->hasTypeListeners()Z

    move-result p5

    if-nez p5, :cond_1

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->hasListeners()Z

    move-result p5

    if-nez p5, :cond_1

    goto :goto_3

    .line 78
    :cond_1
    new-instance p5, Lcom/google/inject/internal/Initializer$InjectableReference;

    if-nez p3, :cond_2

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_2
    invoke-interface {p3}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_1

    :goto_2
    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/inject/internal/Initializer$InjectableReference;-><init>(Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p5

    .line 75
    :cond_3
    :goto_3
    invoke-static {p2}, Lcom/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/internal/Initializable;

    move-result-object p1

    return-object p1
.end method

.method validateOustandingInjections(Lcom/google/inject/internal/Errors;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/Initializer$InjectableReference;

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/google/inject/internal/Initializer;->pendingMembersInjectors:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/inject/internal/Initializer$InjectableReference;->access$000(Lcom/google/inject/internal/Initializer$InjectableReference;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/google/inject/internal/Initializer$InjectableReference;->validate(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    :cond_0
    return-void
.end method
