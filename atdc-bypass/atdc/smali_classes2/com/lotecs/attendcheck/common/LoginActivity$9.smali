.class Lcom/lotecs/attendcheck/common/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 239
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$9;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$9;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity;->chk_login_:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$9;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$9;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const v1, 0x7f0e00bc

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$9$1;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$9$1;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity$9;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e00be

    .line 250
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
