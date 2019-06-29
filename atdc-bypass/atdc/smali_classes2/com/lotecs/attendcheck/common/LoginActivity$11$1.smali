.class Lcom/lotecs/attendcheck/common/LoginActivity$11$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/LoginActivity$11;->onError(Lcom/androidnetworking/error/ANError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lotecs/attendcheck/common/LoginActivity$11;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/LoginActivity$11;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/LoginActivity$11$1;->this$1:Lcom/lotecs/attendcheck/common/LoginActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 439
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
