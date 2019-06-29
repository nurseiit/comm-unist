.class public final Lcom/google/android/gms/internal/zzdq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzpJ:Lcom/google/android/gms/internal/zzdb;

.field private final zzro:Lcom/google/android/gms/internal/zzax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdq;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdq;->zzro:Lcom/google/android/gms/internal/zzax;

    return-void
.end method

.method private final zzV()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdb;->zzL()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdb;->zzL()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdb;->zzK()Lcom/google/android/gms/internal/zzax;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzro:Lcom/google/android/gms/internal/zzax;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ado; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdq;->zzro:Lcom/google/android/gms/internal/zzax;

    invoke-static {v0}, Lcom/google/android/gms/internal/adp;->zzc(Lcom/google/android/gms/internal/adp;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adp;->zza(Lcom/google/android/gms/internal/adp;[B)Lcom/google/android/gms/internal/adp;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ado; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdq;->zzV()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
