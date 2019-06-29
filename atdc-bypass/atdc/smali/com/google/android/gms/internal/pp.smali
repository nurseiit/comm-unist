.class final Lcom/google/android/gms/internal/pp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbS:Lcom/google/android/gms/internal/pl;

.field private synthetic zzcbU:Lcom/google/android/gms/internal/yj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pl;Lcom/google/android/gms/internal/yj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pp;->zzcbS:Lcom/google/android/gms/internal/pl;

    iput-object p2, p0, Lcom/google/android/gms/internal/pp;->zzcbU:Lcom/google/android/gms/internal/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/pp;->zzcbU:Lcom/google/android/gms/internal/yj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yj;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pp;->zzcbU:Lcom/google/android/gms/internal/yj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yj;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pp;->zzcbS:Lcom/google/android/gms/internal/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    const-string v2, "WebSocket reached EOF."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pp;->zzcbS:Lcom/google/android/gms/internal/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    const-string v2, "WebSocket error."

    iget-object v3, p0, Lcom/google/android/gms/internal/pp;->zzcbU:Lcom/google/android/gms/internal/yj;

    new-array v1, v1, [Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pp;->zzcbS:Lcom/google/android/gms/internal/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zze(Lcom/google/android/gms/internal/pg;)V

    return-void
.end method
