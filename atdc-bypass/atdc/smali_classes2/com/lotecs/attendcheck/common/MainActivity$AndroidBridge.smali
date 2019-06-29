.class Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/common/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/MainActivity;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 493
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    const-class v2, Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uid"

    .line 494
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-virtual {p1, v0}, Lcom/lotecs/attendcheck/common/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public logout()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/common/MainActivity;->finish()V

    return-void
.end method

.method public setting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 501
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    const-class v0, Lcom/lotecs/attendcheck/common/OptionActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "name"

    .line 502
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/domain/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "psnm"

    .line 503
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/domain/AppInfo;->getPsnm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-virtual {p2, p1}, Lcom/lotecs/attendcheck/common/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
