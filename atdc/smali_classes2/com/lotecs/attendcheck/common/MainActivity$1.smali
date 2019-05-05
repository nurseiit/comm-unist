.class Lcom/lotecs/attendcheck/common/MainActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/MainActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$1;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 98
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lotecs/attendcheck/common/MainActivity$1;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\uc804\uc790\ucd9c\uacb0\uc2dc\uc2a4\ud15c"

    .line 99
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/lotecs/attendcheck/common/MainActivity$1$1;

    invoke-direct {p2, p0, p4}, Lcom/lotecs/attendcheck/common/MainActivity$1$1;-><init>(Lcom/lotecs/attendcheck/common/MainActivity$1;Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    .line 101
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 119
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lotecs/attendcheck/common/MainActivity$1;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\uc804\uc790\ucd9c\uacb0\uc2dc\uc2a4\ud15c"

    .line 120
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/lotecs/attendcheck/common/MainActivity$1$3;

    invoke-direct {p2, p0, p4}, Lcom/lotecs/attendcheck/common/MainActivity$1$3;-><init>(Lcom/lotecs/attendcheck/common/MainActivity$1;Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    .line 122
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/lotecs/attendcheck/common/MainActivity$1$2;

    invoke-direct {p2, p0, p4}, Lcom/lotecs/attendcheck/common/MainActivity$1$2;-><init>(Lcom/lotecs/attendcheck/common/MainActivity$1;Landroid/webkit/JsResult;)V

    const/high16 p3, 0x1040000

    .line 129
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
