.class final Lcom/google/android/gms/internal/zzsy;
.super Lcom/google/android/gms/internal/zzade;


# instance fields
.field private synthetic zzKb:Lcom/google/android/gms/internal/zzsj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzade;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedVideoAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zztc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zztc;-><init>(Lcom/google/android/gms/internal/zzsy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdFailedToLoad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zztf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zztf;-><init>(Lcom/google/android/gms/internal/zzsy;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzte;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzte;-><init>(Lcom/google/android/gms/internal/zzsy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsz;-><init>(Lcom/google/android/gms/internal/zzsy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzta;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzta;-><init>(Lcom/google/android/gms/internal/zzsy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zztb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zztb;-><init>(Lcom/google/android/gms/internal/zzsy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzacv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zztd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zztd;-><init>(Lcom/google/android/gms/internal/zzsy;Lcom/google/android/gms/internal/zzacv;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
