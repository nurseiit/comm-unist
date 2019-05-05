.class final Lcom/google/android/gms/internal/zzbhm;
.super Lcom/google/android/gms/internal/zzbhp;


# instance fields
.field private synthetic zzaKu:Lcom/google/android/gms/internal/zzbhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbhl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbhf;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbhm;->zzaKu:Lcom/google/android/gms/internal/zzbhf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbhp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lcom/google/android/gms/common/data/zzd;->zzqQ()Lcom/google/android/gms/common/data/DataHolder$zza;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbhm;->zzaKu:Lcom/google/android/gms/internal/zzbhf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbhf;->zzsn()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Lcom/google/android/gms/internal/zzbhw;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/internal/zzbhw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/google/android/gms/common/data/zzd;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzav(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbdm;->zzaz(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbdm;->zzqA()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object v9, v5

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/zzi;->zzJP()Lcom/google/firebase/iid/zzi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzi;->getId()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/zzi;->zzJP()Lcom/google/firebase/iid/zzi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/iid/zzi;->getToken()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v3

    move-object v11, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v4, v5

    :goto_2
    const-string v6, "ConfigApiImpl"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "ConfigApiImpl"

    const-string v7, "Cannot retrieve instanceId or instanceIdToken."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v10, v4

    move-object v11, v5

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbhk;->zzaR(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    new-instance v3, Lcom/google/android/gms/internal/zzbhy;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbhm;->zzaKu:Lcom/google/android/gms/internal/zzbhf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbhf;->zzsm()J

    move-result-wide v6

    const/4 v12, 0x0

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbhm;->zzaKu:Lcom/google/android/gms/internal/zzbhf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbhf;->zzso()I

    move-result v13

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbhm;->zzaKu:Lcom/google/android/gms/internal/zzbhf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbhf;->zzsp()I

    move-result v15

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbhm;->zzaKu:Lcom/google/android/gms/internal/zzbhf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbhf;->zzsq()I

    move-result v16

    move-object v4, v3

    move-object v8, v2

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/internal/zzbhy;-><init>(Ljava/lang/String;JLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;II)V

    :try_start_2
    iget-object v4, v1, Lcom/google/android/gms/internal/zzbhm;->zzaKv:Lcom/google/android/gms/internal/zzbic;

    move-object/from16 v5, p2

    invoke-interface {v5, v4, v3}, Lcom/google/android/gms/internal/zzbie;->zza(Lcom/google/android/gms/internal/zzbic;Lcom/google/android/gms/internal/zzbhy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v3
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbhr;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbhr;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;)V

    return-object v0
.end method
