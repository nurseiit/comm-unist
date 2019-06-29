.class Lroboguice/inject/ContextScope$1;
.super Ljava/lang/Object;
.source "ContextScope.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/inject/ContextScope;->scope(Lcom/google/inject/Key;Lcom/google/inject/Provider;)Lcom/google/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/inject/ContextScope;

.field final synthetic val$key:Lcom/google/inject/Key;

.field final synthetic val$unscoped:Lcom/google/inject/Provider;


# direct methods
.method constructor <init>(Lroboguice/inject/ContextScope;Lcom/google/inject/Key;Lcom/google/inject/Provider;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lroboguice/inject/ContextScope$1;->this$0:Lroboguice/inject/ContextScope;

    iput-object p2, p0, Lroboguice/inject/ContextScope$1;->val$key:Lcom/google/inject/Key;

    iput-object p3, p0, Lroboguice/inject/ContextScope$1;->val$unscoped:Lcom/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ContextScope$1;->this$0:Lroboguice/inject/ContextScope;

    invoke-virtual {v1}, Lroboguice/inject/ContextScope;->getContextStack()Ljava/util/Stack;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 109
    iget-object v2, p0, Lroboguice/inject/ContextScope$1;->this$0:Lroboguice/inject/ContextScope;

    invoke-virtual {v2, v1}, Lroboguice/inject/ContextScope;->getScopedObjectMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 111
    monitor-exit v0

    return-object v1

    .line 113
    :cond_0
    iget-object v2, p0, Lroboguice/inject/ContextScope$1;->val$key:Lcom/google/inject/Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    iget-object v3, p0, Lroboguice/inject/ContextScope$1;->val$key:Lcom/google/inject/Key;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    iget-object v2, p0, Lroboguice/inject/ContextScope$1;->val$unscoped:Lcom/google/inject/Provider;

    invoke-interface {v2}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lroboguice/inject/ContextScope$1;->val$key:Lcom/google/inject/Key;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
