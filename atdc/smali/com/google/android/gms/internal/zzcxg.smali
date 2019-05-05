.class final Lcom/google/android/gms/internal/zzcxg;
.super Ljava/lang/Object;


# static fields
.field private static final zzbJK:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcxh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcxh;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcxg;->zzbJK:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic zzCD()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcxg;->zzbJK:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
