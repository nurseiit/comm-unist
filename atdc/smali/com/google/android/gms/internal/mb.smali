.class abstract Lcom/google/android/gms/internal/mb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzbYh:Lcom/google/firebase/crash/FirebaseCrash$zza;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crash/FirebaseCrash$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mb;->zzbYh:Lcom/google/firebase/crash/FirebaseCrash$zza;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mb;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract getErrorMessage()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->zzbYh:Lcom/google/firebase/crash/FirebaseCrash$zza;

    invoke-interface {v0}, Lcom/google/firebase/crash/FirebaseCrash$zza;->zzFg()Lcom/google/android/gms/internal/mj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mj;->zzFf()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mb;->zzd(Lcom/google/android/gms/internal/mj;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "FirebaseCrash"

    const-string v1, "Firebase Crash Reporting not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "FirebaseCrash"

    const-string v1, "Crash api not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mb;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    const-string v1, "FirebaseCrash"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mb;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected abstract zzd(Lcom/google/android/gms/internal/mj;)V
    .param p1    # Lcom/google/android/gms/internal/mj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
