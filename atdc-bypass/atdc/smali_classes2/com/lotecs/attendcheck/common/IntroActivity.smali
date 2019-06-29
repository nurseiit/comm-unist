.class public Lcom/lotecs/attendcheck/common/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# static fields
.field public static final LOG:Z = true

.field public static final TAG:Ljava/lang/String; = "IntroActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/common/IntroActivity;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->regPush(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lotecs/attendcheck/common/IntroActivity;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->goMainPage(I)V

    return-void
.end method

.method private checkRegistrationGCM(Landroid/content/Context;)V
    .locals 3

    const-string v0, "regStatus"

    const/4 v1, 0x0

    .line 48
    invoke-static {p1, v0, v1}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/lotecs/attendcheck/common/GCMManager;

    const v1, 0x7f0e00eb

    invoke-virtual {p0, v1}, Lcom/lotecs/attendcheck/common/IntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lotecs/attendcheck/common/IntroActivity$1;

    invoke-direct {v2, p0}, Lcom/lotecs/attendcheck/common/IntroActivity$1;-><init>(Lcom/lotecs/attendcheck/common/IntroActivity;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/lotecs/attendcheck/common/GCMManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x5dc

    .line 67
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->goMainPage(I)V

    :goto_0
    return-void
.end method

.method private goMainPage(I)V
    .locals 4

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lotecs/attendcheck/common/IntroActivity;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/lotecs/attendcheck/common/IntroActivity$2;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/IntroActivity$2;-><init>(Lcom/lotecs/attendcheck/common/IntroActivity;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/common/IntroActivity;->mRunnable:Ljava/lang/Runnable;

    .line 81
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/IntroActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/IntroActivity;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private regPush(Ljava/lang/String;)V
    .locals 5

    const v0, 0x7f0e00d7

    .line 86
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/IntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "device"

    .line 91
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plat"

    const-string v3, "android"

    .line 92
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app"

    const-string v3, "unistAtdc"

    .line 93
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v2, Lcom/lotecs/attendcheck/common/IntroActivity;->TAG:Ljava/lang/String;

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

    .line 100
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 106
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object v0

    new-instance v1, Lcom/lotecs/attendcheck/common/IntroActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/lotecs/attendcheck/common/IntroActivity$3;-><init>(Lcom/lotecs/attendcheck/common/IntroActivity;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 42
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0, p0}, Lcom/lotecs/attendcheck/common/IntroActivity;->checkRegistrationGCM(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/IntroActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/IntroActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/IntroActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
