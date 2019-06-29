.class final Lcom/google/android/gms/internal/pr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzatg:Ljava/lang/Runnable;

.field private synthetic zzcct:Lcom/google/android/gms/internal/pq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pq;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pr;->zzcct:Lcom/google/android/gms/internal/pq;

    iput-object p2, p0, Lcom/google/android/gms/internal/pr;->zzatg:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pr;->zzcct:Lcom/google/android/gms/internal/pq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pq;->zza(Lcom/google/android/gms/internal/pq;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/pr;->zzatg:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
