.class Lcom/lotecs/attendcheck/common/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 189
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$6;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const/4 p1, 0x2

    if-eqz p2, :cond_0

    .line 194
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$6;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p2, p2, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$6;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 197
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$6;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-virtual {p2, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$6;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p2, p2, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    const-string v0, "ID"

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$6;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 202
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$6;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-virtual {p2, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method
