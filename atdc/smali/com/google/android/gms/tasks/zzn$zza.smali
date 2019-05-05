.class Lcom/google/android/gms/tasks/zzn$zza;
.super Lcom/google/android/gms/internal/zzbds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/tasks/zzk<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbdt;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbds;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzn$zza;->mListeners:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzn$zza;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    const-string v0, "TaskOnStopCallback"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbds;)V

    return-void
.end method

.method public static zzr(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzn$zza;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tasks/zzn$zza;->zzn(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbdt;

    move-result-object p0

    const-string v0, "TaskOnStopCallback"

    const-class v1, Lcom/google/android/gms/tasks/zzn$zza;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbds;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzn$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tasks/zzn$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zzn$zza;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onStop()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzn$zza;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzn$zza;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/zzk;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/tasks/zzk;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzn$zza;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/tasks/zzk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/zzk<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzn$zza;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzn$zza;->mListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
