.class Lcom/lotecs/attendcheck/common/LoginActivity$12;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity;->regIdno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 493
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 3

    .line 530
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 533
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-class v1, Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 534
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app"

    .line 536
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 537
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 538
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    const/high16 v0, 0x4000000

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "state"

    .line 498
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "T"

    .line 499
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v2, "regIdno"

    invoke-static {p1, v2, v1}, Lcom/lotecs/util/AndroidUtil;->saveBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string v2, "regIdno"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/lotecs/util/AndroidUtil;->saveBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :goto_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 515
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-class v3, Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 508
    :try_start_1
    invoke-static {}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 515
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-class v3, Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 519
    :goto_1
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v3, v3, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AppInfo;->setPass(Ljava/lang/String;)V

    const-string v2, "app"

    .line 520
    iget-object v3, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v3}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 521
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 522
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-virtual {v0, p1, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void

    .line 512
    :goto_2
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 515
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-class v4, Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 519
    iget-object v3, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v3}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    iget-object v4, v4, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/domain/AppInfo;->setPass(Ljava/lang/String;)V

    const-string v3, "app"

    .line 520
    iget-object v4, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {v4}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 521
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 522
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity$12;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-virtual {v0, v2, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 524
    :cond_2
    throw p1
.end method
