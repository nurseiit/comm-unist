.class final Lcom/google/android/gms/internal/zzsk;
.super Lcom/google/android/gms/internal/zzjp;


# instance fields
.field private synthetic zzKb:Lcom/google/android/gms/internal/zzsj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjp;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsr;-><init>(Lcom/google/android/gms/internal/zzsk;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsl;-><init>(Lcom/google/android/gms/internal/zzsk;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzsm;-><init>(Lcom/google/android/gms/internal/zzsk;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Pooled interstitial failed to load."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsq;-><init>(Lcom/google/android/gms/internal/zzsk;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsn;-><init>(Lcom/google/android/gms/internal/zzsk;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzso;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzso;-><init>(Lcom/google/android/gms/internal/zzsk;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsp;-><init>(Lcom/google/android/gms/internal/zzsk;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
