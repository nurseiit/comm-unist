.class final Lcom/google/android/gms/internal/my;
.super Lcom/google/android/gms/internal/yu;


# instance fields
.field private synthetic zzbZA:Lcom/google/android/gms/internal/mx;

.field private synthetic zzbZz:Lcom/google/android/gms/internal/wl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/wl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/my;->zzbZA:Lcom/google/android/gms/internal/mx;

    iput-object p2, p0, Lcom/google/android/gms/internal/my;->zzbZz:Lcom/google/android/gms/internal/wl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/yu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/yu;->zzh(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/my;->zzbZz:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/my;->zzbZA:Lcom/google/android/gms/internal/mx;

    invoke-static {v2}, Lcom/google/android/gms/internal/mx;->zza(Lcom/google/android/gms/internal/mx;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/mz;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/mz;-><init>(Lcom/google/android/gms/internal/my;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/my;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
