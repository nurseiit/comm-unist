.class final Lcom/google/android/gms/internal/zzxv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzQW:Lcom/google/android/gms/internal/zzxt;

.field private synthetic zztx:Lcom/google/android/gms/internal/zzaff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxt;Lcom/google/android/gms/internal/zzaff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxv;->zzQW:Lcom/google/android/gms/internal/zzxt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxv;->zztx:Lcom/google/android/gms/internal/zzaff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxv;->zzQW:Lcom/google/android/gms/internal/zzxt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxv;->zzQW:Lcom/google/android/gms/internal/zzxt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxv;->zztx:Lcom/google/android/gms/internal/zzaff;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzxt;->zzQP:Lcom/google/android/gms/internal/zzxy;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzxy;->zzb(Lcom/google/android/gms/internal/zzaff;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
