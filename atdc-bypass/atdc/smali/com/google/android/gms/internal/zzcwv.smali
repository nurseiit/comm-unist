.class final Lcom/google/android/gms/internal/zzcwv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJz:Lcom/google/android/gms/internal/zzcwu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJz:Lcom/google/android/gms/internal/zzcwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJz:Lcom/google/android/gms/internal/zzcwu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zza(Lcom/google/android/gms/internal/zzcwn;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJz:Lcom/google/android/gms/internal/zzcwu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zza(Lcom/google/android/gms/internal/zzcwn;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJz:Lcom/google/android/gms/internal/zzcwu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcwn;->zza(Lcom/google/android/gms/internal/zzcwn;I)I

    const-string v0, "Container load timed out after 5000ms."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJz:Lcom/google/android/gms/internal/zzcwu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zze(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJz:Lcom/google/android/gms/internal/zzcwu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zzf(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJz:Lcom/google/android/gms/internal/zzcwu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcwn;->zze(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
