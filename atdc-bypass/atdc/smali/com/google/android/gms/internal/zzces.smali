.class final Lcom/google/android/gms/internal/zzces;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbpB:Lcom/google/android/gms/internal/zzcer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzces;->zzbpB:Lcom/google/android/gms/internal/zzcer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzbpB:Lcom/google/android/gms/internal/zzcer;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcer;->zza(Lcom/google/android/gms/internal/zzcer;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzbpB:Lcom/google/android/gms/internal/zzcer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcer;->zzbo()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzces;->zzbpB:Lcom/google/android/gms/internal/zzcer;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzcer;->zza(Lcom/google/android/gms/internal/zzcer;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzbpB:Lcom/google/android/gms/internal/zzcer;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcer;->zzb(Lcom/google/android/gms/internal/zzcer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzbpB:Lcom/google/android/gms/internal/zzcer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcer;->run()V

    :cond_1
    return-void
.end method
