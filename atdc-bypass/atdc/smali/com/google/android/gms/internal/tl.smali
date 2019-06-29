.class final Lcom/google/android/gms/internal/tl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private synthetic zzcfj:Ljava/util/concurrent/ThreadFactory;

.field private synthetic zzcfk:Lcom/google/android/gms/internal/ti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/tk;Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/ti;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/tl;->zzcfj:Ljava/util/concurrent/ThreadFactory;

    iput-object p3, p0, Lcom/google/android/gms/internal/tl;->zzcfk:Lcom/google/android/gms/internal/ti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzcfj:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzcfk:Lcom/google/android/gms/internal/ti;

    const-string v1, "FirebaseDatabaseEventTarget"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ti;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzcfk:Lcom/google/android/gms/internal/ti;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ti;->zza(Ljava/lang/Thread;Z)V

    return-object p1
.end method
