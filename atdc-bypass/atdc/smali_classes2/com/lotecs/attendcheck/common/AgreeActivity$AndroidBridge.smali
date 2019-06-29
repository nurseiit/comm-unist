.class Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;
.super Ljava/lang/Object;
.source "AgreeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/common/AgreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/AgreeActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logout()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/common/AgreeActivity;->finish()V

    return-void
.end method
