.class Lcom/lotecs/attendcheck/common/MainActivity$WebClient;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/common/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/MainActivity;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$WebClient;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "onReceivedError"

    .line 258
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 217
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$WebClient;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const-string p3, "SSL Certificate Error"

    .line 235
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p3, "\ubcf4\uc548 \uc778\uc99d\uc11c\uac00 \ubc1c\uae09\ub429\ub2c8\ub2e4."

    .line 237
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p3, "\uacc4\uc18d"

    .line 239
    new-instance v0, Lcom/lotecs/attendcheck/common/MainActivity$WebClient$1;

    invoke-direct {v0, p0, p2}, Lcom/lotecs/attendcheck/common/MainActivity$WebClient$1;-><init>(Lcom/lotecs/attendcheck/common/MainActivity$WebClient;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p3, "\ucde8\uc18c"

    .line 245
    new-instance v0, Lcom/lotecs/attendcheck/common/MainActivity$WebClient$2;

    invoke-direct {v0, p0, p2}, Lcom/lotecs/attendcheck/common/MainActivity$WebClient$2;-><init>(Lcom/lotecs/attendcheck/common/MainActivity$WebClient;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, ""

    const-string v1, " shouldOverrideUrlLoading "

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "UTF-8"

    .line 208
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 211
    :catch_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
