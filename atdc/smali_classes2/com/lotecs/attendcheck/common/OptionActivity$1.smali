.class Lcom/lotecs/attendcheck/common/OptionActivity$1;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/OptionActivity;->initOptionView(Landroid/content/Intent;Z)Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$1;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    iput-object p2, p0, Lcom/lotecs/attendcheck/common/OptionActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(IZ)V
    .locals 3

    const-string v0, "reload debug"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/state = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 101
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$1;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionActivity$1;->val$intent:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/lotecs/attendcheck/common/OptionActivity;->access$000(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$1;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionActivity$1;->val$intent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/lotecs/attendcheck/common/OptionActivity;->access$000(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method
