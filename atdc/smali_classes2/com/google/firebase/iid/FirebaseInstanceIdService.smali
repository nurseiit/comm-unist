.class public Lcom/google/firebase/iid/FirebaseInstanceIdService;
.super Lcom/google/firebase/iid/zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceIdService$zza;
    }
.end annotation


# static fields
.field private static zzckB:Ljava/lang/Object; = null
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static zzckC:Z = false
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zzckD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckB:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/iid/zzb;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckC:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzJQ()Lcom/google/firebase/iid/zzs;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/firebase/iid/zzj;->zzbgW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/zzs;->zzhp(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzJS()Lcom/google/firebase/iid/zzk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzk;->zzJV()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzbI(Landroid/content/Context;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final zza(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzbJ(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-nez p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const-string v3, "next_retry_delay_in_seconds"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    const/16 v3, 0x7080

    if-ge p1, v2, :cond_1

    if-nez v0, :cond_1

    const/16 v2, 0x1e

    goto :goto_1

    :cond_1
    if-ge p1, v2, :cond_2

    goto :goto_1

    :cond_2
    if-le p1, v3, :cond_3

    const/16 v2, 0x7080

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    const-string p1, "FirebaseInstanceId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "background sync failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", retry in "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "s"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckB:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p2, "alarm"

    invoke-virtual {p0, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    shl-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzbZ(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {p0, v1, v3, v4}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v6, v2, 0x3e8

    int-to-long v6, v6

    add-long v8, v4, v6

    invoke-virtual {p2, v3, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 p2, 0x1

    sput-boolean p2, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckC:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    iget-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    if-eqz p1, :cond_4

    const-string p1, "FirebaseInstanceId"

    const-string p2, "device not connected. Connectivity change received registered"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p0, v2}, Lcom/google/firebase/iid/FirebaseInstanceIdService$zza;->zzl(Landroid/content/Context;I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private final zza(Landroid/content/Intent;ZZ)V
    .locals 7

    sget-object p2, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckB:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckC:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/google/firebase/iid/zzl;->zzbd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzJQ()Lcom/google/firebase/iid/zzs;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v2, Lcom/google/firebase/iid/zzj;->zzbgW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzs;->zzhp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzJS()Lcom/google/firebase/iid/zzk;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lcom/google/firebase/iid/zzk;->zzJV()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    const-string v1, "!"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    aget-object v2, v1, v0

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x53

    if-eq v5, v6, :cond_3

    const/16 v6, 0x55

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "U"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_3
    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzhh(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    if-eqz v1, :cond_5

    const-string v1, "FirebaseInstanceId"

    const-string v2, "unsubscribe operation succeeded"

    :goto_3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzhg(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    if-eqz v1, :cond_5

    const-string v1, "FirebaseInstanceId"

    const-string v2, "subscribe operation succeeded"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_4
    invoke-virtual {p2, p3}, Lcom/google/firebase/iid/zzk;->zzhj(Ljava/lang/String;)Z

    goto :goto_0

    :cond_6
    const-string p1, "FirebaseInstanceId"

    const-string p2, "topic sync succeeded"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_5
    :try_start_2
    invoke-virtual {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzJR()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    if-eqz v2, :cond_8

    const-string v2, "FirebaseInstanceId"

    const-string v3, "get master token succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {p0, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V

    if-nez p3, :cond_9

    if-eqz v1, :cond_9

    if-eqz v1, :cond_a

    iget-object p2, v1, Lcom/google/firebase/iid/zzs;->zzbPJ:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onTokenRefresh()V

    :cond_a
    return-void

    :cond_b
    const-string p2, "returned token is null"

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "FirebaseInstanceId"

    const-string p3, "Unable to get master token"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zzbI(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/google/firebase/iid/zzl;->zzbd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckC:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/firebase/iid/zzq;->zzJX()Lcom/google/firebase/iid/zzq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzbZ(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/firebase/iid/zzq;->zze(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckC:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzbJ(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzbK(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzbJ(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static zzbZ(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_TOKEN_REFRESH_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "next_retry_delay_in_seconds"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic zzca(I)Landroid/content/Intent;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzbZ(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final zzhi(Ljava/lang/String;)Lcom/google/firebase/iid/zzj;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/firebase/iid/zzj;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzj;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "subtype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/firebase/iid/zzj;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzj;

    move-result-object p1

    return-object p1
.end method

.method private static zzp(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "subtype"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6790df6b

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "ACTION_TOKEN_REFRESH_RETRY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_c

    invoke-static {p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzhi(Ljava/lang/String;)Lcom/google/firebase/iid/zzj;

    move-result-object v1

    const-string v2, "CMD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    if-eqz v3, :cond_3

    const-string v3, "FirebaseInstanceId"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Service command "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/google/firebase/iid/zzj;->zzJT()Lcom/google/firebase/iid/zzr;

    move-result-object v1

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzr;->zzdr(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/zzj;->zzJU()Lcom/google/firebase/iid/zzl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzl;->zzi(Landroid/content/Intent;)V

    return-void

    :cond_5
    const-string v3, "gcm.googleapis.com/refresh"

    const-string v5, "from"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/google/firebase/iid/zzj;->zzJT()Lcom/google/firebase/iid/zzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzr;->zzdr(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    return-void

    :cond_6
    const-string v3, "RST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzj;->zzvL()V

    invoke-direct {p0, p1, v5, v5}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    return-void

    :cond_7
    const-string v3, "RST_FULL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/google/firebase/iid/zzj;->zzJT()Lcom/google/firebase/iid/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzj;->zzvL()V

    invoke-static {}, Lcom/google/firebase/iid/zzj;->zzJT()Lcom/google/firebase/iid/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzr;->zzvP()V

    invoke-direct {p0, p1, v5, v5}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    return-void

    :cond_8
    const-string v1, "SYNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/google/firebase/iid/zzj;->zzJT()Lcom/google/firebase/iid/zzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzr;->zzdr(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    return-void

    :cond_9
    const-string v0, "PING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0}, Lcom/google/firebase/iid/zzl;->zzbd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string p1, "FirebaseInstanceId"

    const-string v0, "Unable to respond to ping due to missing target package"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gcm.intent.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/google/firebase/iid/zzl;->zzd(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "google.to"

    const-string v0, "google.com/iid"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "google.message_id"

    invoke-static {}, Lcom/google/firebase/iid/zzl;->zzvO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    invoke-virtual {p0, v1, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    invoke-direct {p0, p1, v4, v4}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public onTokenRefresh()V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method protected final zzn(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/google/firebase/iid/zzq;->zzJX()Lcom/google/firebase/iid/zzq;

    move-result-object p1

    iget-object p1, p1, Lcom/google/firebase/iid/zzq;->zzckP:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method public final zzo(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzckD:Z

    if-eqz v1, :cond_3

    const-string v1, "FirebaseInstanceId"

    const-string v2, "Register result in service "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzhi(Ljava/lang/String;)Lcom/google/firebase/iid/zzj;

    invoke-static {}, Lcom/google/firebase/iid/zzj;->zzJU()Lcom/google/firebase/iid/zzl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzl;->zzi(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
