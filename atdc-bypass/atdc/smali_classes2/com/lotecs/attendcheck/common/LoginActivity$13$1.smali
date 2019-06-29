.class Lcom/lotecs/attendcheck/common/LoginActivity$13$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity$13;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lotecs/attendcheck/common/LoginActivity$13;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/LoginActivity$13;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$13$1;->this$1:Lcom/lotecs/attendcheck/common/LoginActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 581
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$13$1;->this$1:Lcom/lotecs/attendcheck/common/LoginActivity$13;

    iget-object p1, p1, Lcom/lotecs/attendcheck/common/LoginActivity$13;->this$0:Lcom/lotecs/attendcheck/common/LoginActivity;

    const-string p2, "kr.ac.unist.atdc"

    invoke-static {p1, p2}, Lcom/lotecs/attendcheck/common/LoginActivity;->access$600(Lcom/lotecs/attendcheck/common/LoginActivity;Ljava/lang/String;)V

    return-void
.end method
