.class final Lcom/google/android/gms/internal/pl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pk;
.implements Lcom/google/android/gms/internal/yi;


# instance fields
.field final synthetic zzcbQ:Lcom/google/android/gms/internal/pg;

.field private zzcbR:Lcom/google/android/gms/internal/yd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/pg;Lcom/google/android/gms/internal/yd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/pl;->zzcbR:Lcom/google/android/gms/internal/yd;

    iget-object p1, p0, Lcom/google/android/gms/internal/pl;->zzcbR:Lcom/google/android/gms/internal/yd;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/yd;->zza(Lcom/google/android/gms/internal/yi;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/pg;Lcom/google/android/gms/internal/yd;Lcom/google/android/gms/internal/ph;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/internal/pg;Lcom/google/android/gms/internal/yd;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbR:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yd;->close()V

    return-void
.end method

.method public final connect()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbR:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yd;->connect()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/yj; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v1}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v1}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v1

    const-string v2, "Error connecting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbR:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yd;->close()V

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbR:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yd;->zzJs()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v1}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClose()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzd(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/po;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/po;-><init>(Lcom/google/android/gms/internal/pl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzGy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzd(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/pm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/pm;-><init>(Lcom/google/android/gms/internal/pl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/yj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzd(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/pp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/pp;-><init>(Lcom/google/android/gms/internal/pl;Lcom/google/android/gms/internal/yj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/yl;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yl;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    const-string v1, "ws message: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzd(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/pn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/pn;-><init>(Lcom/google/android/gms/internal/pl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzgM(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbR:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/yd;->zzgM(Ljava/lang/String;)V

    return-void
.end method
