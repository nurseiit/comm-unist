.class Lcom/google/inject/internal/MembersInjectorImpl$1;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lcom/google/inject/internal/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/ContextualCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/MembersInjectorImpl;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;

.field final synthetic val$instance:Ljava/lang/Object;

.field final synthetic val$key:Lcom/google/inject/Key;

.field final synthetic val$provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

.field final synthetic val$source:Ljava/lang/Object;

.field final synthetic val$toolableOnly:Z


# direct methods
.method constructor <init>(Lcom/google/inject/internal/MembersInjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/ProvisionListenerStackCallback;Lcom/google/inject/internal/Errors;Ljava/lang/Object;Z)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->this$0:Lcom/google/inject/internal/MembersInjectorImpl;

    iput-object p2, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$key:Lcom/google/inject/Key;

    iput-object p3, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$source:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    iput-object p5, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$errors:Lcom/google/inject/internal/Errors;

    iput-object p6, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$instance:Ljava/lang/Object;

    iput-boolean p7, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$toolableOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/MembersInjectorImpl$1;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$key:Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$source:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/inject/internal/InternalContext;->pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-virtual {v0}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$errors:Lcom/google/inject/internal/Errors;

    new-instance v2, Lcom/google/inject/internal/MembersInjectorImpl$1$1;

    invoke-direct {v2, p0, p1}, Lcom/google/inject/internal/MembersInjectorImpl$1$1;-><init>(Lcom/google/inject/internal/MembersInjectorImpl$1;Lcom/google/inject/internal/InternalContext;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->this$0:Lcom/google/inject/internal/MembersInjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$errors:Lcom/google/inject/internal/Errors;

    iget-boolean v3, p0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$toolableOnly:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/inject/internal/MembersInjectorImpl;->injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/internal/InternalContext;->popState()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/inject/internal/InternalContext;->popState()V

    throw v0
.end method
