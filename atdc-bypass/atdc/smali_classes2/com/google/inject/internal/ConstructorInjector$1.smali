.class Lcom/google/inject/internal/ConstructorInjector$1;
.super Ljava/lang/Object;
.source "ConstructorInjector.java"

# interfaces
.implements Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/ConstructorInjector;->construct(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Class;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/google/inject/internal/ConstructorInjector;

.field final synthetic val$constructionContext:Lcom/google/inject/internal/ConstructionContext;

.field final synthetic val$context:Lcom/google/inject/internal/InternalContext;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ConstructorInjector;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/inject/internal/ConstructorInjector$1;->this$0:Lcom/google/inject/internal/ConstructorInjector;

    iput-object p2, p0, Lcom/google/inject/internal/ConstructorInjector$1;->val$errors:Lcom/google/inject/internal/Errors;

    iput-object p3, p0, Lcom/google/inject/internal/ConstructorInjector$1;->val$context:Lcom/google/inject/internal/InternalContext;

    iput-object p4, p0, Lcom/google/inject/internal/ConstructorInjector$1;->val$constructionContext:Lcom/google/inject/internal/ConstructionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjector$1;->this$0:Lcom/google/inject/internal/ConstructorInjector;

    iget-object v1, p0, Lcom/google/inject/internal/ConstructorInjector$1;->val$errors:Lcom/google/inject/internal/Errors;

    iget-object v2, p0, Lcom/google/inject/internal/ConstructorInjector$1;->val$context:Lcom/google/inject/internal/InternalContext;

    iget-object v3, p0, Lcom/google/inject/internal/ConstructorInjector$1;->val$constructionContext:Lcom/google/inject/internal/ConstructionContext;

    invoke-static {v0, v1, v2, v3}, Lcom/google/inject/internal/ConstructorInjector;->access$000(Lcom/google/inject/internal/ConstructorInjector;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
