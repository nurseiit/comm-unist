.class Lcom/google/inject/internal/InjectorImpl$2$1;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/internal/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/InjectorImpl$2;->get()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/ContextualCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/inject/internal/InjectorImpl$2;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl$2;Lcom/google/inject/internal/Errors;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lcom/google/inject/internal/InjectorImpl$2$1;->this$1:Lcom/google/inject/internal/InjectorImpl$2;

    iput-object p2, p0, Lcom/google/inject/internal/InjectorImpl$2$1;->val$errors:Lcom/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InternalContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl$2$1;->this$1:Lcom/google/inject/internal/InjectorImpl$2;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl$2;->val$dependency:Lcom/google/inject/spi/Dependency;

    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl$2$1;->this$1:Lcom/google/inject/internal/InjectorImpl$2;

    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl$2;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/inject/internal/InternalContext;->pushDependency(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    .line 1009
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl$2$1;->this$1:Lcom/google/inject/internal/InjectorImpl$2;

    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl$2;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl$2$1;->val$errors:Lcom/google/inject/internal/Errors;

    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl$2$1;->this$1:Lcom/google/inject/internal/InjectorImpl$2;

    iget-object v3, v3, Lcom/google/inject/internal/InjectorImpl$2;->val$dependency:Lcom/google/inject/spi/Dependency;

    const/4 v4, 0x0

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    invoke-virtual {p1, v0}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    throw v1
.end method
