.class public final Lcom/google/android/gms/internal/ry;
.super Ljava/lang/Object;


# static fields
.field private static final zzcer:Lcom/google/android/gms/internal/ry;


# instance fields
.field private final zzces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/qd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/qu;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ry;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ry;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ry;->zzcer:Lcom/google/android/gms/internal/ry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ry;->zzces:Ljava/util/Map;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/rx;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/qu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ry;->zzcer:Lcom/google/android/gms/internal/ry;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ry;->zzb(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/rx;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/qu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ry;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ry;->zzces:Ljava/util/Map;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/rx;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/qu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGD()V

    iget-object v0, p2, Lcom/google/android/gms/internal/rx;->host:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/rx;->zzbxU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "https://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ry;->zzces:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ry;->zzces:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ry;->zzces:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ry;->zzces:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/qu;

    invoke-direct {v3, p2, p1, p3}, Lcom/google/android/gms/internal/qu;-><init>(Lcom/google/android/gms/internal/rx;Lcom/google/android/gms/internal/qd;Lcom/google/firebase/database/FirebaseDatabase;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "createLocalRepo() called for existing repo."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/qd;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ry;->zzcer:Lcom/google/android/gms/internal/ry;

    iget-object v1, p0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/sb;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/sb;-><init>(Lcom/google/android/gms/internal/ry;Lcom/google/android/gms/internal/qd;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/sd;->zzq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/qd;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ry;->zzcer:Lcom/google/android/gms/internal/ry;

    iget-object v1, p0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/sc;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/sc;-><init>(Lcom/google/android/gms/internal/ry;Lcom/google/android/gms/internal/qd;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/sd;->zzq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static zzk(Lcom/google/android/gms/internal/qu;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/rz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/rz;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/qu;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/internal/qu;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/sa;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/qu;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method
