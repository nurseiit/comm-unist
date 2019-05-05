.class final Lcom/google/android/gms/internal/yw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic zzcjv:Lcom/google/android/gms/internal/yu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/yu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yw;->zzcjv:Lcom/google/android/gms/internal/yu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/yu;Lcom/google/android/gms/internal/yv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/yw;-><init>(Lcom/google/android/gms/internal/yu;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/yw;->zzcjv:Lcom/google/android/gms/internal/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yu;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/yw;->zzcjv:Lcom/google/android/gms/internal/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yu;->zzGY()Lcom/google/android/gms/internal/ti;

    move-result-object v0

    const-string v1, "FirebaseDatabaseWorker"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ti;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ti;->zza(Ljava/lang/Thread;Z)V

    new-instance v1, Lcom/google/android/gms/internal/yx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/yx;-><init>(Lcom/google/android/gms/internal/yw;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ti;->zza(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method
