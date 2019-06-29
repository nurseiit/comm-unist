.class final Lcom/google/android/gms/internal/pg;
.super Ljava/lang/Object;


# static fields
.field private static zzcbG:J


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private final zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzcbH:Lcom/google/android/gms/internal/pk;

.field private zzcbI:Z

.field private zzcbJ:Z

.field private zzcbK:J

.field private zzcbL:Lcom/google/android/gms/internal/pt;

.field private zzcbM:Lcom/google/android/gms/internal/pj;

.field private zzcbN:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzcbO:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzcbP:Lcom/google/android/gms/internal/oj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Ljava/lang/String;Lcom/google/android/gms/internal/pj;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    iput-object p1, p0, Lcom/google/android/gms/internal/pg;->zzcbP:Lcom/google/android/gms/internal/oj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/pg;->zzcbM:Lcom/google/android/gms/internal/pj;

    sget-wide v0, Lcom/google/android/gms/internal/pg;->zzcbG:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    sput-wide v4, Lcom/google/android/gms/internal/pg;->zzcbG:J

    new-instance p4, Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFT()Lcom/google/android/gms/internal/wm;

    move-result-object p1

    const-string v2, "WebSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ws_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p1, v2, v0}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wm;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ol;->getHost()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ol;->isSecure()Z

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ol;->getNamespace()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    const-string p1, "wss"

    goto :goto_1

    :cond_1
    const-string p1, "ws"

    :goto_1
    const-string p4, "v"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "5"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/.ws?ns="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&ls="

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "User-Agent"

    iget-object p4, p0, Lcom/google/android/gms/internal/pg;->zzcbP:Lcom/google/android/gms/internal/oj;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/oj;->zzht()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/google/android/gms/internal/yd;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4, p2}, Lcom/google/android/gms/internal/yd;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Lcom/google/android/gms/internal/pl;

    invoke-direct {p1, p0, p3, p4}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/internal/pg;Lcom/google/android/gms/internal/yd;Lcom/google/android/gms/internal/ph;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    return-void
.end method

.method private final shutdown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbM:Lcom/google/android/gms/internal/pj;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pj;->zzaA(Z)V

    return-void
.end method

.method private final zzGv()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    iget-object v3, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const/16 v5, 0x30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Reset keepAlive. Remaining: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Reset keepAlive"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/pi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/pi;-><init>(Lcom/google/android/gms/internal/pg;)V

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private final zzGw()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "closing itself"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private final zzGx()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "timed out on connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pk;->close()V

    :cond_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pg;->zzgL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pg;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    return-object p0
.end method

.method private final zzbV(I)V
    .locals 4

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    new-instance p1, Lcom/google/android/gms/internal/pt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/pt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    iget-object p1, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    iget-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "HandleNewFrameCount: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGv()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGw()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGx()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/pk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    return-object p0
.end method

.method private final zzgJ(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pt;->zzgN(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pt;->zzGD()V

    iget-object p1, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pt;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/yr;->zzgV(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "handleIncomingFrame complete frame: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbM:Lcom/google/android/gms/internal/pj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/pj;->zzz(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Error parsing frame (cast error): "

    iget-object v2, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pg;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    return-void

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Error parsing frame: "

    iget-object v2, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pg;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    :cond_3
    return-void
.end method

.method private final zzgK(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pg;->zzbV(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pg;->zzbV(I)V

    return-object p1
.end method

.method private final zzgL(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pg;->zzgJ(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pg;->zzgK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pg;->zzgJ(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "websocket is being closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/pk;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public final open()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pk;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ph;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ph;-><init>(Lcom/google/android/gms/internal/pg;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final send(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGv()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/yr;->zzak(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    add-int/lit16 v5, v2, 0x4000

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :goto_1
    array-length v0, v1

    if-le v0, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    array-length v2, v1

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/pk;->zzgM(Ljava/lang/String;)V

    :cond_2
    :goto_2
    array-length v0, v1

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/pk;->zzgM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Failed to serialize message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    return-void
.end method
