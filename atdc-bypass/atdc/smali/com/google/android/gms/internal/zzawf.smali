.class public final Lcom/google/android/gms/internal/zzawf;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# static fields
.field private static final zzarK:Lcom/google/android/gms/internal/zzayo;


# instance fields
.field private final zzaoY:Lcom/google/android/gms/cast/Cast$Listener;

.field private final zzarM:Landroid/content/Context;

.field private final zzavD:Ljava/lang/String;

.field private final zzavE:Ljava/lang/String;

.field private final zzavp:Landroid/view/View$OnClickListener;

.field private final zzavr:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayo;

    const-string v1, "MuteToggleUIController"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzayo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzawf;->zzarK:Lcom/google/android/gms/internal/zzayo;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzarM:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzarM:Landroid/content/Context;

    sget p2, Lcom/google/android/gms/R$string;->cast_mute:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzavD:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzarM:Landroid/content/Context;

    sget p2, Lcom/google/android/gms/R$string;->cast_unmute:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzavE:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/zzawg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzawg;-><init>(Lcom/google/android/gms/internal/zzawf;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzaoY:Lcom/google/android/gms/cast/Cast$Listener;

    new-instance p1, Lcom/google/android/gms/internal/zzawh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzawh;-><init>(Lcom/google/android/gms/internal/zzawf;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzavp:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private final zzW(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzavD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzawf;->zzavE:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawf;->zzok()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawf;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzawf;->zzW(Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzawf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzawf;->zzarM:Landroid/content/Context;

    return-object p0
.end method

.method private final zzok()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzarM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzawf;->zzW(Z)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzawf;->zzW(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic zzon()Lcom/google/android/gms/internal/zzayo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzawf;->zzarK:Lcom/google/android/gms/internal/zzayo;

    return-object v0
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawf;->zzavp:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzaoY:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/CastSession;->addCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawf;->zzok()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzavr:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawf;->zzarM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawf;->zzaoY:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastSession;->removeCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
