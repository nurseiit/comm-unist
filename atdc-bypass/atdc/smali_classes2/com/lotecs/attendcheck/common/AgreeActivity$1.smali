.class Lcom/lotecs/attendcheck/common/AgreeActivity$1;
.super Ljava/lang/Object;
.source "AgreeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/AgreeActivity;->loadWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/AgreeActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    new-instance v1, Lcom/lotecs/attendcheck/common/AgreeActivity$1$1;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/common/AgreeActivity$1$1;-><init>(Lcom/lotecs/attendcheck/common/AgreeActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 81
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 83
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 84
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    new-instance v2, Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;

    iget-object v3, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    invoke-direct {v2, v3}, Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;-><init>(Lcom/lotecs/attendcheck/common/AgreeActivity;)V

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView2_:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    const v3, 0x7f0e00f9

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/common/AgreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    new-instance v2, Lcom/lotecs/attendcheck/common/AgreeActivity$1$2;

    invoke-direct {v2, p0}, Lcom/lotecs/attendcheck/common/AgreeActivity$1$2;-><init>(Lcom/lotecs/attendcheck/common/AgreeActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 106
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 107
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    new-instance v1, Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    invoke-direct {v1, v2}, Lcom/lotecs/attendcheck/common/AgreeActivity$AndroidBridge;-><init>(Lcom/lotecs/attendcheck/common/AgreeActivity;)V

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/AgreeActivity;->webView3_:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/AgreeActivity$1;->this$0:Lcom/lotecs/attendcheck/common/AgreeActivity;

    const v2, 0x7f0e00cc

    invoke-virtual {v1, v2}, Lcom/lotecs/attendcheck/common/AgreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
