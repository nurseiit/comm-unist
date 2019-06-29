.class Lcom/lotecs/attendcheck/common/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity;->LoginButtonClick()V
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

    .line 285
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 289
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 290
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    const-string v2, ""

    .line 292
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    .line 294
    invoke-virtual {v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lossStatus"

    invoke-static {v1, v2, v0}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$200(Lcom/lotecs/attendcheck/common/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    .line 300
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const v1, 0x7f0e00b8

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const v2, 0x7f0e00a0

    invoke-virtual {v1, v2}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/lotecs/util/AndroidUtil;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity;->login_button_layout_:Landroid/widget/Button;

    const-string v1, "Login"

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 309
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$10;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const p2, 0x7f0e009f

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    :cond_3
    :goto_0
    return p2
.end method
