.class Lcom/lotecs/attendcheck/common/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/LoginActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$5;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 182
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$5;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$5;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p2, p2, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$000(Lcom/lotecs/attendcheck/common/LoginActivity;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
