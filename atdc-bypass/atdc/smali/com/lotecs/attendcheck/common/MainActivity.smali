.class public Lcom/lotecs/attendcheck/common/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;,
        Lcom/lotecs/attendcheck/common/MainActivity$WebClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private attend_:Lcom/lotecs/attendcheck/domain/AttendInfo;

.field private goplusBeacons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field info:Lcom/lotecs/attendcheck/domain/AppInfo;

.field private infos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isFinish:Z

.field private permissionlistener:Lcom/gun0912/tedpermission/PermissionListener;

.field protected pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

.field private startTime:J

.field private uid_:Ljava/lang/String;

.field webView_:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->isFinish:Z

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->startTime:J

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->infos:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Lcom/lotecs/attendcheck/common/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/MainActivity$3;-><init>(Lcom/lotecs/attendcheck/common/MainActivity;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->permissionlistener:Lcom/gun0912/tedpermission/PermissionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/common/MainActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/MainActivity;->permissionCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->attend_:Lcom/lotecs/attendcheck/domain/AttendInfo;

    return-object p0
.end method

.method static synthetic access$102(Lcom/lotecs/attendcheck/common/MainActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->attend_:Lcom/lotecs/attendcheck/domain/AttendInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lotecs/attendcheck/common/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->infos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/lotecs/attendcheck/common/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->infos:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lotecs/attendcheck/common/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->uid_:Ljava/lang/String;

    return-object p0
.end method

.method private enableBluetooth()V
    .locals 3

    .line 148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_1
    return-void
.end method

.method private filterBeacons(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/lotecs/attendcheck/common/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uac1c filterBeacons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 468
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_0
    new-instance p1, Lcom/lotecs/attendcheck/common/MainActivity$5;

    invoke-direct {p1, p0}, Lcom/lotecs/attendcheck/common/MainActivity$5;-><init>(Lcom/lotecs/attendcheck/common/MainActivity;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private getBeaconAuth(Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;)",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->goplusBeacons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 442
    sget-object v2, Lcom/lotecs/attendcheck/common/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lotecs/attendcheck/domain/AttendInfo;

    .line 444
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTrackList()V
    .locals 5

    const v0, 0x7f0e0109

    .line 354
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 357
    iget-object v3, p0, Lcom/lotecs/attendcheck/common/MainActivity;->uid_:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "psco"

    const-string v3, ""

    .line 358
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sjco"

    const-string v3, ""

    .line 359
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "date"

    const-string v3, "yyyyMMddHHmmss"

    .line 360
    invoke-static {v3}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v2, Lcom/lotecs/attendcheck/common/MainActivity;->TAG:Ljava/lang/String;

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 366
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object v0

    new-instance v1, Lcom/lotecs/attendcheck/common/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/MainActivity$4;-><init>(Lcom/lotecs/attendcheck/common/MainActivity;)V

    .line 367
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private loadWeb(Ljava/lang/String;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/lotecs/attendcheck/common/MainActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/lotecs/attendcheck/common/MainActivity$2;-><init>(Lcom/lotecs/attendcheck/common/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private permissionCheck()V
    .locals 4

    .line 278
    invoke-static {p0}, Lcom/gun0912/tedpermission/TedPermission;->with(Landroid/content/Context;)Lcom/gun0912/tedpermission/TedPermission$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->permissionlistener:Lcom/gun0912/tedpermission/PermissionListener;

    .line 279
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    const-string v1, "\uad8c\ud55c\uc5d0 \ub300\ud55c \ud5c8\uac00\ub97c \uac70\ubd80\ud558\uba74 \uc804\uc790\ucd9c\uacb0 \uc11c\ube44\uc2a4\ub97c \uc0ac\uc6a9\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.\n\n[\uc124\uc815]> [\uad8c\ud55c]\uc5d0\uc11c \uad8c\ud55c\uc744 \ucf1c\uc2ed\uc2dc\uc624."

    .line 280
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setDeniedMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 283
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    .line 284
    invoke-virtual {v0}, Lcom/gun0912/tedpermission/TedPermission$Builder;->check()V

    return-void
.end method

.method private setUserInfo(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "app"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lotecs/attendcheck/domain/AppInfo;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    .line 159
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AppInfo;->getIddi()Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/domain/AppInfo;->getIdno()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->uid_:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/lotecs/attendcheck/common/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iddi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->uid_:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lotecs/attendcheck/common/MainActivity;->loadWeb(Ljava/lang/String;)V

    const-string v0, "2"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/MainActivity;->getTrackList()V

    :cond_0
    return-void
.end method


# virtual methods
.method public didRangeBeaconsInRegion(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/lotecs/attendcheck/common/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uac1c didRangeBeaconsInRegion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 459
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/MainActivity;->filterBeacons(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 460
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->goplusBeacons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 433
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1f4

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "isExqz"

    const/4 p2, 0x1

    .line 435
    invoke-static {p0, p1, p2}, Lcom/lotecs/util/AndroidUtil;->saveBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 13

    .line 305
    sget-object v0, Lcom/lotecs/attendcheck/common/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->isFinish:Z

    const v1, 0x7f0e00c2

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/lotecs/attendcheck/common/MainActivity;->isFinish:Z

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    iput-wide v5, p0, Lcom/lotecs/attendcheck/common/MainActivity;->startTime:J

    .line 312
    invoke-virtual {p0, v1}, Lcom/lotecs/attendcheck/common/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    .line 315
    sget-object v0, Lcom/lotecs/attendcheck/common/MainActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/lotecs/attendcheck/common/MainActivity;->startTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", endTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-wide v7, p0, Lcom/lotecs/attendcheck/common/MainActivity;->startTime:J

    const-wide/16 v9, 0x5

    add-long v11, v7, v9

    cmp-long v0, v11, v5

    if-lez v0, :cond_4

    const-string v0, "isBeacon"

    .line 317
    invoke-static {p0, v0, v2}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    .line 321
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 322
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_3
    const/4 v0, -0x1

    .line 325
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/MainActivity;->setResult(I)V

    .line 326
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/MainActivity;->finish()V

    goto :goto_0

    .line 328
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    iput-wide v5, p0, Lcom/lotecs/attendcheck/common/MainActivity;->startTime:J

    .line 329
    invoke-virtual {p0, v1}, Lcom/lotecs/attendcheck/common/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 87
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/MainActivity;->setContentView(I)V

    const p1, 0x7f08014a

    .line 89
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    .line 91
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/MainActivity;->setUserInfo(Landroid/content/Intent;)V

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->goplusBeacons:Ljava/util/ArrayList;

    .line 95
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    new-instance v0, Lcom/lotecs/attendcheck/common/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/MainActivity$1;-><init>(Lcom/lotecs/attendcheck/common/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/MainActivity;->enableBluetooth()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0800f0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->setMainActivity(Lcom/lotecs/attendcheck/common/MainActivity;Z)V

    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
