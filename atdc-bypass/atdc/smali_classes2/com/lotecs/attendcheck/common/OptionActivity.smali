.class public Lcom/lotecs/attendcheck/common/OptionActivity;
.super Landroid/app/Activity;
.source "OptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lotecs/attendcheck/common/OptionActivity$Component;
    }
.end annotation


# static fields
.field public static final ITEM_COTENT:Ljava/lang/String; = "content"

.field public static final ITEM_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/lotecs/attendcheck/common/OptionActivity;->changeBtn(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;Z)Landroid/widget/ListView;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/lotecs/attendcheck/common/OptionActivity;->initOptionView(Landroid/content/Intent;Z)Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method private changeBtn(Landroid/content/Intent;Z)V
    .locals 1

    .line 122
    new-instance v0, Lcom/lotecs/attendcheck/common/OptionActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/lotecs/attendcheck/common/OptionActivity$2;-><init>(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;Z)V

    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/common/OptionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initOptionView(Landroid/content/Intent;Z)Landroid/widget/ListView;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "psnm"

    .line 64
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 65
    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 68
    invoke-virtual {v6, v0, v1}, Lcom/lotecs/attendcheck/common/OptionActivity;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Keep Bluetooth On"

    const-string v1, "Keep Bluetooth on after checking the attendance"

    move/from16 v3, p2

    .line 75
    invoke-virtual {v6, v0, v1, v3}, Lcom/lotecs/attendcheck/common/OptionActivity;->createComponent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Android Version"

    .line 78
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/lotecs/attendcheck/common/OptionActivity;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Version"

    const v1, 0x7f0e0026

    .line 81
    invoke-virtual {v6, v1}, Lcom/lotecs/attendcheck/common/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/lotecs/attendcheck/common/OptionActivity;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v11, Lcom/lotecs/attendcheck/common/OptionSimpleAdapter;

    invoke-direct {v11, v6}, Lcom/lotecs/attendcheck/common/OptionSimpleAdapter;-><init>(Landroid/content/Context;)V

    const-string v12, "Login Information"

    .line 85
    new-instance v13, Landroid/widget/SimpleAdapter;

    const/4 v14, 0x2

    new-array v4, v14, [Ljava/lang/String;

    const-string v0, "title"

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const-string v0, "content"

    const/16 v16, 0x1

    aput-object v0, v4, v16

    new-array v5, v14, [I

    fill-array-data v5, :array_0

    const v3, 0x7f0b003d

    move-object v0, v13

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v11, v12, v13}, Lcom/lotecs/attendcheck/common/OptionSimpleAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 91
    new-instance v0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    const v1, 0x7f0b003b

    invoke-direct {v0, v6, v8, v1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 92
    new-instance v1, Lcom/lotecs/attendcheck/common/OptionActivity$1;

    invoke-direct {v1, v6, v7}, Lcom/lotecs/attendcheck/common/OptionActivity$1;-><init>(Lcom/lotecs/attendcheck/common/OptionActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->setOnCheckButtonListener(Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;)V

    const-string v1, "Setting"

    .line 109
    invoke-virtual {v11, v1, v0}, Lcom/lotecs/attendcheck/common/OptionSimpleAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const-string v7, "Terminal Information"

    .line 110
    new-instance v8, Landroid/widget/SimpleAdapter;

    new-array v4, v14, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v4, v15

    const-string v0, "content"

    aput-object v0, v4, v16

    new-array v5, v14, [I

    fill-array-data v5, :array_1

    move-object v0, v8

    move-object v1, v6

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v11, v7, v8}, Lcom/lotecs/attendcheck/common/OptionSimpleAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const-string v7, "Program Information"

    .line 113
    new-instance v8, Landroid/widget/SimpleAdapter;

    new-array v4, v14, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v4, v15

    const-string v0, "content"

    aput-object v0, v4, v16

    new-array v5, v14, [I

    fill-array-data v5, :array_2

    move-object v0, v8

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v11, v7, v8}, Lcom/lotecs/attendcheck/common/OptionSimpleAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 116
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0800ab
        0x7f0800ac
    .end array-data

    :array_1
    .array-data 4
        0x7f0800ab
        0x7f0800ac
    .end array-data

    :array_2
    .array-data 4
        0x7f0800ab
        0x7f0800ac
    .end array-data
.end method


# virtual methods
.method public createComponent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/lotecs/attendcheck/common/OptionActivity$Component;
    .locals 1

    .line 56
    new-instance v0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;-><init>(Lcom/lotecs/attendcheck/common/OptionActivity;)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->setTitle(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p2}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->setCaption(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p3}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->setState(Z)V

    return-object v0
.end method

.method public createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    .line 50
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 51
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 32
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/OptionActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/OptionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 37
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v1, 0x7f0e00bd

    .line 39
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    const-string p1, "isBeacon"

    .line 42
    invoke-static {p0, p1, v0}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 43
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/OptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lotecs/attendcheck/common/OptionActivity;->initOptionView(Landroid/content/Intent;Z)Landroid/widget/ListView;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/OptionActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
