.class public final Lcom/google/android/gms/internal/zzadw;
.super Lcom/google/android/gms/internal/zzafp;

# interfaces
.implements Lcom/google/android/gms/internal/zzadv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzQQ:Lcom/google/android/gms/internal/zzafg;

.field private final zzWC:J

.field private final zzWN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzadm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzadp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWR:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWS:Lcom/google/android/gms/internal/zzacs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzacs;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDI:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzadw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzacs;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzacs;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafp;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzWN:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzWR:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzadw;->zzWS:Lcom/google/android/gms/internal/zzacs;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzadw;->zzWC:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzadw;)Lcom/google/android/gms/internal/zzacs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzadw;->zzWS:Lcom/google/android/gms/internal/zzacs;

    return-object p0
.end method

.method private final zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzua;)Lcom/google/android/gms/internal/zzaff;
    .locals 54
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzua;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    new-instance v39, Lcom/google/android/gms/internal/zzaff;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzaai;->zzMa:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzaai;->zzMb:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzaai;->zzTq:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget v8, v1, Lcom/google/android/gms/internal/zzaai;->orientation:I

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzaai;->zzMg:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v11, v1, Lcom/google/android/gms/internal/zzaae;->zzSC:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v12, v1, Lcom/google/android/gms/internal/zzaai;->zzTo:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v15, v1, Lcom/google/android/gms/internal/zzafg;->zzXN:Lcom/google/android/gms/internal/zzub;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-wide v13, v1, Lcom/google/android/gms/internal/zzaai;->zzTp:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzafg;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    move-wide/from16 v41, v13

    move-object/from16 v40, v15

    iget-wide v14, v1, Lcom/google/android/gms/internal/zzaai;->zzTn:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    move-wide/from16 v43, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/zzafg;->zzXR:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    move-wide/from16 v45, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/zzaai;->zzTs:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v13, v1, Lcom/google/android/gms/internal/zzaai;->zzTt:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzafg;->zzXL:Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTD:Lcom/google/android/gms/internal/zzaee;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTE:Ljava/util/List;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTF:Ljava/util/List;

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTG:Z

    move/from16 v50, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTH:Lcom/google/android/gms/internal/zzaak;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzadw;->zzgV()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzMd:Ljava/util/List;

    move-object/from16 v52, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTK:Ljava/lang/String;

    move-object/from16 v53, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    move-object/from16 v38, v1

    move-object/from16 v30, v47

    move-object/from16 v31, v48

    move-object/from16 v32, v49

    move/from16 v33, v50

    move-object/from16 v34, v51

    move-object/from16 v36, v52

    move-object/from16 v37, v53

    move-object/from16 v1, v39

    move-object/from16 v28, v3

    move-object/from16 v3, v16

    move-object/from16 v20, v5

    move/from16 v5, p1

    move-object/from16 v27, v13

    move-wide/from16 v21, v41

    move-object/from16 v13, p3

    move-wide/from16 v41, v14

    move-wide/from16 v23, v43

    move-wide/from16 v25, v45

    move-object/from16 v14, v17

    move-object/from16 v16, v40

    move-object/from16 v15, p2

    move-object/from16 v17, v18

    move-wide/from16 v18, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v41

    invoke-direct/range {v1 .. v38}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzaka;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zzud;JLcom/google/android/gms/internal/zziv;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzaee;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaak;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzig;)V

    return-object v39
.end method

.method private final zzgV()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzadp;

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/google/android/gms/internal/zzadp;->zzLK:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/google/android/gms/internal/zzadp;->zzLK:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/gms/internal/zzadp;->errorCode:I

    packed-switch v6, :pswitch_data_0

    const/4 v3, 0x6

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x2

    :goto_1
    :pswitch_4
    iget-wide v6, v2, Lcom/google/android/gms/internal/zzadp;->zzML:J

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final zza(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final zzaw(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadw;->zzWR:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzbd()V
    .locals 21

    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXN:Lcom/google/android/gms/internal/zzub;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzub;->zzLY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/gms/internal/zzua;

    iget-object v14, v13, Lcom/google/android/gms/internal/zzua;->zzLP:Ljava/lang/String;

    iget-object v1, v13, Lcom/google/android/gms/internal/zzua;->zzLJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v9, v1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "class_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_3
    iget-object v10, v11, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-object v1, v11, Lcom/google/android/gms/internal/zzadw;->zzWS:Lcom/google/android/gms/internal/zzacs;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzacs;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadz;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzadz;->zzgX()Lcom/google/android/gms/internal/zzadu;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzadz;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_5

    :cond_3
    new-instance v8, Lcom/google/android/gms/internal/zzadm;

    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->mContext:Landroid/content/Context;

    iget-object v6, v11, Lcom/google/android/gms/internal/zzadw;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-wide v4, v11, Lcom/google/android/gms/internal/zzadw;->zzWC:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v8

    move-object v3, v9

    move-wide/from16 v16, v4

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v18, v12

    move-object v12, v8

    move-object v8, v11

    move-object/from16 v20, v10

    move-object/from16 v19, v14

    move-object v14, v9

    move-wide/from16 v9, v16

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzadm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzadz;Lcom/google/android/gms/internal/zzadv;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/zzadw;->zzWN:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzafp;->zzgp()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    invoke-virtual {v1, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    monitor-exit v20

    goto :goto_7

    :cond_4
    :goto_5
    move-object/from16 v20, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v14

    move-object v14, v9

    iget-object v1, v11, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/zzadr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzadr;-><init>()V

    iget-object v3, v13, Lcom/google/android/gms/internal/zzua;->zzLK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzadr;->zzay(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/zzadr;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzadr;->zzg(J)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzadr;->zzw(I)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzadr;->zzgU()Lcom/google/android/gms/internal/zzadp;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v20, v10

    :goto_6
    move-object v1, v0

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v19, v14

    move-object v1, v0

    const-string v2, "Unable to determine custom event class name, skipping..."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move-object/from16 v12, v18

    move-object/from16 v14, v19

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_8
    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->zzWN:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_c

    :try_start_3
    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->zzWN:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v11, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzadm;

    if-eqz v4, :cond_6

    iget-object v5, v11, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzadm;->zzgR()Lcom/google/android/gms/internal/zzadp;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->zzWR:Ljava/util/HashSet;

    iget-object v5, v11, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzadm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzadm;->zzgS()Lcom/google/android/gms/internal/zzua;

    move-result-object v3

    :cond_7
    const/4 v2, -0x2

    invoke-direct {v11, v2, v1, v3}, Lcom/google/android/gms/internal/zzadw;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzua;)Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzadx;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/zzadx;-><init>(Lcom/google/android/gms/internal/zzadw;Lcom/google/android/gms/internal/zzaff;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v4

    return-void

    :cond_8
    monitor-exit v4

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_7
    const-string v3, "Unable to resolve rewarded adapter."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v3, v11, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzadm;

    if-eqz v3, :cond_9

    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzadm;->zzgR()Lcom/google/android/gms/internal/zzadp;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v2

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v1

    :catch_2
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    iget-object v2, v11, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzadm;

    if-eqz v1, :cond_a

    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzadm;->zzgR()Lcom/google/android/gms/internal/zzadp;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit v2

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v1

    :goto_a
    iget-object v4, v11, Lcom/google/android/gms/internal/zzadw;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    iget-object v3, v11, Lcom/google/android/gms/internal/zzadw;->zzWO:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/google/android/gms/internal/zzadw;->zzWP:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzadm;

    if-eqz v1, :cond_b

    iget-object v3, v11, Lcom/google/android/gms/internal/zzadw;->zzWQ:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzadm;->zzgR()Lcom/google/android/gms/internal/zzadp;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v2

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v1

    :cond_c
    :goto_b
    const/4 v1, 0x3

    invoke-direct {v11, v1, v3, v3}, Lcom/google/android/gms/internal/zzadw;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzua;)Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzady;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/zzady;-><init>(Lcom/google/android/gms/internal/zzadw;Lcom/google/android/gms/internal/zzaff;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
