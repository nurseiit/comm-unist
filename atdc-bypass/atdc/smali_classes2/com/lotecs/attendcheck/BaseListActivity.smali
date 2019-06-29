.class public Lcom/lotecs/attendcheck/BaseListActivity;
.super Lroboguice/activity/RoboListActivity;
.source "BaseListActivity.java"


# static fields
.field public static mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lroboguice/activity/RoboListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lroboguice/activity/RoboListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget-object p1, Lcom/lotecs/attendcheck/BaseListActivity;->mTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/BaseListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Regular.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/lotecs/attendcheck/BaseListActivity;->mTypeface:Landroid/graphics/Typeface;

    :cond_0
    const p1, 0x1020002

    .line 20
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/BaseListActivity;->setGlobalFont(Landroid/view/ViewGroup;)V

    return-void
.end method

.method setGlobalFont(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/lotecs/attendcheck/BaseListActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 29
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 30
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/lotecs/attendcheck/BaseListActivity;->setGlobalFont(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
