.class public final Lcom/google/android/gms/internal/zztq;
.super Lcom/google/android/gms/internal/zzka;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzKI:Lcom/google/android/gms/internal/zzti;

.field private final zzKq:Lcom/google/android/gms/internal/zzsi;

.field private zzKv:Lcom/google/android/gms/ads/internal/zzal;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zztV:Ljava/lang/String;

.field private zzuj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsi;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/zzsi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zztq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsi;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzka;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztq;->zztV:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zztq;->zzKq:Lcom/google/android/gms/internal/zzsi;

    new-instance p1, Lcom/google/android/gms/internal/zzti;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzti;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbN()Lcom/google/android/gms/internal/zztl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zztl;->zza(Lcom/google/android/gms/internal/zzsi;)V

    return-void
.end method

.method private final abort()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKq:Lcom/google/android/gms/internal/zzsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztq;->zztV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zzW(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzal;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzti;->zzd(Lcom/google/android/gms/ads/internal/zzal;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->destroy()V

    :cond_0
    return-void
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAdUnitId not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzks;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->pause()V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->resume()V

    :cond_0
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zztq;->zzuj:Z

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztq;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzal;->setManualImpressionsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zztq;->zzuj:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzal;->setImmersiveMode(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->showInterstitial()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final stopLoading()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->stopLoading()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzti;->zzKl:Lcom/google/android/gms/internal/zzadd;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzti;->zzd(Lcom/google/android/gms/ads/internal/zzal;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zziv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zziv;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzti;->zzKk:Lcom/google/android/gms/internal/zzjl;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzti;->zzd(Lcom/google/android/gms/ads/internal/zzal;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzti;->zztK:Lcom/google/android/gms/internal/zzjo;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzti;->zzd(Lcom/google/android/gms/ads/internal/zzal;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzke;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzti;->zzKi:Lcom/google/android/gms/internal/zzke;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzti;->zzd(Lcom/google/android/gms/ads/internal/zzal;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztq;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzkk;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzky;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlx;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getVideoController not implemented for interstitials"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zznh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzti;->zzKj:Lcom/google/android/gms/internal/zznh;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzti;->zzd(Lcom/google/android/gms/ads/internal/zzal;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzir;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zztl;->zzi(Lcom/google/android/gms/internal/zzir;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "gw"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztq;->abort()V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zztl;->zzi(Lcom/google/android/gms/internal/zzir;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "_skipMediation"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztq;->abort()V

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzU:Lcom/google/android/gms/internal/zzlt;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztq;->abort()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzir;)Z

    move-result p1

    return p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbN()Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zztl;->zzi(Lcom/google/android/gms/internal/zzir;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "_ad"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zztq;->zztV:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztl;->zzb(Lcom/google/android/gms/internal/zzir;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zztq;->zztV:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztl;->zza(Lcom/google/android/gms/internal/zzir;Ljava/lang/String;)Lcom/google/android/gms/internal/zzto;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean p1, v0, Lcom/google/android/gms/internal/zzto;->zzKz:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzto;->load()Z

    invoke-static {}, Lcom/google/android/gms/internal/zztp;->zzeN()Lcom/google/android/gms/internal/zztp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztp;->zzeR()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/zztp;->zzeN()Lcom/google/android/gms/internal/zztp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztp;->zzeQ()V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/zzto;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    iput-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    iget-object p1, v0, Lcom/google/android/gms/internal/zzto;->zzKx:Lcom/google/android/gms/internal/zzsj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzti;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->zzKI:Lcom/google/android/gms/internal/zzti;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzti;->zzd(Lcom/google/android/gms/ads/internal/zzal;)V

    iget-boolean p1, v0, Lcom/google/android/gms/internal/zzto;->zzKA:Z

    return p1

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/zztq;->abort()V

    invoke-static {}, Lcom/google/android/gms/internal/zztp;->zzeN()Lcom/google/android/gms/internal/zztp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztp;->zzeR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzir;)Z

    move-result p1

    return p1
.end method

.method public final zzaI()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->zzaI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzal()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->zzal()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzam()Lcom/google/android/gms/internal/zziv;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzao()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->zzao()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zzax()Lcom/google/android/gms/internal/zzke;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAppEventListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzay()Lcom/google/android/gms/internal/zzjo;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAdListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
