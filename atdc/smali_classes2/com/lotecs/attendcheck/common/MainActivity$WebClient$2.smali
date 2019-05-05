.class Lcom/lotecs/attendcheck/common/MainActivity$WebClient$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/MainActivity$WebClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lotecs/attendcheck/common/MainActivity$WebClient;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/MainActivity$WebClient;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$WebClient$2;->this$1:Lcom/lotecs/attendcheck/common/MainActivity$WebClient;

    iput-object p2, p0, Lcom/lotecs/attendcheck/common/MainActivity$WebClient$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$WebClient$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
