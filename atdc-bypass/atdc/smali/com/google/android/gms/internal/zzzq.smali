.class public final Lcom/google/android/gms/internal/zzzq;
.super Lcom/google/android/gms/internal/zzafp;

# interfaces
.implements Lcom/google/android/gms/internal/zzzw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzMM:Lcom/google/android/gms/internal/zzaae;

.field private zzMu:Lcom/google/android/gms/internal/zzub;

.field private zzQR:Lcom/google/android/gms/internal/zzaai;

.field private zzQS:Ljava/lang/Runnable;

.field private final zzQT:Ljava/lang/Object;

.field private final zzSm:Lcom/google/android/gms/internal/zzzp;

.field private final zzSn:Lcom/google/android/gms/internal/zzaaf;

.field private final zzSo:Lcom/google/android/gms/internal/zzij;

.field zzSp:Lcom/google/android/gms/internal/zzahp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/internal/zzzp;Lcom/google/android/gms/internal/zzij;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafp;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQT:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzq;->zzSm:Lcom/google/android/gms/internal/zzzp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzq;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzq;->zzSo:Lcom/google/android/gms/internal/zzij;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzq;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzq;->zzQT:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzq;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzzq;->zzd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzq;)Lcom/google/android/gms/internal/zzaaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzq;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zziv;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzzt;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaae;->zzwn:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaae;->zzwn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzMu:Lcom/google/android/gms/internal/zzub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzMu:Lcom/google/android/gms/internal/zzub;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzub;->zzMp:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaai;->zzAw:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaae;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zziv;->zzAu:[Lcom/google/android/gms/internal/zziv;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lcom/google/android/gms/internal/zziv;->zzAw:Z

    if-eqz v6, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zziv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaae;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zziv;->zzAu:[Lcom/google/android/gms/internal/zziv;

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/internal/zziv;-><init>(Lcom/google/android/gms/internal/zziv;[Lcom/google/android/gms/internal/zziv;)V

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaai;->zzTr:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzzt;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzzt;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaai;->zzTr:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/zzzt;

    const-string v0, "Invalid ad size format from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzzt;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_6
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaae;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zziv;->zzAu:[Lcom/google/android/gms/internal/zziv;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_a

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/internal/zziv;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget v8, v6, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_4

    :cond_7
    iget v8, v6, Lcom/google/android/gms/internal/zziv;->width:I

    :goto_4
    iget v9, v6, Lcom/google/android/gms/internal/zziv;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_8

    iget v9, v6, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_5

    :cond_8
    iget v7, v6, Lcom/google/android/gms/internal/zziv;->height:I

    :goto_5
    if-ne v3, v8, :cond_9

    if-ne v0, v7, :cond_9

    iget-boolean v7, v6, Lcom/google/android/gms/internal/zziv;->zzAw:Z

    if-nez v7, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/zziv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaae;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zziv;->zzAu:[Lcom/google/android/gms/internal/zziv;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/internal/zziv;-><init>(Lcom/google/android/gms/internal/zziv;[Lcom/google/android/gms/internal/zziv;)V

    return-object v0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/zzzt;

    const-string v0, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzzt;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/zzzt;

    const-string v0, "Invalid ad size number from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_7
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzzt;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzzq;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzq;->zzQS:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final zzd(ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move v6, p1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_1

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzaai;->zzMg:J

    invoke-direct {v1, v6, v2, v3}, Lcom/google/android/gms/internal/zzaai;-><init>(IJ)V

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    :goto_4
    move-object v2, v1

    goto :goto_5

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzaae;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzzq;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzaaf;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    new-instance v13, Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzzq;->zzMu:Lcom/google/android/gms/internal/zzub;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzaai;->zzTs:J

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzzq;->zzSo:Lcom/google/android/gms/internal/zzij;

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzafg;-><init>(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzij;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzq;->zzSm:Lcom/google/android/gms/internal/zzzp;

    invoke-interface {v1, v13}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzafg;)V

    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzSp:Lcom/google/android/gms/internal/zzahp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzSp:Lcom/google/android/gms/internal/zzahp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzahp;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzajp;)Lcom/google/android/gms/internal/zzahp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaje;",
            "Lcom/google/android/gms/internal/zzajp<",
            "Lcom/google/android/gms/internal/zzaae;",
            ">;)",
            "Lcom/google/android/gms/internal/zzahp;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzzv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzzv;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzaje;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Fetching ad response from local ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzaab;

    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/gms/internal/zzaab;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajp;Lcom/google/android/gms/internal/zzzw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzzy;->zzgp()Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string v1, "Fetching ad response from remote ad request service."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaiy;->zzX(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Failed to connect to remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzaac;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/android/gms/internal/zzaac;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzajp;Lcom/google/android/gms/internal/zzzw;)V

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaai;)V
    .locals 12
    .param p1    # Lcom/google/android/gms/internal/zzaai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQT:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzSp:Lcom/google/android/gms/internal/zzahp;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaai;->zzSV:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzafk;->zzf(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzDY:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzaai;->zzTh:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaae;->zzvR:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "never_pool_slots"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaae;->zzvR:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget p1, p1, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    const/4 v2, -0x2

    const/4 v3, -0x3

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget p1, p1, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    if-eq p1, v3, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget v0, v0, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget v1, v1, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzzt;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget p1, p1, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    if-eq p1, v3, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaai;->body:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzzt;

    const-string v0, "No fill from ad server."

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzzt;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaai;->zzSH:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzafk;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzaai;->zzTo:Z
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzzt; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Lcom/google/android/gms/internal/zzub;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaai;->body:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzub;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzMu:Lcom/google/android/gms/internal/zzub;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzMu:Lcom/google/android/gms/internal/zzub;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzub;->zzMe:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzafk;->zzz(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/zzzt; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "Could not parse mediation config."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/zzzt;

    const-string v0, "Could not parse mediation config: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaai;->body:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzzt;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaai;->zzMe:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzafk;->zzz(Z)V

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaai;->zzSW:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzGf:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzahe;->zzS(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "googleads.g.doubleclick.net"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaai;->zzSW:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaae;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zziv;->zzAu:[Lcom/google/android/gms/internal/zziv;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzzq;->zzb(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zziv;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzzt; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, p1

    goto :goto_4

    :cond_7
    move-object v4, v0

    :goto_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTy:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzafk;->zzx(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTL:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzafk;->zzy(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaai;->zzTw:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTw:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, p1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string v1, "Error parsing the JSON for Active View."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    move-object v10, v0

    :goto_5
    new-instance p1, Lcom/google/android/gms/internal/zzafg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzq;->zzMu:Lcom/google/android/gms/internal/zzub;

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzaai;->zzTs:J

    iget-object v11, p0, Lcom/google/android/gms/internal/zzzq;->zzSo:Lcom/google/android/gms/internal/zzij;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzafg;-><init>(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzij;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzSm:Lcom/google/android/gms/internal/zzzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzafg;)V

    :goto_6
    sget-object p1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQS:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzzt;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzzt;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzzq;->zzd(ILjava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final zzbd()V
    .locals 9

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzr;-><init>(Lcom/google/android/gms/internal/zzzq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzQS:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzQS:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzEK:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEI:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaaf;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaaf;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/zzaae;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzaaf;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzq;->zza(Lcom/google/android/gms/internal/zzaai;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzajt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajt;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzzs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzzs;-><init>(Lcom/google/android/gms/internal/zzzq;Lcom/google/android/gms/internal/zzajp;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagt;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaew;->zzu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaew;->zzv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaew;->zzw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/zzaew;->zzh(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zzaae;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzaaf;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->zzMM:Lcom/google/android/gms/internal/zzaae;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzajp;->zzf(Ljava/lang/Object;)V

    return-void
.end method
