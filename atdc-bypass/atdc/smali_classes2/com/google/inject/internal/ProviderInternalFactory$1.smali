.class Lcom/google/inject/internal/ProviderInternalFactory$1;
.super Ljava/lang/Object;
.source "ProviderInternalFactory.java"

# interfaces
.implements Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/ProviderInternalFactory;->circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/google/inject/internal/ProviderInternalFactory;

.field final synthetic val$constructionContext:Lcom/google/inject/internal/ConstructionContext;

.field final synthetic val$dependency:Lcom/google/inject/spi/Dependency;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;

.field final synthetic val$provider:Ljavax/inject/Provider;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ProviderInternalFactory;Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->this$0:Lcom/google/inject/internal/ProviderInternalFactory;

    iput-object p2, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$provider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$errors:Lcom/google/inject/internal/Errors;

    iput-object p4, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$dependency:Lcom/google/inject/spi/Dependency;

    iput-object p5, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$constructionContext:Lcom/google/inject/internal/ConstructionContext;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->this$0:Lcom/google/inject/internal/ProviderInternalFactory;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$provider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$errors:Lcom/google/inject/internal/Errors;

    iget-object v3, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$dependency:Lcom/google/inject/spi/Dependency;

    iget-object v4, p0, Lcom/google/inject/internal/ProviderInternalFactory$1;->val$constructionContext:Lcom/google/inject/internal/ConstructionContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
