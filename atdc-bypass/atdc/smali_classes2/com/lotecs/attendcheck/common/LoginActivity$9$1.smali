.class Lcom/lotecs/attendcheck/common/LoginActivity$9$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lotecs/attendcheck/common/LoginActivity$9;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/LoginActivity$9;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$9$1;->this$1:Lcom/lotecs/attendcheck/common/LoginActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 247
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
