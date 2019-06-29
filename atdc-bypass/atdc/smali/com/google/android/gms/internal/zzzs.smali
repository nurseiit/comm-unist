.class final Lcom/google/android/gms/internal/zzzs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzSq:Lcom/google/android/gms/internal/zzzq;

.field private synthetic zzSr:Lcom/google/android/gms/internal/zzajp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzq;Lcom/google/android/gms/internal/zzajp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzs;->zzSr:Lcom/google/android/gms/internal/zzajp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzq;->zza(Lcom/google/android/gms/internal/zzzq;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzzq;->zzb(Lcom/google/android/gms/internal/zzzq;)Lcom/google/android/gms/internal/zzaaf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaaf;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzs;->zzSr:Lcom/google/android/gms/internal/zzajp;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzzq;->zza(Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzajp;)Lcom/google/android/gms/internal/zzahp;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzzq;->zzSp:Lcom/google/android/gms/internal/zzahp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzzq;->zzSp:Lcom/google/android/gms/internal/zzahp;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzzq;->zza(Lcom/google/android/gms/internal/zzzq;ILjava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzs;->zzSq:Lcom/google/android/gms/internal/zzzq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzq;->zzc(Lcom/google/android/gms/internal/zzzq;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
