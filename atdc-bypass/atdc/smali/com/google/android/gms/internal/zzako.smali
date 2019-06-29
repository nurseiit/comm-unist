.class final Lcom/google/android/gms/internal/zzako;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzaka;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzIc:Lcom/google/android/gms/internal/zzcu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzNY:I

.field private zzNZ:I

.field private zzOb:I

.field private zzOc:I

.field private zzQx:Ljava/lang/String;

.field private zzQy:Lcom/google/android/gms/internal/zzmz;

.field private zzYA:Ljava/lang/Boolean;

.field private final zzabS:Lcom/google/android/gms/internal/zzakr;

.field private final zzabT:Lcom/google/android/gms/ads/internal/zzbl;

.field private zzabU:Lcom/google/android/gms/internal/zzakb;

.field private zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field private zzabW:Z

.field private zzabX:Z

.field private zzabY:Z

.field private zzabZ:Z

.field private zzaca:I

.field private zzacb:Z

.field private zzacc:Z

.field private zzacd:Lcom/google/android/gms/internal/zzaks;

.field private zzace:Z

.field private zzacf:Z

.field private zzacg:Lcom/google/android/gms/internal/zznw;

.field private zzach:I

.field private zzaci:I

.field private zzacj:Lcom/google/android/gms/internal/zzmz;

.field private zzack:Lcom/google/android/gms/internal/zzmz;

.field private zzacl:Lcom/google/android/gms/internal/zzna;

.field private zzacm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzacn:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field private zzaco:Z

.field private zzacp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzsb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzacq:Lcom/google/android/gms/internal/zzig;

.field private final zzsS:Lcom/google/android/gms/ads/internal/zzv;

.field private final zztW:Lcom/google/android/gms/internal/zzaje;

.field private zzuZ:Lcom/google/android/gms/internal/zziv;

.field private zzwC:Lcom/google/android/gms/internal/zzaix;

.field private final zzwR:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzakr;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)V
    .locals 2
    .param p5    # Lcom/google/android/gms/internal/zzcu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzako;->zzacb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzako;->zzacc:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzQx:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzako;->zzNZ:I

    iput v1, p0, Lcom/google/android/gms/internal/zzako;->zzNY:I

    iput v1, p0, Lcom/google/android/gms/internal/zzako;->zzOb:I

    iput v1, p0, Lcom/google/android/gms/internal/zzako;->zzOc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzako;->zzabY:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzako;->zzaca:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzako;->zzIc:Lcom/google/android/gms/internal/zzcu;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzako;->zztW:Lcom/google/android/gms/internal/zzaje;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzako;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzako;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzako;->zzwR:Landroid/view/WindowManager;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzako;->zzacq:Lcom/google/android/gms/internal/zzig;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzako;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_0
    invoke-virtual {p2, p4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p5, "Unable to enable Javascript."

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p2, p4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, p4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object p3

    iget-object p4, p6, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-virtual {p3, p1, p4}, Lcom/google/android/gms/internal/zzagz;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/internal/zzahe;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzako;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjd()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsa()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/zzakv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzakv;-><init>(Lcom/google/android/gms/internal/zzaka;)V

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzako;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzako;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzako;->removeJavascriptInterface(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/zzaix;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzakr;->zzis()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/zzaix;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzako;->zzwC:Lcom/google/android/gms/internal/zzaix;

    invoke-direct {p0, p7}, Lcom/google/android/gms/internal/zzako;->zzd(Lcom/google/android/gms/internal/zznb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzahe;->zzR(Landroid/content/Context;)V

    return-void
.end method

.method private final zzF(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isVisible"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzako;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzako;->zzaci:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzako;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzYA:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzafk;->zza(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzaW(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzako;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzaX(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsc()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzhw()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzafk;->zzhw()Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzYA:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzYA:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "(function(){})()"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzako;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzhw()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzako;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    :cond_2
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    const-string v0, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzako;->zzaW(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzako;->zzaW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzako;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzako;->zzaci:I

    return p0
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzako;
    .locals 12
    .param p4    # Lcom/google/android/gms/internal/zzcu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v1, Lcom/google/android/gms/internal/zzakr;

    move-object v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzakr;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/google/android/gms/internal/zzako;

    move-object v0, v11

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzako;-><init>(Lcom/google/android/gms/internal/zzakr;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)V

    return-object v11
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzako;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zznb;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjg()V

    new-instance v0, Lcom/google/android/gms/internal/zzna;

    new-instance v1, Lcom/google/android/gms/internal/zznb;

    const-string v2, "make_wv"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-object v3, v3, Lcom/google/android/gms/internal/zziv;->zzAs:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/zznb;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzna;-><init>(Lcom/google/android/gms/internal/zznb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznb;->zzc(Lcom/google/android/gms/internal/zznb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzQy:Lcom/google/android/gms/internal/zzmz;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    const-string v0, "native:view_create"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzQy:Lcom/google/android/gms/internal/zzmz;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzna;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzack:Lcom/google/android/gms/internal/zzmz;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzacj:Lcom/google/android/gms/internal/zzmz;

    return-void
.end method

.method private final zzhI()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzaco:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzaco:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafk;->zzhI()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzhw()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzYA:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzjb()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakb;->zzcn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakb;->zziP()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzwR:Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaiy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaiy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzakr;->zzis()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagz;->zzf(Landroid/app/Activity;)[I

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    aget v6, v2, v1

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzaiy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    aget v2, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaiy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v2

    move v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/zzako;->zzNY:I

    if-ne v2, v4, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzako;->zzNZ:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzako;->zzOb:I

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzako;->zzOc:I

    if-ne v2, v7, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/zzako;->zzNY:I

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/zzako;->zzNZ:I

    if-eq v2, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/zzako;->zzNY:I

    iput v5, p0, Lcom/google/android/gms/internal/zzako;->zzNZ:I

    iput v6, p0, Lcom/google/android/gms/internal/zzako;->zzOb:I

    iput v7, p0, Lcom/google/android/gms/internal/zzako;->zzOc:I

    new-instance v3, Lcom/google/android/gms/internal/zzwu;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzwu;-><init>(Lcom/google/android/gms/internal/zzaka;)V

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzwR:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/zzwu;->zza(IIIIFI)V

    return v1
.end method

.method private final zzjc()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzQy:Lcom/google/android/gms/internal/zzmz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "aeh2"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    return-void
.end method

.method private final zzjd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabY:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    const-string v1, "Disabling hardware acceleration on an AdView."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzako;->zzabZ:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzahe;->zzr(Landroid/view/View;)Z

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzako;->zzabZ:Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_2
    const-string v1, "Enabling hardware acceleration on an AdView."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzje()V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Enabling hardware acceleration on an overlay."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private final zzje()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabZ:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzahe;->zzq(Landroid/view/View;)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabZ:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzjf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzacp:Ljava/util/Map;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzjg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafk;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafk;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmr;->zza(Lcom/google/android/gms/internal/zznb;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjg()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzwC:Lcom/google/android/gms/internal/zzaix;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaix;->zzih()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->onDestroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->reset()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabX:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsa;->zze(Lcom/google/android/gms/internal/zzaka;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjf()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabX:Z

    const-string v1, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->zziT()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabX:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->reset()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsa;->zze(Lcom/google/android/gms/internal/zzaka;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzhI()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzQx:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getRequestedOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzako;->zzaca:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final isDestroyed()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabX:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrl"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzafk;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not call loadUrl. "

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzwC:Lcom/google/android/gms/internal/zzaix;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaix;->onAttachedToWindow()V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzace:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzakb;->zziP()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzacf:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->zziQ()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzajv;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzajv;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->zziR()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzajv;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzajv;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzako;->zzacf:Z

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjb()Z

    const/4 v1, 0x1

    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzako;->zzF(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final onDetachedFromWindow()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzwC:Lcom/google/android/gms/internal/zzaix;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaix;->onDetachedFromWindow()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzacf:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->zziP()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->zziQ()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzahe;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->zziR()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzako;->zzacf:Z

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzako;->zzF(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzagz;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzakb;->zzja()Lcom/google/android/gms/internal/zzakj;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzakb;->zzja()Lcom/google/android/gms/internal/zzakj;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzakj;->zzaS()V

    :cond_2
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDF:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, -0x1

    if-lez v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzako;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    cmpg-float v0, v0, v2

    const/4 v3, 0x1

    if-gez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzako;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v2

    if-lez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzako;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v2

    if-gez v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzako;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjb()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->zziu()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfO()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/internal/zzako;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabY:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAw:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzFD:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsa()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "/contentHeight"

    new-instance v2, Lcom/google/android/gms/internal/zzakp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzakp;-><init>(Lcom/google/android/gms/internal/zzako;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzako;->zzaX(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v2, p0, Lcom/google/android/gms/internal/zzako;->zzaci:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget p2, p0, Lcom/google/android/gms/internal/zzako;->zzaci:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    goto :goto_0

    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzako;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v0

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-eqz v1, :cond_6

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzako;->zzwR:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzako;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    if-eq v1, v5, :cond_8

    if-ne v1, v4, :cond_7

    goto :goto_2

    :cond_7
    const v1, 0x7fffffff

    goto :goto_3

    :cond_8
    :goto_2
    move v1, p1

    :goto_3
    if-eq v3, v5, :cond_9

    if-ne v3, v4, :cond_a

    :cond_9
    move v6, p2

    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget v3, v3, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    const/16 v4, 0x8

    if-gt v3, v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget v1, v1, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    if-le v1, v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_c

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzako;->setVisibility(I)V

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget p1, p1, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget p2, p2, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzako;->setMeasuredDimension(II)V

    goto :goto_5

    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget v3, v3, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget v5, v5, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-int p2, p2

    const/16 v1, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dp, but only has "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_e

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzako;->setVisibility(I)V

    :cond_e
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/internal/zzako;->setMeasuredDimension(II)V

    :goto_5
    monitor-exit v0

    return-void

    :cond_f
    :goto_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakb;->zziP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzacg:Lcom/google/android/gms/internal/zznw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzacg:Lcom/google/android/gms/internal/zznw;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zznw;->zzc(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzIc:Lcom/google/android/gms/internal/zzcu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzIc:Lcom/google/android/gms/internal/zzcu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzakr;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzwC:Lcom/google/android/gms/internal/zzaix;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakr;->zzis()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaix;->zzi(Landroid/app/Activity;)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacm:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzako;->zzaca:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget v1, p0, Lcom/google/android/gms/internal/zzako;->zzaca:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->setRequestedOrientation(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzakb;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzakb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzA(I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzQy:Lcom/google/android/gms/internal/zzmz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznb;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzA(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabY:Z

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzako;->zzabY:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjd()V

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzwu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzwu;-><init>(Lcom/google/android/gms/internal/zzaka;)V

    if-eqz p1, :cond_1

    const-string p1, "expanded"

    goto :goto_1

    :cond_1
    const-string p1, "default"

    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzwu;->zzap(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzB(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzakb;->zzcn()Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(ZZ)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzako;->zzabW:Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzako;->zzacb:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzD(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzako;->zzach:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/zzako;->zzach:I

    iget p1, p0, Lcom/google/android/gms/internal/zzako;->zzach:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfR()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zznb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzwC:Lcom/google/android/gms/internal/zzaix;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaix;->zzih()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzako;->setContext(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzako;->zzabY:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzako;->zzabW:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzQx:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzako;->zzaca:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzahe;->zzl(Lcom/google/android/gms/internal/zzaka;)Z

    const-string v1, "about:blank"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzako;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzakb;->reset()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzako;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzako;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzacb:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzako;->zzacc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzacd:Lcom/google/android/gms/internal/zzaks;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzako;->zzd(Lcom/google/android/gms/internal/zznb;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzako;->zzace:Z

    iput p2, p0, Lcom/google/android/gms/internal/zzako;->zzach:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsa;->zze(Lcom/google/android/gms/internal/zzaka;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjf()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaks;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzacd:Lcom/google/android/gms/internal/zzaks;

    if-eqz v1, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzacd:Lcom/google/android/gms/internal/zzaks;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzgh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgh;->zzxS:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzace:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzgh;->zzxS:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzako;->zzF(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zziv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->requestLayout()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzagz;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzako;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzako;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzaJ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzacc:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/zzbl;->zzaJ()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzaK()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzacc:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabT:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/zzbl;->zzaK()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzaU(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzafk;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not call loadUrl. "

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzaV(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzQx:Ljava/lang/String;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzak()Lcom/google/android/gms/ads/internal/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    return-object v0
.end method

.method public final zzam()Lcom/google/android/gms/internal/zziv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzuZ:Lcom/google/android/gms/internal/zziv;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zznw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzacg:Lcom/google/android/gms/internal/zznw;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzakb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzako;->zzaX(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->zzacn:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzfP()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacj:Lcom/google/android/gms/internal/zzmz;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzQy:Lcom/google/android/gms/internal/zzmz;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacj:Lcom/google/android/gms/internal/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    const-string v2, "native:view_show"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzako;->zzacj:Lcom/google/android/gms/internal/zzmz;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzna;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzako;->zzaX(Ljava/lang/String;)V

    return-void
.end method

.method public final zziA()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabY:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziB()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Destroying WebView!"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzhI()V

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzakq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzakq;-><init>(Lcom/google/android/gms/internal/zzako;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziC()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzacb:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziD()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzacc:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziE()Lcom/google/android/gms/internal/zzajz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zziF()Lcom/google/android/gms/internal/zzmz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzQy:Lcom/google/android/gms/internal/zzmz;

    return-object v0
.end method

.method public final zziG()Lcom/google/android/gms/internal/zzna;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    return-object v0
.end method

.method public final zziH()Lcom/google/android/gms/internal/zzaks;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzacd:Lcom/google/android/gms/internal/zzaks;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziI()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzako;->zzach:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziJ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzwC:Lcom/google/android/gms/internal/zzaix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaix;->zzig()V

    return-void
.end method

.method public final zziK()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzack:Lcom/google/android/gms/internal/zzmz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzack:Lcom/google/android/gms/internal/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacl:Lcom/google/android/gms/internal/zzna;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zzack:Lcom/google/android/gms/internal/zzmz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzna;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    :cond_0
    return-void
.end method

.method public final zziL()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzacm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final zziM()Lcom/google/android/gms/internal/zznw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzacg:Lcom/google/android/gms/internal/zznw;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziN()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzako;->setBackgroundColor(I)V

    return-void
.end method

.method public final zziq()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzako;->zzjc()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzir()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {}, Lcom/google/android/gms/internal/zzagz;->zzbh()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {}, Lcom/google/android/gms/internal/zzagz;->zzbf()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzako;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagz;->zzM(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzako;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzis()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakr;->zzis()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzit()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabS:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakr;->zzit()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zziu()Lcom/google/android/gms/ads/internal/overlay/zzm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzabV:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziv()Lcom/google/android/gms/ads/internal/overlay/zzm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->zzacn:Lcom/google/android/gms/ads/internal/overlay/zzm;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziw()Lcom/google/android/gms/internal/zzakb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzabU:Lcom/google/android/gms/internal/zzakb;

    return-object v0
.end method

.method public final zzix()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzako;->zzabW:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziy()Lcom/google/android/gms/internal/zzcu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zzIc:Lcom/google/android/gms/internal/zzcu;

    return-object v0
.end method

.method public final zziz()Lcom/google/android/gms/internal/zzaje;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->zztW:Lcom/google/android/gms/internal/zzaje;

    return-object v0
.end method
