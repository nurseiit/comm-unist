.class final Lcom/google/android/gms/internal/zzcug;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbHS:Lcom/google/android/gms/internal/zzcuf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcuf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcug;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcug;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zza(Lcom/google/android/gms/internal/zzcuf;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcug;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zzb(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcvu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcvu;->dispatch()V

    :cond_0
    return-void
.end method
