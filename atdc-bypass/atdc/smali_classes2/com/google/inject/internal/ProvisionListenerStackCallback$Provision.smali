.class Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;
.super Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;
.source "ProvisionListenerStackCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProvisionListenerStackCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Provision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final callable:Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final context:Lcom/google/inject/internal/InternalContext;

.field erredListener:Lcom/google/inject/spi/ProvisionListener;

.field final errors:Lcom/google/inject/internal/Errors;

.field exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

.field index:I

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/ProvisionListenerStackCallback;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-direct {p0}, Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;-><init>()V

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    .line 103
    iput-object p4, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->callable:Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;

    .line 104
    iput-object p3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->context:Lcom/google/inject/internal/InternalContext;

    .line 105
    iput-object p2, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->errors:Lcom/google/inject/internal/Errors;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v0}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$100(Lcom/google/inject/internal/ProvisionListenerStackCallback;)Lcom/google/inject/Binding;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/DependencyAndSource;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->context:Lcom/google/inject/internal/InternalContext;

    invoke-virtual {v0}, Lcom/google/inject/internal/InternalContext;->getDependencyChain()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public provision()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 110
    iget v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    .line 111
    iget v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    iget-object v1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v1}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->callable:Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;

    invoke-interface {v0}, Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    iput-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

    .line 116
    new-instance v1, Lcom/google/inject/ProvisionException;

    iget-object v2, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v1

    .line 118
    :cond_0
    iget v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    iget-object v1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v1}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 119
    iget v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v1}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v1

    iget v2, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1, p0}, Lcom/google/inject/spi/ProvisionListener;->onProvision(Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    iget v1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->provision()Ljava/lang/Object;

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->result:Ljava/lang/Object;

    return-object v0

    :catch_1
    move-exception v1

    .line 124
    iget-object v2, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v2}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v2

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->erredListener:Lcom/google/inject/spi/ProvisionListener;

    .line 125
    throw v1

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already provisioned in this listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
