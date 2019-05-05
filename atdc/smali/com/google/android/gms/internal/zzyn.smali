.class public final Lcom/google/android/gms/internal/zzyn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/zzaff;",
        ">;"
    }
.end annotation


# static fields
.field private static zzRj:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private final mLock:Ljava/lang/Object;

.field private final zzIc:Lcom/google/android/gms/internal/zzcu;

.field private final zzQQ:Lcom/google/android/gms/internal/zzafg;

.field private zzRA:Ljava/lang/String;

.field private zzRB:Z

.field private final zzRv:Lcom/google/android/gms/internal/zzaie;

.field private final zzRw:Lcom/google/android/gms/ads/internal/zzbb;

.field private zzRx:Z

.field private zzRy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzRz:Lorg/json/JSONObject;

.field private final zzsK:Lcom/google/android/gms/internal/zznb;

.field private zzuP:Lcom/google/android/gms/internal/zzyh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzyn;->zzRj:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzaie;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zznb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyn;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyn;->zzRw:Lcom/google/android/gms/ads/internal/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyn;->zzRv:Lcom/google/android/gms/internal/zzaie;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzyn;->zzIc:Lcom/google/android/gms/internal/zzcu;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzyn;->zzsK:Lcom/google/android/gms/internal/zznb;

    sget-object p3, Lcom/google/android/gms/internal/zzmo;->zzFu:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbb;->zzbi()Lcom/google/android/gms/internal/zzyh;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    if-nez p3, :cond_1

    new-instance p3, Lcom/google/android/gms/internal/zzyh;

    invoke-direct {p3, p1, p5, p2, p4}, Lcom/google/android/gms/internal/zzyh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzcu;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzyh;->zzgs()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzyn;->zzRB:Z

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzyn;->zzRx:Z

    const/4 p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/zzyn;->mErrorCode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyn;->zzRy:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyn;->zzRA:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzoa;)Lcom/google/android/gms/internal/zzaff;
    .locals 53

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzyn;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v1, Lcom/google/android/gms/internal/zzyn;->mErrorCode:I

    const/4 v4, -0x2

    if-nez p1, :cond_0

    iget v6, v1, Lcom/google/android/gms/internal/zzyn;->mErrorCode:I

    if-ne v6, v4, :cond_0

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    move v9, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v9, v4, :cond_1

    const/4 v2, 0x0

    move-object/from16 v33, v2

    goto :goto_1

    :cond_1
    move-object/from16 v33, p1

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/zzaff;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v8, v3, Lcom/google/android/gms/internal/zzaai;->zzMa:Ljava/util/List;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v10, v3, Lcom/google/android/gms/internal/zzaai;->zzMb:Ljava/util/List;

    iget-object v11, v1, Lcom/google/android/gms/internal/zzyn;->zzRy:Ljava/util/List;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget v12, v3, Lcom/google/android/gms/internal/zzaai;->orientation:I

    iget-object v3, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-wide v13, v3, Lcom/google/android/gms/internal/zzaai;->zzMg:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v15, v3, Lcom/google/android/gms/internal/zzaae;->zzSC:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    iget-object v3, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzaai;->zzTn:J

    iget-object v7, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    move-object/from16 v43, v8

    iget-wide v7, v7, Lcom/google/android/gms/internal/zzafg;->zzXR:J

    move-wide/from16 v44, v4

    iget-object v4, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzafg;->zzXS:J

    move-wide/from16 v46, v4

    iget-object v4, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaai;->zzTt:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzyn;->zzRz:Lorg/json/JSONObject;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v48, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/zzaai;->zzTG:Z

    move/from16 v49, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaai;->zzTH:Lcom/google/android/gms/internal/zzaak;

    const/16 v39, 0x0

    move-object/from16 v50, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaai;->zzMd:Ljava/util/List;

    move-wide/from16 v51, v7

    iget-object v7, v1, Lcom/google/android/gms/internal/zzyn;->zzRA:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    move-object/from16 v40, v5

    move-wide/from16 v25, v44

    move-wide/from16 v29, v46

    move-object/from16 v32, v48

    move/from16 v37, v49

    move-object/from16 v38, v50

    move-object v5, v2

    move-object/from16 v41, v7

    move-wide/from16 v27, v51

    const/4 v7, 0x0

    move-object/from16 v42, v8

    move-object/from16 v8, v43

    move-object/from16 v24, v3

    move-object/from16 v31, v4

    invoke-direct/range {v5 .. v42}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzaka;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zzud;JLcom/google/android/gms/internal/zziv;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzaee;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaak;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzig;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyn;)Lcom/google/android/gms/internal/zzafg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    return-object p0
.end method

.method private final zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzajm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzajm<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "is_transparent"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzyn;->zzc(IZ)V

    new-instance p1, Lcom/google/android/gms/internal/zzajh;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzajh;

    new-instance p2, Lcom/google/android/gms/internal/zznp;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p2, v1, p3, v4, v5}, Lcom/google/android/gms/internal/zznp;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzyn;->zzRv:Lcom/google/android/gms/internal/zzaie;

    new-instance p3, Lcom/google/android/gms/internal/zzyu;

    move-object v1, p3

    move-object v2, p0

    move v3, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzyu;-><init>(Lcom/google/android/gms/internal/zzyn;ZDZLjava/lang/String;)V

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/zzaie;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/internal/zzajm;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zzpj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzyn;->zzc(Lcom/google/android/gms/internal/zzpj;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzyn;)Lcom/google/android/gms/ads/internal/zzbb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyn;->zzRw:Lcom/google/android/gms/ads/internal/zzbb;

    return-object p0
.end method

.method static zzb(Lcom/google/android/gms/internal/zzajm;)Lcom/google/android/gms/internal/zzaka;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajm<",
            "Lcom/google/android/gms/internal/zzaka;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaka;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFz:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzajm;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzaka;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Exception occurred while waiting for video to load"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "InterruptedException occurred while waiting for video to load"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzpj;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyn;->zzRw:Lcom/google/android/gms/ads/internal/zzbb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzpj;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbb;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzpt;->zzb(Lcom/google/android/gms/internal/zzpj;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzd(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final zzgw()Lcom/google/android/gms/internal/zzaff;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzyn;->zzRB:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzyh;->zzgt()V

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyn;->zzgx()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v8, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzajg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzajg;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzyw;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzyw;-><init>(Lcom/google/android/gms/internal/zzyn;)V

    new-instance v4, Lcom/google/android/gms/internal/zzyo;

    invoke-direct {v4, p0, v11, v3, v2}, Lcom/google/android/gms/internal/zzyo;-><init>(Lcom/google/android/gms/internal/zzyn;Ljava/lang/String;Lcom/google/android/gms/internal/zzyw;Lcom/google/android/gms/internal/zzajg;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzyh;->zza(Lcom/google/android/gms/internal/zzym;)V

    sget-wide v3, Lcom/google/android/gms/internal/zzyn;->zzRj:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzajg;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    move-object v8, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyn;->zzgx()Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v8, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v2, "template_id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaae;->zzwj:Lcom/google/android/gms/internal/zzon;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaae;->zzwj:Lcom/google/android/gms/internal/zzon;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzon;->zzIn:Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaae;->zzwj:Lcom/google/android/gms/internal/zzon;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaae;->zzwj:Lcom/google/android/gms/internal/zzon;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/zzon;->zzIp:Z

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const-string v5, "2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/zzzf;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzzf;-><init>(ZZ)V

    goto :goto_5

    :cond_5
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/zzzg;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzzg;-><init>(ZZ)V

    goto :goto_5

    :cond_6
    const-string v4, "3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "custom_template_id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/zzajg;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzajg;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzyq;

    invoke-direct {v6, p0, v4, v2}, Lcom/google/android/gms/internal/zzyq;-><init>(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zzajg;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v5, Lcom/google/android/gms/internal/zzyn;->zzRj:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzajg;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/zzzh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzzh;-><init>(Z)V

    goto :goto_5

    :cond_7
    const-string v2, "No handler for custom template: "

    const-string v3, "custom_template_id"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzyn;->zzt(I)V

    :cond_a
    :goto_4
    move-object v2, v1

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyn;->zzgx()Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v2, :cond_d

    if-nez v8, :cond_b

    goto :goto_7

    :cond_b
    const-string v3, "tracking_urls_and_actions"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "impression_tracking_urls"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzyn;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move-object v4, v1

    goto :goto_6

    :cond_c
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_6
    iput-object v4, p0, Lcom/google/android/gms/internal/zzyn;->zzRy:Ljava/util/List;

    const-string v4, "active_view"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzRz:Lorg/json/JSONObject;

    const-string v3, "debug_signals"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzRA:Ljava/lang/String;

    invoke-interface {v2, p0, v8}, Lcom/google/android/gms/internal/zzyv;->zza(Lcom/google/android/gms/internal/zzyn;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzoa;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/zzoc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyn;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzyn;->zzRw:Lcom/google/android/gms/ads/internal/zzbb;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzyn;->zzIc:Lcom/google/android/gms/internal/zzcu;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v10, v3, Lcom/google/android/gms/internal/zzaae;->zzvT:Lcom/google/android/gms/internal/zzaje;

    move-object v3, v12

    move-object v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzoc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznz;Lcom/google/android/gms/internal/zzyh;Lcom/google/android/gms/internal/zzcu;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzaje;Ljava/lang/String;)V

    invoke-interface {v2, v12}, Lcom/google/android/gms/internal/zzoa;->zzb(Lcom/google/android/gms/internal/zzny;)V

    goto :goto_8

    :cond_d
    :goto_7
    move-object v2, v1

    :goto_8
    instance-of v3, v2, Lcom/google/android/gms/internal/zznu;

    if-eqz v3, :cond_e

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/zznu;

    new-instance v4, Lcom/google/android/gms/internal/zzyw;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzyw;-><init>(Lcom/google/android/gms/internal/zzyn;)V

    new-instance v5, Lcom/google/android/gms/internal/zzyr;

    invoke-direct {v5, p0, v3}, Lcom/google/android/gms/internal/zzyr;-><init>(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zznu;)V

    iput-object v5, v4, Lcom/google/android/gms/internal/zzyw;->zzRW:Lcom/google/android/gms/internal/zzrd;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzuP:Lcom/google/android/gms/internal/zzyh;

    new-instance v4, Lcom/google/android/gms/internal/zzys;

    invoke-direct {v4, p0, v5}, Lcom/google/android/gms/internal/zzys;-><init>(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zzrd;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzyh;->zza(Lcom/google/android/gms/internal/zzym;)V

    :cond_e
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzyn;->zza(Lcom/google/android/gms/internal/zzoa;)Lcom/google/android/gms/internal/zzaff;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "Error occured while doing native ads initialization."

    goto :goto_9

    :catch_1
    move-exception v2

    const-string v3, "Timeout when loading native ad."

    goto :goto_9

    :catch_2
    move-exception v2

    const-string v3, "Malformed native JSON response."

    :goto_9
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzyn;->zzRx:Z

    if-nez v2, :cond_f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzyn;->zzt(I)V

    :cond_f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzyn;->zza(Lcom/google/android/gms/internal/zzoa;)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    return-object v0
.end method

.method private static zzj(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznp;->zzeg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic zzk(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzyn;->zzj(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyn;->zzgw()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzajm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzajm<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/internal/zzyn;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzajm;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzajm<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/gms/internal/zzyn;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzajm;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p2

    :cond_4
    :goto_2
    invoke-virtual {p0, p3, p3}, Lcom/google/android/gms/internal/zzyn;->zzc(IZ)V

    return-object p2
.end method

.method public final zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "require"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzyn;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzajm;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzajm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzajm<",
            "Lcom/google/android/gms/internal/zzaka;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzajh;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string v0, "vast_xml"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Required field \'vast_xml\' is missing"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzajh;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyn;->zzIc:Lcom/google/android/gms/internal/zzcu;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyn;->zzsK:Lcom/google/android/gms/internal/zznb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzyn;->zzRw:Lcom/google/android/gms/ads/internal/zzbb;

    new-instance p2, Lcom/google/android/gms/internal/zzyx;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzyx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbb;)V

    new-instance v0, Lcom/google/android/gms/internal/zzajg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajg;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    new-instance v1, Lcom/google/android/gms/internal/zzyy;

    invoke-direct {v1, p2, p1, v0}, Lcom/google/android/gms/internal/zzyy;-><init>(Lcom/google/android/gms/internal/zzyx;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzajg;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagz;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final zzc(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzyn;->zzt(I)V

    :cond_0
    return-void
.end method

.method public final zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzajm;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzajm<",
            "Lcom/google/android/gms/internal/zznn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzajh;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p1, "text"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text_size"

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "text_color"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzyn;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v0, "bg_color"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzyn;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "animation_ms"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "presentation_ms"

    const/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaae;->zzwj:Lcom/google/android/gms/internal/zzon;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaae;->zzwj:Lcom/google/android/gms/internal/zzon;

    iget v1, v1, Lcom/google/android/gms/internal/zzon;->versionCode:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyn;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaae;->zzwj:Lcom/google/android/gms/internal/zzon;

    iget v1, v1, Lcom/google/android/gms/internal/zzon;->zzIq:I

    move v11, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v11, 0x1

    :goto_0
    const-string v1, "allow_pub_rendering"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "images"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "images"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzyn;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v3, "image"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/google/android/gms/internal/zzyn;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzajm;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzaji;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzyt;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/zzyt;-><init>(Lcom/google/android/gms/internal/zzyn;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaji;->zza(Lcom/google/android/gms/internal/zzajm;Lcom/google/android/gms/internal/zzajl;)Lcom/google/android/gms/internal/zzajm;

    move-result-object p1

    return-object p1
.end method

.method public final zzgx()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzyn;->zzRx:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzt(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzyn;->zzRx:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzyn;->mErrorCode:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
