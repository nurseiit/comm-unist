.class public final Lcom/google/android/gms/ads/internal/zzx;
.super Lcom/google/android/gms/ads/internal/zzi;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private zzsu:Z

.field private zzts:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzts:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z
    .locals 5
    .param p1    # Lcom/google/android/gms/internal/zzaff;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzaff;->zzTo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzar;->zzd(Lcom/google/android/gms/internal/zzaff;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzaka;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzaka;->destroy()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzar;->zze(Lcom/google/android/gms/internal/zzaff;)Z

    move-result p2

    if-nez p2, :cond_5

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzaew;->zzq(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/android/gms/internal/zzge;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-direct {p2, v2, v0}, Lcom/google/android/gms/internal/zzge;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaev;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzvR:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzaev;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzge;->zza(Lcom/google/android/gms/internal/zzgi;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzx;->zzb(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzafk;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_4
    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzXP:Lcom/google/android/gms/internal/zziv;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzaff;->zzXP:Lcom/google/android/gms/internal/zziv;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/internal/zziv;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzaff;->zzXP:Lcom/google/android/gms/internal/zziv;

    iget v2, v2, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzaff;->zzXP:Lcom/google/android/gms/internal/zziv;

    iget v2, v2, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzb(Landroid/view/View;)V

    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_6

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbu;->showNext()V

    :cond_6
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzaka;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/google/android/gms/internal/zzaka;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsK:Lcom/google/android/gms/internal/zznb;

    invoke-interface {p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzaka;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zznb;)V

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->zzcb()V

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/zzks;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziH()Lcom/google/android/gms/internal/zzaks;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzx;->zzc(Lcom/google/android/gms/internal/zzaff;)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzx;->zzc(Lcom/google/android/gms/internal/zzaff;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsu:Z

    return-void
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzaet;)Lcom/google/android/gms/internal/zzaka;
    .locals 5
    .param p2    # Lcom/google/android/gms/ads/internal/zzw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzaet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakm;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zziv;->zzAu:[Lcom/google/android/gms/internal/zziv;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zziv;->zzAw:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaai;->zzAw:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTr:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "[xX]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zziv;->zzdl()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zziv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zziv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzaet;)Lcom/google/android/gms/internal/zzaka;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzaff;Z)V
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/zzaff;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzaff;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzar;->zze(Lcom/google/android/gms/internal/zzaff;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Lcom/google/android/gms/ads/internal/zzab;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzab;-><init>(Lcom/google/android/gms/ads/internal/zzx;)V

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzar;->zze(Lcom/google/android/gms/internal/zzaff;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/internal/zzaff;->zzMG:Lcom/google/android/gms/internal/zzua;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaff;->zzMG:Lcom/google/android/gms/internal/zzua;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzua;->zzLV:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v4, p1, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzut;->zzfq()Lcom/google/android/gms/internal/zzvc;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    iget-object v5, p1, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    if-eqz v5, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzut;->zzfr()Lcom/google/android/gms/internal/zzvf;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v1

    :goto_3
    const-string v5, "2"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/zzvc;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvc;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvc;->recordImpression()V

    :cond_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object p1

    const-string v0, "/nativeExpressViewClicked"

    invoke-static {v4, v1, p2}, Lcom/google/android/gms/ads/internal/zzar;->zza(Lcom/google/android/gms/internal/zzvc;Lcom/google/android/gms/internal/zzvf;Lcom/google/android/gms/ads/internal/zzab;)Lcom/google/android/gms/internal/zzrd;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void

    :cond_7
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p1, :cond_9

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzvf;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvf;->getOverrideImpressionRecording()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvf;->recordImpression()V

    :cond_8
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    const-string v2, "/nativeExpressViewClicked"

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/ads/internal/zzar;->zza(Lcom/google/android/gms/internal/zzvc;Lcom/google/android/gms/internal/zzvf;Lcom/google/android/gms/ads/internal/zzab;)Lcom/google/android/gms/internal/zzrd;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void

    :cond_9
    const-string p1, "No matching template id and mapper"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_4
    const-string p1, "No template ids present in mediation response"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error occurred while recording impression and registering for clicks"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzaff;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzx;->zze(I)V

    return v1

    :cond_1
    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzaff;->zzTG:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzc(Lcom/google/android/gms/internal/zzaff;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzajv;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzajv;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbX()Lcom/google/android/gms/internal/zzajv;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzajv;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzaff;->zzXM:Z

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/android/gms/ads/internal/zzy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/zzy;-><init>(Lcom/google/android/gms/ads/internal/zzx;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    new-instance v1, Lcom/google/android/gms/ads/internal/zzz;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzz;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzaff;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakj;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->zzcd()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzFo:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zzx;->zza(Lcom/google/android/gms/internal/zzaff;Z)V

    :cond_5
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz p1, :cond_7

    iget-object p1, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zziH()Lcom/google/android/gms/internal/zzaks;

    move-result-object p1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakb;->zziV()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwk:Lcom/google/android/gms/internal/zzlx;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwk:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaks;->zzb(Lcom/google/android/gms/internal/zzlx;)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz p1, :cond_c

    iget-object p1, p2, Lcom/google/android/gms/internal/zzaff;->zzXL:Lorg/json/JSONObject;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsR:Lcom/google/android/gms/internal/zzfh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzaff;)V

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/zzge;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzge;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaew;->zzq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/zzaev;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvR:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaev;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzge;->zza(Lcom/google/android/gms/internal/zzgi;)V

    :cond_9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaff;->zzcn()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzge;->zza(Lcom/google/android/gms/internal/zzgi;)V

    goto :goto_2

    :cond_a
    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzaa;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzaa;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/internal/zzaff;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakh;)V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzws:Landroid/view/View;

    if-eqz p1, :cond_c

    iget-object p1, p2, Lcom/google/android/gms/internal/zzaff;->zzXL:Lorg/json/JSONObject;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsR:Lcom/google/android/gms/internal/zzfh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzws:Landroid/view/View;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzaff;Landroid/view/View;)V

    :cond_c
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzir;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzir;->zzzS:Z

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzx;->zzsu:Z

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzir;

    iget v5, v1, Lcom/google/android/gms/internal/zzir;->versionCode:I

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzir;->zzzN:J

    iget-object v8, v1, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    iget v9, v1, Lcom/google/android/gms/internal/zzir;->zzzO:I

    iget-object v10, v1, Lcom/google/android/gms/internal/zzir;->zzzP:Ljava/util/List;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/zzir;->zzzQ:Z

    iget v12, v1, Lcom/google/android/gms/internal/zzir;->zzzR:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzir;->zzzS:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzx;->zzsu:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v1, Lcom/google/android/gms/internal/zzir;->zzzT:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/zzir;->zzzU:Lcom/google/android/gms/internal/zzlt;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzir;->zzzV:Landroid/location/Location;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzir;->zzzW:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/internal/zzir;->zzzX:Landroid/os/Bundle;

    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzir;->zzzY:Landroid/os/Bundle;

    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzir;->zzzZ:Ljava/util/List;

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzir;->zzAa:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzir;->zzAb:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzir;->zzAc:Z

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v21, v27

    move-object/from16 v22, v0

    move/from16 v23, v1

    invoke-direct/range {v4 .. v23}, Lcom/google/android/gms/internal/zzir;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzlt;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    move-object/from16 v0, p0

    :goto_2
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzir;)Z

    move-result v1

    return v1
.end method

.method protected final zzaz()Z
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzagz;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzaiy;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagz;->zzD(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzaiy;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method final zzc(Lcom/google/android/gms/internal/zzaff;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzaff;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzaff;->zzXM:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzbu;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakj;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzx;->zza(Lcom/google/android/gms/internal/zzaff;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzaff;->zzXM:Z

    :cond_4
    return-void
.end method
