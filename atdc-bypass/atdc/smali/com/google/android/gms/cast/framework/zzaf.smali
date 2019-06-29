.class public final Lcom/google/android/gms/cast/framework/zzaf;
.super Lcom/google/android/gms/cast/framework/zzz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/cast/framework/Session;",
        ">",
        "Lcom/google/android/gms/cast/framework/zzz;"
    }
.end annotation


# instance fields
.field private final zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzasy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/cast/framework/SessionManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V

    :cond_0
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V

    :cond_0
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V

    :cond_0
    return-void
.end method

.method public final zznn()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasx:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzaf;->zzasy:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/framework/Session;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManagerListener;->onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V

    :cond_0
    return-void
.end method
