.class public abstract Lcom/gun0912/tedpermission/PermissionBuilder;
.super Ljava/lang/Object;
.source "PermissionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/gun0912/tedpermission/PermissionBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PREFS_IS_FIRST_REQUEST:Ljava/lang/String; = "PREFS_IS_FIRST_REQUEST"

.field private static final PREFS_NAME_PERMISSION:Ljava/lang/String; = "PREFS_NAME_PERMISSION"


# instance fields
.field private context:Landroid/content/Context;

.field private deniedCloseButtonText:Ljava/lang/CharSequence;

.field private denyMessage:Ljava/lang/CharSequence;

.field private denyTitle:Ljava/lang/CharSequence;

.field private hasSettingBtn:Z

.field private listener:Lcom/gun0912/tedpermission/PermissionListener;

.field private permissions:[Ljava/lang/String;

.field private rationaleConfirmText:Ljava/lang/CharSequence;

.field private rationaleMessage:Ljava/lang/CharSequence;

.field private rationaleTitle:Ljava/lang/CharSequence;

.field private settingButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->hasSettingBtn:Z

    .line 30
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    .line 31
    sget v0, Lcom/gun0912/tedpermission/R$string;->tedpermission_close:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->deniedCloseButtonText:Ljava/lang/CharSequence;

    .line 32
    sget v0, Lcom/gun0912/tedpermission/R$string;->tedpermission_confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleConfirmText:Ljava/lang/CharSequence;

    return-void
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-gtz p1, :cond_0

    .line 82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid String resource id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected checkPermissions()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must setPermissionListener() on TedPermission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/gun0912/tedpermission/util/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must setPermissions() on TedPermission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    invoke-interface {v0}, Lcom/gun0912/tedpermission/PermissionListener;->onPermissionGranted()V

    return-void

    .line 47
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "permissions"

    .line 48
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rationale_title"

    .line 50
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "rationale_message"

    .line 51
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "deny_title"

    .line 52
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "deny_message"

    .line 53
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 54
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "setting_button"

    .line 55
    iget-boolean v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->hasSettingBtn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "denied_dialog_close_text"

    .line 56
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->deniedCloseButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "rationale_confirm_text"

    .line 57
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleConfirmText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "setting_button_text"

    .line 58
    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->settingButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    invoke-static {v1, v0, v2}, Lcom/gun0912/tedpermission/TedPermissionActivity;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/gun0912/tedpermission/PermissionListener;)V

    .line 63
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gun0912/tedpermission/TedPermissionBase;->setFirstRequest(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public setDeniedCloseButtonText(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setDeniedCloseButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeniedCloseButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->deniedCloseButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDeniedMessage(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setDeniedMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeniedMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDeniedTitle(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setDeniedTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeniedTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setGotoSettingButton(Z)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 121
    iput-boolean p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->hasSettingBtn:Z

    return-object p0
.end method

.method public setGotoSettingButtonText(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setGotoSettingButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGotoSettingButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->settingButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gun0912/tedpermission/PermissionListener;",
            ")TT;"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    return-object p0
.end method

.method public varargs setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    return-object p0
.end method

.method public setRationaleConfirmText(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setRationaleConfirmText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRationaleConfirmText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleConfirmText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setRationaleMessage(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setRationaleMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRationaleMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setRationaleTitle(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setRationaleTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRationaleTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
