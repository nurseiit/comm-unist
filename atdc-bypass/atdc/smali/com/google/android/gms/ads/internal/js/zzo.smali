.class final Lcom/google/android/gms/ads/internal/js/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzLk:Lcom/google/android/gms/ads/internal/js/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzo;->zzLk:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->zzLk:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzn;->zzLj:Lcom/google/android/gms/ads/internal/js/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzm;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzl;->zzc(Lcom/google/android/gms/ads/internal/js/zzl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzo;->zzLk:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzn;->zzLj:Lcom/google/android/gms/ads/internal/js/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzm;->zzLg:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/js/zzac;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzo;->zzLk:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzn;->zzLj:Lcom/google/android/gms/ads/internal/js/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzm;->zzLg:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/js/zzac;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzo;->zzLk:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzn;->zzLj:Lcom/google/android/gms/ads/internal/js/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzm;->zzLg:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/js/zzac;->reject()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/js/zzp;-><init>(Lcom/google/android/gms/ads/internal/js/zzo;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagz;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
