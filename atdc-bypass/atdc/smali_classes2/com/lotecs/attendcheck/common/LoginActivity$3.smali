.class Lcom/lotecs/attendcheck/common/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/LoginActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/LoginActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$3;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/lotecs/attendcheck/common/LoginActivity$3;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-static {p2, p1}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$000(Lcom/lotecs/attendcheck/common/LoginActivity;Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
