.class public Lcom/lotecs/attendcheck/common/AgreeActivity;
.super Landroid/app/Activity;
.source "AgreeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgreeActivity"


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field checkBox2:Landroid/widget/CheckBox;

.field private iddi:Ljava/lang/String;

.field private idno:Ljava/lang/String;

.field private info:Lcom/lotecs/attendcheck/domain/AppInfo;

.field webView2_:Landroid/webkit/WebView;

.field webView3_:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadWeb()V
    .locals 1

    .line 60
    new-instance v0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/AgreeActivity$1;-><init>(Lcom/lotecs/attendcheck/common/AgreeActivity;)V

    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/AgreeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001b

    .line 40
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/AgreeActivity;->setContentView(I)V

    const p1, 0x7f08014b

    .line 42
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/AgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    const p1, 0x7f08014c

    .line 43
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/AgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    const p1, 0x7f080053

    .line 44
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/AgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->checkBox:Landroid/widget/CheckBox;

    const p1, 0x7f080054

    .line 45
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/AgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->checkBox2:Landroid/widget/CheckBox;

    .line 47
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/AgreeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lotecs/attendcheck/domain/AppInfo;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    .line 48
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AppInfo;->getIdno()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->idno:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->info:Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AppInfo;->getIddi()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity;->iddi:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/AgreeActivity;->loadWeb()V

    .line 52
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/AgreeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    return-void
.end method
