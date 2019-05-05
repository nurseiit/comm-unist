.class public Lcom/lotecs/attendcheck/common/OptionComplexAdapter;
.super Lroboguice/adapter/IterableAdapter;
.source "OptionComplexAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;,
        Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/adapter/IterableAdapter<",
        "Lcom/lotecs/attendcheck/common/OptionActivity$Component;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "OptionComplexAdapter"


# instance fields
.field private final ResourceId:I

.field private checkButtonListener:Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;

.field private final components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lotecs/attendcheck/common/OptionActivity$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private mIsDown:Z

.field protected mPreviousX:F

.field protected mPreviousY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lotecs/attendcheck/common/OptionActivity$Component;",
            ">;I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p3, p2}, Lroboguice/adapter/IterableAdapter;-><init>(Landroid/content/Context;ILjava/lang/Iterable;)V

    .line 35
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->context:Landroid/content/Context;

    .line 36
    iput p3, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->ResourceId:I

    .line 37
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->components:Ljava/util/ArrayList;

    .line 38
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->context:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->mIsDown:Z

    return p0
.end method

.method static synthetic access$002(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->mIsDown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->components:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->checkButtonListener:Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lotecs/attendcheck/common/OptionActivity$Component;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->getItem(I)Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 46
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->inflater:Landroid/view/LayoutInflater;

    iget p3, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->ResourceId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;-><init>()V

    const v0, 0x7f0800a7

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_title:Landroid/widget/TextView;

    const v0, 0x7f0800a6

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_caption:Landroid/widget/TextView;

    const v0, 0x7f0800a9

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_imgbtn:Landroid/widget/ImageButton;

    .line 53
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    invoke-virtual {v0}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->isState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_imgbtn:Landroid/widget/ImageButton;

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_imgbtn:Landroid/widget/ImageButton;

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 59
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_imgbtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_imgbtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;-><init>(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v0, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    invoke-virtual {v1}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p3, p3, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_caption:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    invoke-virtual {p1}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->getCaption()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setOnCheckButtonListener(Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->checkButtonListener:Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;

    return-void
.end method
