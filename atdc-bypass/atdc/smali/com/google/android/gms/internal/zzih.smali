.class final Lcom/google/android/gms/internal/zzih;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzzI:I

.field private synthetic zzzJ:Lcom/google/android/gms/internal/zzig;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzig;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih;->zzzJ:Lcom/google/android/gms/internal/zzig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/zzih;->zzzI:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzzJ:Lcom/google/android/gms/internal/zzig;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzzJ:Lcom/google/android/gms/internal/zzig;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzig;->zza(Lcom/google/android/gms/internal/zzig;)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/zzih;->zzzI:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzzJ:Lcom/google/android/gms/internal/zzig;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzig;->zzb(Lcom/google/android/gms/internal/zzig;)V

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
