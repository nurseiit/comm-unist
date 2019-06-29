.class public abstract Lcom/google/android/gms/internal/zzcaj;
.super Ljava/lang/Object;


# instance fields
.field private zzbbF:Ljava/lang/Object;

.field private zzbbG:Landroid/os/Handler;

.field private zzbbH:Z

.field private zzbbI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private zzbbJ:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbF:Ljava/lang/Object;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbG:Landroid/os/Handler;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbI:Ljava/util/HashMap;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbJ:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcaj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcaj;->zzuX()V

    return-void
.end method

.method private final zzuX()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbF:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbH:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcaj;->flush()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final flush()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbF:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbI:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/zzcaj;->zzq(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbI:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract zzq(Ljava/lang/String;I)V
.end method

.method public final zzr(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbF:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbH:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbH:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbG:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzcak;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcak;-><init>(Lcom/google/android/gms/internal/zzcaj;)V

    iget v3, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbJ:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbI:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcaj;->zzbbI:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
