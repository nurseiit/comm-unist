.class final Lcom/google/android/gms/internal/ox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbf:Lcom/google/android/gms/internal/op;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/op;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ox;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ox;->zzcbf:Lcom/google/android/gms/internal/op;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ox;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzp(Lcom/google/android/gms/internal/op;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ox;->zzcbf:Lcom/google/android/gms/internal/op;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/op;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ox;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzn(Lcom/google/android/gms/internal/op;)V

    return-void
.end method
