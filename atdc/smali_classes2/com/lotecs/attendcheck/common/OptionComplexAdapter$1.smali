.class Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;
.super Ljava/lang/Object;
.source "OptionComplexAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

.field final synthetic val$holder:Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;I)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    iput-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$holder:Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;

    iput p3, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private detectSwipe(FF)V
    .locals 2

    .line 99
    sget-object p2, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    invoke-static {p2}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->access$000(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$holder:Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_imgbtn:Landroid/widget/ImageButton;

    const p2, 0x7f0701df

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 104
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->access$100(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$position:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->setState(Z)V

    .line 107
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->access$200(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;

    move-result-object p1

    iget v0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$position:I

    invoke-interface {p1, v0, p2}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;->onClick(IZ)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$holder:Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$ViewHolder;->list_imgbtn:Landroid/widget/ImageButton;

    const p2, 0x7f0701e0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 110
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->access$100(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$position:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lotecs/attendcheck/common/OptionActivity$Component;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->setState(Z)V

    .line 113
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->access$200(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;)Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;

    move-result-object p1

    iget v0, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->val$position:I

    invoke-interface {p1, v0, p2}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$OnCheckButtonListener;->onClick(IZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    iget p2, p2, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->mPreviousX:F

    sub-float p2, p1, p2

    .line 80
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    iget v2, v2, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->mPreviousY:F

    sub-float v2, v0, v2

    .line 86
    invoke-direct {p0, p2, v2}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->detectSwipe(FF)V

    .line 89
    :pswitch_1
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->access$002(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;Z)Z

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    invoke-static {p2, v1}, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->access$002(Lcom/lotecs/attendcheck/common/OptionComplexAdapter;Z)Z

    .line 93
    :goto_0
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    iput p1, p2, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->mPreviousX:F

    .line 94
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/OptionComplexAdapter$1;->this$0:Lcom/lotecs/attendcheck/common/OptionComplexAdapter;

    iput v0, p1, Lcom/lotecs/attendcheck/common/OptionComplexAdapter;->mPreviousY:F

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
