.class Lcom/lotecs/attendcheck/common/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 119
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$2;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 123
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$2;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://portal.unist.ac.kr/irj/servlet/prt/portal/prtroot/kr.ac.unist.HomeContents.FooterPop?userLanguage=ko"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/lotecs/attendcheck/common/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
