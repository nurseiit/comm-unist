.class Lcom/androidnetworking/common/ConnectionClassManager$1;
.super Ljava/lang/Object;
.source "ConnectionClassManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/common/ConnectionClassManager;->updateBandwidth(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/common/ConnectionClassManager;


# direct methods
.method constructor <init>(Lcom/androidnetworking/common/ConnectionClassManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/androidnetworking/common/ConnectionClassManager$1;->this$0:Lcom/androidnetworking/common/ConnectionClassManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/androidnetworking/common/ConnectionClassManager$1;->this$0:Lcom/androidnetworking/common/ConnectionClassManager;

    invoke-static {v0}, Lcom/androidnetworking/common/ConnectionClassManager;->access$200(Lcom/androidnetworking/common/ConnectionClassManager;)Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/common/ConnectionClassManager$1;->this$0:Lcom/androidnetworking/common/ConnectionClassManager;

    .line 90
    invoke-static {v1}, Lcom/androidnetworking/common/ConnectionClassManager;->access$000(Lcom/androidnetworking/common/ConnectionClassManager;)Lcom/androidnetworking/common/ConnectionQuality;

    move-result-object v1

    iget-object v2, p0, Lcom/androidnetworking/common/ConnectionClassManager$1;->this$0:Lcom/androidnetworking/common/ConnectionClassManager;

    invoke-static {v2}, Lcom/androidnetworking/common/ConnectionClassManager;->access$100(Lcom/androidnetworking/common/ConnectionClassManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;->onChange(Lcom/androidnetworking/common/ConnectionQuality;I)V

    return-void
.end method
