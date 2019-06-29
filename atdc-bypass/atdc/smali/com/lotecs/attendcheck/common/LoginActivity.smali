.class public Lcom/lotecs/attendcheck/common/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "kr.ac.unist.atdc"

.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field chk_login_:Landroid/widget/CheckBox;

.field container_:Landroid/widget/RelativeLayout;

.field edit_id_:Landroid/widget/EditText;

.field edit_pw_:Landroid/widget/EditText;

.field private getInfo:Lcom/lotecs/attendcheck/domain/AppInfo;

.field login_button_layout_:Landroid/widget/Button;

.field private permissionlistener:Lcom/gun0912/tedpermission/PermissionListener;

.field personal:Landroid/widget/TextView;

.field privacy:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 153
    new-instance v0, Lcom/lotecs/attendcheck/common/LoginActivity$4;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$4;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->permissionlistener:Lcom/gun0912/tedpermission/PermissionListener;

    return-void
.end method

.method private LoginButtonClick()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->login_button_layout_:Landroid/widget/Button;

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$10;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$10;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/common/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lotecs/attendcheck/common/LoginActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->permissionCheck()V

    return-void
.end method

.method static synthetic access$200(Lcom/lotecs/attendcheck/common/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->checkLoginInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lotecs/attendcheck/common/LoginActivity;)Lcom/lotecs/attendcheck/domain/AppInfo;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->getInfo:Lcom/lotecs/attendcheck/domain/AppInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/lotecs/attendcheck/common/LoginActivity;Lcom/lotecs/attendcheck/domain/AppInfo;)Lcom/lotecs/attendcheck/domain/AppInfo;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->getInfo:Lcom/lotecs/attendcheck/domain/AppInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lotecs/attendcheck/common/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/lotecs/attendcheck/common/LoginActivity;->regIdno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/lotecs/attendcheck/common/LoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lotecs/attendcheck/common/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->goAppstore(Ljava/lang/String;)V

    return-void
.end method

.method private checkDebuggingMode()V
    .locals 2

    .line 607
    invoke-static {p0}, Lcom/lotecs/util/AndroidUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    const v1, 0x7f0e00fa

    invoke-virtual {p0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    const v1, 0x7f0e00fb

    invoke-virtual {p0, v1}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private checkLoginInfo(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f0e009d

    .line 324
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 326
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pass"

    .line 327
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uuid"

    .line 328
    invoke-static {p0}, Lcom/lotecs/util/AndroidUtil;->device_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object p1, Lcom/lotecs/attendcheck/common/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    .line 337
    invoke-virtual {p1, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 342
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    new-instance v0, Lcom/lotecs/attendcheck/common/LoginActivity$11;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$11;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    .line 343
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private compareVersion()V
    .locals 5

    const v0, 0x7f0e007d

    .line 550
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "name"

    const-string v3, "\uc804\uc790\ucd9c\uacb0"

    .line 553
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plat"

    const-string v3, "Android"

    .line 554
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    .line 555
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v2, Lcom/lotecs/attendcheck/common/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 562
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 566
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object v0

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$13;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$13;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    .line 567
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private getVersionCode()I
    .locals 3

    .line 641
    :try_start_0
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 646
    :goto_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method private goAppstore(Ljava/lang/String;)V
    .locals 3

    .line 631
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 633
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 632
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 651
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private permissionCheck()V
    .locals 4

    .line 144
    invoke-static {p0}, Lcom/gun0912/tedpermission/TedPermission;->with(Landroid/content/Context;)Lcom/gun0912/tedpermission/TedPermission$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->permissionlistener:Lcom/gun0912/tedpermission/PermissionListener;

    .line 145
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    const-string v1, "\uad8c\ud55c\uc5d0 \ub300\ud55c \ud5c8\uac00\ub97c \uac70\ubd80\ud558\uba74 \uc804\uc790\ucd9c\uacb0 \uc11c\ube44\uc2a4\ub97c \uc0ac\uc6a9\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.\n\n[\uc124\uc815]> [\uad8c\ud55c]\uc5d0\uc11c \uad8c\ud55c\uc744 \ucf1c\uc2ed\uc2dc\uc624."

    .line 146
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setDeniedMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 149
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    .line 150
    invoke-virtual {v0}, Lcom/gun0912/tedpermission/TedPermission$Builder;->check()V

    return-void
.end method

.method private regIdno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const p3, 0x7f0e00d6

    .line 477
    invoke-virtual {p0, p3}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device"

    .line 480
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "plat"

    const-string v1, "android"

    .line 481
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app"

    const-string v1, "unistAtdc"

    .line 482
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "idno"

    .line 483
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object p1, Lcom/lotecs/attendcheck/common/LoginActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {p3}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    .line 488
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 492
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    new-instance p2, Lcom/lotecs/attendcheck/common/LoginActivity$12;

    invoke-direct {p2, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$12;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    .line 493
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private setSavedLoginId()V
    .locals 4

    const-string v0, "save_check"

    const/4 v1, 0x0

    .line 273
    invoke-static {p0, v0, v1}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "save_id"

    .line 274
    invoke-static {p0, v1}, Lcom/lotecs/util/AndroidUtil;->getStringApiVaule(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "save_pw"

    .line 275
    invoke-static {p0, v2}, Lcom/lotecs/util/AndroidUtil;->getStringApiVaule(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->chk_login_:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 279
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 177
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$5;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 189
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$6;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 209
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$7;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$7;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 221
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$8;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$8;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 239
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->chk_login_:Landroid/widget/CheckBox;

    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$9;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$9;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->checkDebuggingMode()V

    .line 263
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->setSavedLoginId()V

    .line 266
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->LoginButtonClick()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 619
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 78
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->setContentView(I)V

    const p1, 0x7f08005d

    .line 81
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->container_:Landroid/widget/RelativeLayout;

    const p1, 0x7f080072

    .line 82
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_id_:Landroid/widget/EditText;

    const p1, 0x7f080073

    .line 83
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->edit_pw_:Landroid/widget/EditText;

    const p1, 0x7f0800b1

    .line 84
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->login_button_layout_:Landroid/widget/Button;

    const p1, 0x7f080056

    .line 85
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->chk_login_:Landroid/widget/CheckBox;

    const p1, 0x7f0800dd

    .line 86
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->personal:Landroid/widget/TextView;

    const p1, 0x7f0800e7

    .line 87
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->privacy:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->personal:Landroid/widget/TextView;

    const v0, 0x7f0e00bf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "Policy of Personal Information Treatment"

    .line 92
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->privacy:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</u>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->permissionCheck()V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/lotecs/util/AndroidUtil;->is_network_setting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->init()V

    goto :goto_0

    .line 106
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e00b7

    .line 107
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e00bc

    .line 108
    new-instance v1, Lcom/lotecs/attendcheck/common/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$1;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->privacy:Landroid/widget/TextView;

    new-instance v0, Lcom/lotecs/attendcheck/common/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$2;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity;->container_:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/lotecs/attendcheck/common/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/LoginActivity$3;-><init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 171
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/LoginActivity;->compareVersion()V

    return-void
.end method
