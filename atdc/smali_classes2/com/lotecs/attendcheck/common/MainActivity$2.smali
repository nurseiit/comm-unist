.class Lcom/lotecs/attendcheck/common/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/MainActivity;->loadWeb(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/MainActivity;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iput-object p2, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    new-instance v1, Lcom/lotecs/attendcheck/common/MainActivity$WebClient;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {v1, v2}, Lcom/lotecs/attendcheck/common/MainActivity$WebClient;-><init>(Lcom/lotecs/attendcheck/common/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 182
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 184
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 186
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 188
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/MainActivity;->access$000(Lcom/lotecs/attendcheck/common/MainActivity;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    new-instance v2, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;

    iget-object v3, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {v2, v3}, Lcom/lotecs/attendcheck/common/MainActivity$AndroidBridge;-><init>(Lcom/lotecs/attendcheck/common/MainActivity;)V

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/common/MainActivity;->webView_:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    const v3, 0x7f0e006b

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/common/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lotecs/attendcheck/common/MainActivity$2;->val$uid:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
