.class final Lcom/google/android/gms/internal/zzann;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaha:Lcom/google/android/gms/internal/zzanm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzann;->zzaha:Lcom/google/android/gms/internal/zzanm;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzann;->zzaha:Lcom/google/android/gms/internal/zzanm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzanm;->zza(Lcom/google/android/gms/internal/zzanm;)Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzann;->zzaha:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanm;->zzbo()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzann;->zzaha:Lcom/google/android/gms/internal/zzanm;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzanm;->zza(Lcom/google/android/gms/internal/zzanm;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzann;->zzaha:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanm;->run()V

    :cond_1
    return-void
.end method
