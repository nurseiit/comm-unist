.class Lcom/lotecs/attendcheck/common/IntroActivity$2;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/IntroActivity;->goMainPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/IntroActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/IntroActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$2;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$2;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    const-class v2, Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    iget-object v1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$2;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-virtual {v1, v0}, Lcom/lotecs/attendcheck/common/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/IntroActivity$2;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/common/IntroActivity;->finish()V

    return-void
.end method
