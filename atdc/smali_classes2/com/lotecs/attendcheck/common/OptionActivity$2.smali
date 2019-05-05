.class Lcom/lotecs/attendcheck/common/OptionActivity$2;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/OptionActivity;->changeBtn(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isBeacon:Z


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;Z)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    iput-object p2, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->val$isBeacon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->val$intent:Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->val$isBeacon:Z

    invoke-static {v1, v2, v3}, Lcom/lotecs/attendcheck/common/OptionActivity;->access$100(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;Z)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/common/OptionActivity;->setContentView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    const-string v1, "isBeacon"

    iget-boolean v2, p0, Lcom/lotecs/attendcheck/common/OptionActivity$2;->val$isBeacon:Z

    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
