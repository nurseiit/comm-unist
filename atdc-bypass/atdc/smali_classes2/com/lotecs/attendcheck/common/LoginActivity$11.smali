.class Lcom/lotecs/attendcheck/common/LoginActivity$11;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity;->checkLoginInfo(Ljava/lang/String;)V
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

    .line 343
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 3

    .line 424
    invoke-static {}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " on_error ===== statusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/LoginActivity;->login_button_layout_:Landroid/widget/Button;

    const-string v1, "Login"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getErrorCode()I

    move-result p1

    const/16 v1, 0x190

    const v2, 0x7f0e00bc

    if-eq p1, v1, :cond_1

    const/16 v1, 0x198

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_1

    .line 459
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const v1, 0x7f0e009f

    invoke-virtual {p1, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 460
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-virtual {p1, v2}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$11$3;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$11$3;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity$11;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const v1, 0x7f0e00ec

    invoke-virtual {p1, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 435
    new-instance p1, Lcom/lotecs/attendcheck/common/LoginActivity$11$1;

    invoke-direct {p1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$11$1;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity$11;)V

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 443
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const v1, 0x7f0e0098

    invoke-virtual {p1, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 449
    new-instance p1, Lcom/lotecs/attendcheck/common/LoginActivity$11$2;

    invoke-direct {p1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$11$2;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity$11;)V

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v1, v1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$000(Lcom/lotecs/attendcheck/common/LoginActivity;Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v1, v1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$000(Lcom/lotecs/attendcheck/common/LoginActivity;Landroid/view/View;)V

    :try_start_0
    const-string v0, "state"

    .line 350
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "T"

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data"

    .line 352
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    new-instance v1, Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-direct {v1}, Lcom/lotecs/attendcheck/domain/AppInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$302(Lcom/lotecs/attendcheck/common/LoginActivity;Lcom/lotecs/attendcheck/domain/AppInfo;)Lcom/lotecs/attendcheck/domain/AppInfo;

    const-string v0, "&&&&&&&&&111111111  : "

    const-string v1, "psnm"

    .line 357
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v0

    const-string v1, "iddi"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/domain/AppInfo;->setIddi(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v0

    const-string v1, "idno"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/domain/AppInfo;->setIdno(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/domain/AppInfo;->setName(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v0

    const-string v1, "psnm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/domain/AppInfo;->setPsnm(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/domain/AppInfo;->getIddi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->setLoginActivity(Lcom/lotecs/attendcheck/common/LoginActivity;Z)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v1, "save_check"

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/LoginActivity;->chk_login_:Landroid/widget/CheckBox;

    .line 373
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 372
    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 374
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v1, "save_id1"

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    .line 375
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveStringApiVaule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/LoginActivity;->chk_login_:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v1, "save_id"

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    .line 379
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveStringApiVaule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v1, "save_pw"

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    .line 381
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveStringApiVaule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v1, "save_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveStringApiVaule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v1, "save_pw"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveStringApiVaule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    .line 390
    invoke-virtual {v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-static {v0, v1}, Lcom/lotecs/util/AndroidUtil;->getStringApiVaule(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v1, v1, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0}, Lcom/lotecs/util/StringUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "admin$#1510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "priv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lotecs/attendcheck/domain/AppInfo;->getIdno()Ljava/lang/String;

    move-result-object v2

    const-string v3, "priv"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$400(Lcom/lotecs/attendcheck/common/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-class v1, Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 398
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 401
    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lotecs/attendcheck/domain/AppInfo;->setPass(Ljava/lang/String;)V

    const-string v1, "app"

    .line 403
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v1, ""

    const-string v2, "message"

    .line 412
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-static {v0, v1, p1}, Lcom/lotecs/util/AndroidUtil;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 415
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
