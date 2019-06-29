.class final Lcom/google/android/gms/internal/od;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pj;


# static fields
.field private static zzcaq:J


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private zzcar:Lcom/google/android/gms/internal/ol;

.field private zzcas:Lcom/google/android/gms/internal/pg;

.field private zzcat:Lcom/google/android/gms/internal/oe;

.field private zzcau:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Ljava/lang/String;Lcom/google/android/gms/internal/oe;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/gms/internal/od;->zzcaq:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    sput-wide v4, Lcom/google/android/gms/internal/od;->zzcaq:J

    iput-object p2, p0, Lcom/google/android/gms/internal/od;->zzcar:Lcom/google/android/gms/internal/ol;

    iput-object p4, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    new-instance p4, Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFT()Lcom/google/android/gms/internal/wm;

    move-result-object v2

    const-string v3, "Connection"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "conn_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v2, v3, v0}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wm;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    sget p4, Lcom/google/android/gms/internal/og;->zzcay:I

    iput p4, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    new-instance p4, Lcom/google/android/gms/internal/pg;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pg;-><init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Ljava/lang/String;Lcom/google/android/gms/internal/pj;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/of;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v1, Lcom/google/android/gms/internal/og;->zzcaA:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "closing realtime connection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    sget v0, Lcom/google/android/gms/internal/og;->zzcaA:I

    iput v0, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pg;->close()V

    iput-object v1, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oe;->zzb(Lcom/google/android/gms/internal/of;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    return-void
.end method

.method public final open()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Opening a connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pg;->open()V

    return-void
.end method

.method public final zza(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "t"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v1, Lcom/google/android/gms/internal/og;->zzcaz:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string p2, "Tried to send on an unconnected connection"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string p2, "Sending data (contents hidden)"

    new-array v1, v3, [Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1, p2, v2, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string p2, "Sending data: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pg;->send(Ljava/util/Map;)V

    return-void
.end method

.method public final zzaA(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v2, Lcom/google/android/gms/internal/og;->zzcay:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Realtime connection failed"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Realtime connection lost"

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    return-void
.end method

.method public final zzz(Ljava/util/Map;)V
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "t"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "received data message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/oe;->zzA(Ljava/util/Map;)V

    return-void

    :cond_2
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Got control message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :try_start_1
    const-string v2, "t"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Connection shutdown command received. Shutting down..."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/oe;->zzgE(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    return-void

    :cond_6
    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    iget-object v3, p0, Lcom/google/android/gms/internal/od;->zzcar:Lcom/google/android/gms/internal/ol;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ol;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Got a reset; killing connection to "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; Updating internalHost to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/oe;->zzgD(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/of;->zzcav:Lcom/google/android/gms/internal/of;

    goto :goto_2

    :cond_8
    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v2, "ts"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "h"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/oe;->zzgD(Ljava/lang/String;)V

    const-string v4, "s"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v5, Lcom/google/android/gms/internal/og;->zzcay:I

    if-ne v4, v5, :cond_1a

    iget-object v4, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v5, "realtime connection established"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v0, v6}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_9
    sget v4, Lcom/google/android/gms/internal/og;->zzcaz:I

    iput v4, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    iget-object v4, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v4, v2, v3, p1}, Lcom/google/android/gms/internal/oe;->zzc(JLjava/lang/String;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Ignoring unknown control message: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Got invalid control message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_e
    sget-object p1, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    return-void

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Failed to parse control message: "

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_10
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    return-void

    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Ignoring unknown server message type: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Failed to parse server message: missing message type:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_16
    sget-object p1, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_17
    return-void

    :catch_1
    move-exception p1

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Failed to parse server message: "

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_18
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    :cond_1a
    return-void
.end method
