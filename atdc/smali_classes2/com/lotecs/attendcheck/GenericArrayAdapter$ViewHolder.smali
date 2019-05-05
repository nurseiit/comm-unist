.class Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GenericArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/GenericArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lotecs/attendcheck/GenericArrayAdapter;


# direct methods
.method private constructor <init>(Lcom/lotecs/attendcheck/GenericArrayAdapter;Landroid/view/View;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;->this$0:Lcom/lotecs/attendcheck/GenericArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x1020014

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lotecs/attendcheck/GenericArrayAdapter;Landroid/view/View;Lcom/lotecs/attendcheck/GenericArrayAdapter$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lotecs/attendcheck/GenericArrayAdapter$ViewHolder;-><init>(Lcom/lotecs/attendcheck/GenericArrayAdapter;Landroid/view/View;)V

    return-void
.end method
