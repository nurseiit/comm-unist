.class final Lcom/google/android/gms/internal/kl;
.super Lcom/google/android/gms/internal/kb;


# instance fields
.field final synthetic zzbXd:Lcom/google/android/gms/internal/kj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/kj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/kj;Lcom/google/android/gms/internal/kk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kl;-><init>(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/kr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget-object v0, v0, Lcom/google/android/gms/internal/kj;->zzbWS:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/kq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kq;-><init>(Lcom/google/android/gms/internal/kl;Lcom/google/android/gms/internal/kr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/kj;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/kj;->zzbWZ:Z

    new-instance v0, Lcom/google/android/gms/internal/kp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/kp;-><init>(Lcom/google/android/gms/internal/kl;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kl;->zza(Lcom/google/android/gms/internal/kr;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/kj;Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/kj;->zzL(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 5
    .param p1    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v2, v2, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWY:Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/kj;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/kj;->zzbWZ:Z

    new-instance v0, Lcom/google/android/gms/internal/kn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/kn;-><init>(Lcom/google/android/gms/internal/kl;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kl;->zza(Lcom/google/android/gms/internal/kr;)V

    return-void
.end method

.method public final zzEN()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v1, v1, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->zzb(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method public final zzEO()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v1, v1, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->zzb(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/kt;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/kt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v1, v1, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWV:Lcom/google/android/gms/internal/kt;

    iget-object p1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->zzb(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/kx;Lcom/google/android/gms/internal/kv;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/kx;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/kv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v1, v1, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWT:Lcom/google/android/gms/internal/kx;

    iget-object p1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p2, p1, Lcom/google/android/gms/internal/kj;->zzbWU:Lcom/google/android/gms/internal/kv;

    iget-object p1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->zzb(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ld;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ld;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v1, v1, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWW:Lcom/google/android/gms/internal/ld;

    iget-object p1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->zzb(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/kx;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/kx;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWT:Lcom/google/android/gms/internal/kx;

    iget-object p1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->zzb(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method public final zzgq(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v1, v1, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWX:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->zzb(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method public final zzgr(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v1, v1, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWn:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/km;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/km;-><init>(Lcom/google/android/gms/internal/kl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kl;->zza(Lcom/google/android/gms/internal/kr;)V

    return-void
.end method

.method public final zzgs(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v0, v0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget v2, v2, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-object p1, v0, Lcom/google/android/gms/internal/kj;->zzbWn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/kj;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/kj;->zzbWZ:Z

    new-instance v0, Lcom/google/android/gms/internal/ko;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ko;-><init>(Lcom/google/android/gms/internal/kl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kl;->zza(Lcom/google/android/gms/internal/kr;)V

    return-void
.end method
