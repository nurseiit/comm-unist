.class Lcom/google/inject/internal/InternalInjectorCreator$1;
.super Ljava/lang/Object;
.source "InternalInjectorCreator.java"

# interfaces
.implements Lcom/google/inject/internal/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/InternalInjectorCreator;->loadEagerSingletons(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Stage;Lcom/google/inject/internal/Errors;)V
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
.field dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/internal/InternalInjectorCreator;

.field final synthetic val$binding:Lcom/google/inject/internal/BindingImpl;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InternalInjectorCreator;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->this$0:Lcom/google/inject/internal/InternalInjectorCreator;

    iput-object p2, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    iput-object p3, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->val$errors:Lcom/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iget-object p1, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/google/inject/spi/Dependency;

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

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InternalInjectorCreator$1;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/google/inject/spi/Dependency;

    iget-object v1, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/inject/internal/InternalContext;->pushDependency(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->val$errors:Lcom/google/inject/internal/Errors;

    iget-object v2, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v2}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/google/inject/spi/Dependency;

    const/4 v4, 0x0

    invoke-interface {v2, v1, p1, v3, v4}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 207
    :try_start_1
    invoke-virtual {v2}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    throw v1
.end method
