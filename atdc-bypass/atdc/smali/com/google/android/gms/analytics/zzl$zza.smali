.class final Lcom/google/android/gms/analytics/zzl$zza;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaek:Lcom/google/android/gms/analytics/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/zzl;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzl$zza;->zzaek:Lcom/google/android/gms/analytics/zzl;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance p1, Lcom/google/android/gms/analytics/zzl$zzb;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/analytics/zzl$zzb;-><init>(Lcom/google/android/gms/analytics/zzm;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/zzl$zza;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/zzl$zza;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/analytics/zzn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/analytics/zzn;-><init>(Lcom/google/android/gms/analytics/zzl$zza;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method
