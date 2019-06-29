.class Lcom/androidnetworking/internal/InternalRunnable$1;
.super Ljava/lang/Object;
.source "InternalRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/internal/InternalRunnable;

.field final synthetic val$anError:Lcom/androidnetworking/error/ANError;

.field final synthetic val$request:Lcom/androidnetworking/common/ANRequest;


# direct methods
.method constructor <init>(Lcom/androidnetworking/internal/InternalRunnable;Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/androidnetworking/internal/InternalRunnable$1;->this$0:Lcom/androidnetworking/internal/InternalRunnable;

    iput-object p2, p0, Lcom/androidnetworking/internal/InternalRunnable$1;->val$request:Lcom/androidnetworking/common/ANRequest;

    iput-object p3, p0, Lcom/androidnetworking/internal/InternalRunnable$1;->val$anError:Lcom/androidnetworking/error/ANError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable$1;->val$request:Lcom/androidnetworking/common/ANRequest;

    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable$1;->val$anError:Lcom/androidnetworking/error/ANError;

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->deliverError(Lcom/androidnetworking/error/ANError;)V

    .line 162
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable$1;->val$request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->finish()V

    return-void
.end method
