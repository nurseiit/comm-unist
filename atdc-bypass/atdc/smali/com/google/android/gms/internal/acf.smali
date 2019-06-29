.class public final Lcom/google/android/gms/internal/acf;
.super Ljava/lang/Object;


# instance fields
.field private zzbMj:Ljava/lang/Exception;

.field private zzcqk:Lcom/google/android/gms/internal/aca;

.field private zzcql:I

.field private zzcqm:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aca;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/aca;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Exception;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqm:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqm:Ljava/lang/Exception;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->zzLj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getException failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResultCode()I
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/acf;->zzcql:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/acf;->zzcql:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->getResultCode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getResultCode failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public final getStream()Ljava/io/InputStream;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->zzLg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getStream failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/acf;->zzcql:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqm:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "reset failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzLf()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->zzLf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "performRequestEnd failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzLi()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->zzLi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getRawResult failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzLk()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/acf;->zzcql:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/acf;->zzcqm:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aca;->zzLk()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v2, "NetworkRequestProxy"

    const-string v3, "isResultSuccess failed with a RemoteException:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final zzLl()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->zzLl()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getResultingContentLength failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public final zzLn()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aca;->zzLh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TTResult;>;TTResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/acf;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/acf;->zzLk()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/acf;->getResultCode()I

    move-result p2

    invoke-static {v0, p2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/aca;->zzam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string v0, "NetworkRequestProxy"

    const-string v1, "Caught remote exception setting custom header:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zze(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x2

    iput p2, p0, Lcom/google/android/gms/internal/acf;->zzcql:I

    new-instance p2, Ljava/net/SocketException;

    const-string v0, "Network subsystem is unavailable"

    invoke-direct {p2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/acf;->zzcqm:Ljava/lang/Exception;

    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/aca;->zzhM(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string p2, "NetworkRequestProxy"

    const-string v0, "performRequest failed with a RemoteException:"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzhN(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/aca;->zzhN(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/google/android/gms/internal/acf;->zzbMj:Ljava/lang/Exception;

    const-string v0, "NetworkRequestProxy"

    const-string v1, "performRequestStart failed with a RemoteException:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzhO(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acf;->zzcqk:Lcom/google/android/gms/internal/aca;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/aca;->zzhO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getResultString failed with a RemoteException:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
