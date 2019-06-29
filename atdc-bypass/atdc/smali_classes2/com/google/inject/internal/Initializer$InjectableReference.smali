.class Lcom/google/inject/internal/Initializer$InjectableReference;
.super Ljava/lang/Object;
.source "Initializer.java"

# interfaces
.implements Lcom/google/inject/internal/Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/Initializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InjectableReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/Initializable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/inject/internal/Initializer;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "TT;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 131
    iput-object p4, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->key:Lcom/google/inject/Key;

    .line 132
    iput-object p5, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    const-string p1, "instance"

    .line 133
    invoke-static {p3, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    const-string p1, "source"

    .line 134
    invoke-static {p6, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/Initializer$InjectableReference;)Ljava/lang/Object;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v0}, Lcom/google/inject/internal/Initializer;->access$100(Lcom/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 149
    iget-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    return-object p1

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v1}, Lcom/google/inject/internal/Initializer;->access$200(Lcom/google/inject/internal/Initializer;)Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 155
    :try_start_0
    iget-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {p1}, Lcom/google/inject/internal/Initializer;->access$100(Lcom/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 156
    iget-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v0}, Lcom/google/inject/internal/Initializer;->access$300(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v0}, Lcom/google/inject/internal/Initializer;->access$400(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/inject/internal/MembersInjectorImpl;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const-string v4, "No membersInjector available for instance: %s, from key: %s"

    const/4 v5, 0x2

    .line 169
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->key:Lcom/google/inject/Key;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v3, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    iget-object v4, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->key:Lcom/google/inject/Key;

    iget-object v5, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    iget-object v6, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v7, v7, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-object v7, v7, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/google/inject/Stage;

    sget-object v8, Lcom/google/inject/Stage;->TOOL:Lcom/google/inject/Stage;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    move-object v2, v3

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/inject/internal/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;Z)V

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    iget-object v2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/inject/internal/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object p1

    return-object p1
.end method
