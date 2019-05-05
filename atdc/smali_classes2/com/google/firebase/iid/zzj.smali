.class public final Lcom/google/firebase/iid/zzj;
.super Ljava/lang/Object;


# static fields
.field private static zzbgQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/zzj;",
            ">;"
        }
    .end annotation
.end field

.field static zzbgW:Ljava/lang/String;

.field private static zzckF:Lcom/google/firebase/iid/zzr;

.field private static zzckG:Lcom/google/firebase/iid/zzl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzbgT:Ljava/security/KeyPair;

.field private zzbgU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzj;->zzbgQ:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, ""

    iput-object p3, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    return-void
.end method

.method public static zzJT()Lcom/google/firebase/iid/zzr;
    .locals 1

    sget-object v0, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    return-object v0
.end method

.method public static zzJU()Lcom/google/firebase/iid/zzl;
    .locals 1

    sget-object v0, Lcom/google/firebase/iid/zzj;->zzckG:Lcom/google/firebase/iid/zzl;

    return-object v0
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzj;
    .locals 3

    const-class v0, Lcom/google/firebase/iid/zzj;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, ""

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "subtype"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/firebase/iid/zzr;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/zzr;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    new-instance v2, Lcom/google/firebase/iid/zzl;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/zzl;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/firebase/iid/zzj;->zzckG:Lcom/google/firebase/iid/zzl;

    :cond_2
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzbF(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/firebase/iid/zzj;->zzbgW:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/iid/zzj;->zzbgQ:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/iid/zzj;

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/firebase/iid/zzj;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/firebase/iid/zzj;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Lcom/google/firebase/iid/zzj;->zzbgQ:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getCreationTime()J
    .locals 2

    sget-object v0, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    iget-object v1, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->zzhk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "ttl"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "jwt"

    const-string v2, "type"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    iget-object v2, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/firebase/iid/zzr;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/google/firebase/iid/zzj;->zzbgW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzs;->zzhp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, v1, Lcom/google/firebase/iid/zzs;->zzbPJ:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzj;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    sget-object v1, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    iget-object v2, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    sget-object v6, Lcom/google/firebase/iid/zzj;->zzbgW:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/iid/zzr;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p3
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    sget-object v0, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    iget-object v1, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v0, "delete"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzj;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    iget-object v0, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    :goto_0
    const-string p2, "subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/firebase/iid/zzj;->zzckG:Lcom/google/firebase/iid/zzl;

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzj;->zzvK()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/iid/zzl;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p2, "registration_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "unregistered"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-nez p2, :cond_5

    const-string p2, "error"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p2, "InstanceID/Rpc"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unexpected response from GCM "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2, p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object p2
.end method

.method final zzvK()Ljava/security/KeyPair;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzj;->zzbgT:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    iget-object v1, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->zzhn(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzj;->zzbgT:Ljava/security/KeyPair;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzj;->zzbgT:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    iget-object v1, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->zzhl(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzj;->zzbgT:Ljava/security/KeyPair;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzj;->zzbgT:Ljava/security/KeyPair;

    return-object v0
.end method

.method public final zzvL()V
    .locals 2

    sget-object v0, Lcom/google/firebase/iid/zzj;->zzckF:Lcom/google/firebase/iid/zzr;

    iget-object v1, p0, Lcom/google/firebase/iid/zzj;->zzbgU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->zzhm(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/zzj;->zzbgT:Ljava/security/KeyPair;

    return-void
.end method
