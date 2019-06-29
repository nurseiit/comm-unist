.class public final Lcom/google/android/gms/internal/mf;
.super Lcom/google/android/gms/internal/mb;


# instance fields
.field private final zzaaS:Ljava/lang/Throwable;

.field private final zzbXW:Lcom/google/android/gms/internal/mp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/Throwable;Lcom/google/android/gms/internal/mp;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crash/FirebaseCrash$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/mp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mb;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/mf;->zzaaS:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/android/gms/internal/mf;->zzbXW:Lcom/google/android/gms/internal/mp;

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "Failed to report uncaught exception"

    return-object v0
.end method

.method public final bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->run()V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/mj;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/mj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->zzbXW:Lcom/google/android/gms/internal/mp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->zzbXW:Lcom/google/android/gms/internal/mp;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mp;->zza(ZJ)V

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FirebaseCrash"

    const-string v0, "Failed to wait for analytics event to be logged"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->zzaaS:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mj;->zzM(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
