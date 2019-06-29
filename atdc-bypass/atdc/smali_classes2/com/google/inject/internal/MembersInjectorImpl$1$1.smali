.class Lcom/google/inject/internal/MembersInjectorImpl$1$1;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/MembersInjectorImpl$1;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/inject/internal/MembersInjectorImpl$1;

.field final synthetic val$context:Lcom/google/inject/internal/InternalContext;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/MembersInjectorImpl$1;Lcom/google/inject/internal/InternalContext;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->this$1:Lcom/google/inject/internal/MembersInjectorImpl$1;

    iput-object p2, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->val$context:Lcom/google/inject/internal/InternalContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->this$1:Lcom/google/inject/internal/MembersInjectorImpl$1;

    iget-object v0, v0, Lcom/google/inject/internal/MembersInjectorImpl$1;->this$0:Lcom/google/inject/internal/MembersInjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->this$1:Lcom/google/inject/internal/MembersInjectorImpl$1;

    iget-object v1, v1, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->this$1:Lcom/google/inject/internal/MembersInjectorImpl$1;

    iget-object v2, v2, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$errors:Lcom/google/inject/internal/Errors;

    iget-object v3, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->val$context:Lcom/google/inject/internal/InternalContext;

    iget-object v4, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->this$1:Lcom/google/inject/internal/MembersInjectorImpl$1;

    iget-boolean v4, v4, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$toolableOnly:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/inject/internal/MembersInjectorImpl;->injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Z)V

    .line 89
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl$1$1;->this$1:Lcom/google/inject/internal/MembersInjectorImpl$1;

    iget-object v0, v0, Lcom/google/inject/internal/MembersInjectorImpl$1;->val$instance:Ljava/lang/Object;

    return-object v0
.end method
