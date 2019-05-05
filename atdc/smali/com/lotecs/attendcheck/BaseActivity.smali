.class public Lcom/lotecs/attendcheck/BaseActivity;
.super Lroboguice/activity/RoboActivity;
.source "BaseActivity.java"


# static fields
.field public static mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lroboguice/activity/RoboActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object p1, Lcom/lotecs/attendcheck/BaseActivity;->mTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Regular.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/lotecs/attendcheck/BaseActivity;->mTypeface:Landroid/graphics/Typeface;

    :cond_0
    const p1, 0x1020002

    .line 24
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/BaseActivity;->setGlobalFont(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const v0, 0x7f0800f0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/BaseActivity;->finish()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method setGlobalFont(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 31
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 32
    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/lotecs/attendcheck/BaseActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 33
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 34
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/lotecs/attendcheck/BaseActivity;->setGlobalFont(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
