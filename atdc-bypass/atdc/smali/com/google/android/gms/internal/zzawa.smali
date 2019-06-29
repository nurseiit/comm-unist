.class public final Lcom/google/android/gms/internal/zzawa;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzavA:Landroid/widget/SeekBar;

.field private final zzavB:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Landroid/widget/SeekBar;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawa;->zzavB:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setClickable(Z)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsc()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    new-instance p2, Lcom/google/android/gms/internal/zzawb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzawb;-><init>(Lcom/google/android/gms/internal/zzawa;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final zzom()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawa;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawa;->zzavA:Landroid/widget/SeekBar;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawa;->zzavB:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawa;->zzom()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawa;->zzom()V

    return-void
.end method
