.class final Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzbQk:Lcom/google/android/gms/internal/ga;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/wallet/fragment/zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;-><init>(Lcom/google/android/gms/internal/ga;)V

    return-void
.end method

.method private final getState()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ga;->getState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ga;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final setEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ga;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ga;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ga;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;Lcom/google/android/gms/wallet/MaskedWallet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ga;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->onCreateView(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    return-void
.end method

.method public final onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "extraWalletFragmentOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ga;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ga;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ga;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onStart()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ga;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$zzb;->zzbQk:Lcom/google/android/gms/internal/ga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ga;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
