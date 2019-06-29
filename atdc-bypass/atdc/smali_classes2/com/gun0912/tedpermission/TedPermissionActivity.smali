.class public Lcom/gun0912/tedpermission/TedPermissionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TedPermissionActivity.java"


# static fields
.field public static final EXTRA_DENIED_DIALOG_CLOSE_TEXT:Ljava/lang/String; = "denied_dialog_close_text"

.field public static final EXTRA_DENY_MESSAGE:Ljava/lang/String; = "deny_message"

.field public static final EXTRA_DENY_TITLE:Ljava/lang/String; = "deny_title"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final EXTRA_RATIONALE_CONFIRM_TEXT:Ljava/lang/String; = "rationale_confirm_text"

.field public static final EXTRA_RATIONALE_MESSAGE:Ljava/lang/String; = "rationale_message"

.field public static final EXTRA_RATIONALE_TITLE:Ljava/lang/String; = "rationale_title"

.field public static final EXTRA_SETTING_BUTTON:Ljava/lang/String; = "setting_button"

.field public static final EXTRA_SETTING_BUTTON_TEXT:Ljava/lang/String; = "setting_button_text"

.field public static final REQ_CODE_PERMISSION_REQUEST:I = 0xa

.field public static final REQ_CODE_SYSTEM_ALERT_WINDOW_PERMISSION_REQUEST:I = 0x1e

.field public static final REQ_CODE_SYSTEM_ALERT_WINDOW_PERMISSION_REQUEST_SETTING:I = 0x1f

.field private static permissionListenerStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/gun0912/tedpermission/PermissionListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field deniedCloseButtonText:Ljava/lang/String;

.field denyMessage:Ljava/lang/CharSequence;

.field denyTitle:Ljava/lang/CharSequence;

.field hasSettingButton:Z

.field isShownRationaleDialog:Z

.field packageName:Ljava/lang/String;

.field permissions:[Ljava/lang/String;

.field rationaleConfirmText:Ljava/lang/String;

.field rationaleTitle:Ljava/lang/CharSequence;

.field rationale_message:Ljava/lang/CharSequence;

.field settingButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/gun0912/tedpermission/TedPermissionActivity;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->checkPermissions(Z)V

    return-void
.end method

.method private checkPermissions(Z)V
    .locals 6

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasWindowPermission()Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_0
    invoke-static {p0, v4}, Lcom/gun0912/tedpermission/TedPermissionBase;->isDenied(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionResult(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 171
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionResult(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    const-string p1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 174
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionResult(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 175
    :cond_5
    iget-boolean p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->isShownRationaleDialog:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 176
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->showRationaleDialog(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 178
    :cond_6
    invoke-virtual {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->requestPermissions(Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method private hasWindowPermission()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private needWindowPermission()Z
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasWindowPermission()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private permissionResult(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissionResult(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionListenerStack:Ljava/util/Deque;

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionListenerStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/PermissionListener;

    .line 187
    invoke-static {p1}, Lcom/gun0912/tedpermission/util/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/gun0912/tedpermission/PermissionListener;->onPermissionGranted()V

    goto :goto_0

    .line 190
    :cond_0
    invoke-interface {v0, p1}, Lcom/gun0912/tedpermission/PermissionListener;->onPermissionDenied(Ljava/util/ArrayList;)V

    .line 192
    :goto_0
    sget-object p1, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionListenerStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 193
    sput-object p1, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionListenerStack:Ljava/util/Deque;

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->finish()V

    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private requestWindowPermission()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "package"

    .line 131
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v2, Lcom/gun0912/tedpermission/R$style;->Theme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v0, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    new-instance v3, Lcom/gun0912/tedpermission/TedPermissionActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/gun0912/tedpermission/TedPermissionActivity$1;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;Landroid/content/Intent;)V

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->isShownRationaleDialog:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 148
    invoke-virtual {p0, v1, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private setupFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "permissions"

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    const-string v1, "rationale_title"

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleTitle:Ljava/lang/CharSequence;

    const-string v1, "rationale_message"

    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/CharSequence;

    const-string v1, "deny_title"

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyTitle:Ljava/lang/CharSequence;

    const-string v1, "deny_message"

    .line 87
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/CharSequence;

    const-string v1, "package_name"

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    const-string v1, "setting_button"

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    const-string v0, "rationale_confirm_text"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    const-string v0, "denied_dialog_close_text"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    const-string v0, "setting_button_text"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "permissions"

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    const-string v1, "rationale_title"

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleTitle:Ljava/lang/CharSequence;

    const-string v1, "rationale_message"

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/CharSequence;

    const-string v1, "deny_title"

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyTitle:Ljava/lang/CharSequence;

    const-string v1, "deny_message"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/CharSequence;

    const-string v1, "package_name"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    const-string v1, "setting_button"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    const-string v0, "rationale_confirm_text"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    const-string v0, "denied_dialog_close_text"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    const-string v0, "setting_button_text"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private showRationaleDialog(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v1, Lcom/gun0912/tedpermission/R$style;->Theme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleTitle:Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    new-instance v2, Lcom/gun0912/tedpermission/TedPermissionActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity$2;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->isShownRationaleDialog:Z

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/gun0912/tedpermission/PermissionListener;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionListenerStack:Ljava/util/Deque;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionListenerStack:Ljava/util/Deque;

    .line 62
    :cond_0
    sget-object v0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionListenerStack:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 363
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 360
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->checkPermissions(Z)V

    goto :goto_0

    .line 353
    :pswitch_1
    invoke-direct {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasWindowPermission()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->showWindowPermissionDenyDialog()V

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->checkPermissions(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 350
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->checkPermissions(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->overridePendingTransition(II)V

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 71
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->setupFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->needWindowPermission()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->requestWindowPermission()V

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->checkPermissions(Z)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 252
    invoke-static {p0, p2}, Lcom/gun0912/tedpermission/TedPermissionBase;->getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 255
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionResult(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->showPermissionDenyDialog(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "permissions"

    .line 234
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "rationale_title"

    .line 235
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "rationale_message"

    .line 236
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "deny_title"

    .line 237
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "deny_message"

    .line 238
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "package_name"

    .line 239
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setting_button"

    .line 240
    iget-boolean v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "setting_button"

    .line 241
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rationale_confirm_text"

    .line 242
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setting_button_text"

    .line 243
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestPermissions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public showPermissionDenyDialog(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionResult(Ljava/util/ArrayList;)V

    return-void

    .line 269
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v1, Lcom/gun0912/tedpermission/R$style;->Theme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 271
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/CharSequence;

    .line 272
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    new-instance v3, Lcom/gun0912/tedpermission/TedPermissionActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity$3;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V

    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 281
    iget-boolean p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    if-eqz p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 284
    sget p1, Lcom/gun0912/tedpermission/R$string;->tedpermission_setting:I

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    new-instance v1, Lcom/gun0912/tedpermission/TedPermissionActivity$4;

    invoke-direct {v1, p0}, Lcom/gun0912/tedpermission/TedPermissionActivity$4;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 296
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public showWindowPermissionDenyDialog()V
    .locals 4

    .line 317
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v1, Lcom/gun0912/tedpermission/R$style;->Theme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 318
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    new-instance v3, Lcom/gun0912/tedpermission/TedPermissionActivity$5;

    invoke-direct {v3, p0}, Lcom/gun0912/tedpermission/TedPermissionActivity$5;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V

    .line 320
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 327
    iget-boolean v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    sget v1, Lcom/gun0912/tedpermission/R$string;->tedpermission_setting:I

    invoke-virtual {p0, v1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->settingButtonText:Ljava/lang/String;

    new-instance v2, Lcom/gun0912/tedpermission/TedPermissionActivity$6;

    invoke-direct {v2, p0}, Lcom/gun0912/tedpermission/TedPermissionActivity$6;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 343
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
