.class public abstract Lcom/lotecs/attendcheck/GenericArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GenericArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/GenericArrayAdapter;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/lotecs/attendcheck/GenericArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public abstract drawText(Landroid/widget/TextView;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 34
    iget-object p2, p0, Lcom/lotecs/attendcheck/GenericArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x1090008

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance p3, Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;-><init>(Lcom/lotecs/attendcheck/GenericArrayAdapter;Landroid/view/View;Lcom/lotecs/attendcheck/GenericArrayAdapter$1;)V

    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;

    .line 41
    :goto_0
    iget-object p3, p3, Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/GenericArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/lotecs/attendcheck/GenericArrayAdapter;->drawText(Landroid/widget/TextView;Ljava/lang/Object;)V

    return-object p2
.end method
