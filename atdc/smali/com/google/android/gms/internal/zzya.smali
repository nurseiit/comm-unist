.class public final Lcom/google/android/gms/internal/zzya;
.super Lcom/google/android/gms/internal/zzafp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzQP:Lcom/google/android/gms/internal/zzxy;

.field private final zzQQ:Lcom/google/android/gms/internal/zzafg;

.field private final zzQR:Lcom/google/android/gms/internal/zzaai;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzya;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzya;->zzQP:Lcom/google/android/gms/internal/zzxy;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzya;)Lcom/google/android/gms/internal/zzxy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzya;->zzQP:Lcom/google/android/gms/internal/zzxy;

    return-object p0
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final zzbd()V
    .locals 46

    move-object/from16 v0, p0

    new-instance v15, Lcom/google/android/gms/internal/zzaff;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget v8, v1, Lcom/google/android/gms/internal/zzaai;->orientation:I

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzaai;->zzMg:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v11, v1, Lcom/google/android/gms/internal/zzaae;->zzSC:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-wide v13, v1, Lcom/google/android/gms/internal/zzaai;->zzTp:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v12, v1, Lcom/google/android/gms/internal/zzafg;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzaai;->zzTn:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-wide v4, v1, Lcom/google/android/gms/internal/zzafg;->zzXR:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQR:Lcom/google/android/gms/internal/zzaai;

    move-wide/from16 v39, v13

    iget-wide v13, v1, Lcom/google/android/gms/internal/zzaai;->zzTs:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzaai;->zzTt:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXL:Lorg/json/JSONObject;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTG:Z

    move/from16 v42, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->zzTH:Lcom/google/android/gms/internal/zzaak;

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzya;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v38, v1

    move-object/from16 v28, v41

    move/from16 v33, v42

    move-object/from16 v34, v43

    move-object v1, v15

    move-object/from16 v27, v3

    move-object/from16 v3, v16

    move-wide/from16 v41, v4

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-wide/from16 v43, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v20, v12

    move/from16 v12, v21

    move-wide/from16 v18, v39

    move-wide/from16 v39, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v45, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v26

    move-wide/from16 v21, v43

    move-wide/from16 v23, v41

    move-wide/from16 v25, v39

    invoke-direct/range {v1 .. v38}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzaka;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zzud;JLcom/google/android/gms/internal/zziv;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzaee;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaak;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzig;)V

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzyb;

    move-object/from16 v3, v45

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzyb;-><init>(Lcom/google/android/gms/internal/zzya;Lcom/google/android/gms/internal/zzaff;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
