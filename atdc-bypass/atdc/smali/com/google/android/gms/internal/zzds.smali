.class public final Lcom/google/android/gms/internal/zzds;
.super Lcom/google/android/gms/internal/zzec;


# instance fields
.field private zzrq:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzax;II)V
    .locals 7

    const/16 v6, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzec;-><init>(Lcom/google/android/gms/internal/zzdb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzax;II)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzds;->zzrq:J

    return-void
.end method


# virtual methods
.method protected final zzT()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzER:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzds;->zzro:Lcom/google/android/gms/internal/zzax;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/zzax;->zzbi:Ljava/lang/Long;

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzds;->zzrq:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzds;->zzrx:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzds;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdb;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzds;->zzrq:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzds;->zzro:Lcom/google/android/gms/internal/zzax;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzds;->zzro:Lcom/google/android/gms/internal/zzax;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzds;->zzrq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzax;->zzbi:Ljava/lang/Long;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzds;->zzro:Lcom/google/android/gms/internal/zzax;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/zzax;->zzbi:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzds;->zzro:Lcom/google/android/gms/internal/zzax;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzds;->zzrx:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzds;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzdb;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzax;->zzbi:Ljava/lang/Long;

    return-void
.end method
