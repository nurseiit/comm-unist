.class public final Lcom/google/android/gms/internal/zzaby;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private mOrientation:I

.field private zzHD:Ljava/lang/String;

.field private final zzMM:Lcom/google/android/gms/internal/zzaae;

.field private zzMy:Z

.field private zzRy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzUS:Ljava/lang/String;

.field private zzUT:Ljava/lang/String;

.field private zzUU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzUV:Ljava/lang/String;

.field private zzUW:Ljava/lang/String;

.field private zzUX:Ljava/lang/String;

.field private zzUY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzUZ:J

.field private zzVa:Z

.field private final zzVb:J

.field private zzVc:J

.field private zzVd:Z

.field private zzVe:Z

.field private zzVf:Z

.field private zzVg:Z

.field private zzVh:Z

.field private zzVi:Ljava/lang/String;

.field private zzVj:Z

.field private zzVk:Lcom/google/android/gms/internal/zzaee;

.field private zzVl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzVm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzVn:Z

.field private zzVo:Lcom/google/android/gms/internal/zzaak;

.field private zzVp:Z

.field private zzVq:Ljava/lang/String;

.field private zzVr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzVs:Z

.field private zzVt:Ljava/lang/String;

.field private zzVu:Lcom/google/android/gms/internal/zzaeq;

.field private zzVv:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaby;->zzUZ:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVa:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVc:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaby;->mOrientation:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVd:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVe:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVf:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVh:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVi:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVj:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzMy:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVn:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVp:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaby;->zzUT:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaby;->zzMM:Lcom/google/android/gms/internal/zzaae;

    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzb(Ljava/util/Map;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p0

    float-to-long p0, v0

    return-wide p0

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not parse float from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " header: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzd(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaby;->zzHD:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzaby;->zzh(Ljava/util/Map;)V

    return-void
.end method

.method public final zze(J)Lcom/google/android/gms/internal/zzaai;
    .locals 65

    move-object/from16 v0, p0

    new-instance v43, Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaby;->zzMM:Lcom/google/android/gms/internal/zzaae;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaby;->zzUT:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaby;->zzHD:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaby;->zzUU:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaby;->zzUY:Ljava/util/List;

    iget-wide v7, v0, Lcom/google/android/gms/internal/zzaby;->zzUZ:J

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzaby;->zzVa:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/zzaby;->zzRy:Ljava/util/List;

    iget-wide v13, v0, Lcom/google/android/gms/internal/zzaby;->zzVc:J

    iget v15, v0, Lcom/google/android/gms/internal/zzaby;->mOrientation:I

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzUS:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/zzaby;->zzUW:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaby;->zzUX:Ljava/lang/String;

    move-object/from16 v44, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVd:Z

    move/from16 v45, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVe:Z

    move/from16 v46, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVf:Z

    move/from16 v47, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVg:Z

    move/from16 v48, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVi:Ljava/lang/String;

    move-object/from16 v49, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVj:Z

    move/from16 v50, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzMy:Z

    move/from16 v51, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVk:Lcom/google/android/gms/internal/zzaee;

    move-object/from16 v52, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVl:Ljava/util/List;

    move-object/from16 v53, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVm:Ljava/util/List;

    move-object/from16 v54, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVn:Z

    move/from16 v55, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVo:Lcom/google/android/gms/internal/zzaak;

    move-object/from16 v56, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVp:Z

    move/from16 v57, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVq:Ljava/lang/String;

    move-object/from16 v58, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVr:Ljava/util/List;

    move-object/from16 v59, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVs:Z

    move/from16 v60, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVt:Ljava/lang/String;

    move-object/from16 v61, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVu:Lcom/google/android/gms/internal/zzaeq;

    move-object/from16 v62, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaby;->zzUV:Ljava/lang/String;

    move-object/from16 v63, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVh:Z

    move/from16 v64, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaby;->zzVv:Z

    const-wide/16 v16, -0x1

    const/16 v25, 0x0

    move-object/from16 v20, v1

    move-object/from16 v1, v43

    move/from16 v42, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v44

    move/from16 v21, v45

    move/from16 v22, v46

    move/from16 v23, v47

    move/from16 v24, v48

    move-object/from16 v26, v49

    move/from16 v27, v50

    move/from16 v28, v51

    move-object/from16 v29, v52

    move-object/from16 v30, v53

    move-object/from16 v31, v54

    move/from16 v32, v55

    move-object/from16 v33, v56

    move/from16 v34, v57

    move-object/from16 v35, v58

    move-object/from16 v36, v59

    move/from16 v37, v60

    move-object/from16 v38, v61

    move-object/from16 v39, v62

    move-object/from16 v40, v63

    move/from16 v41, v64

    move-wide/from16 v10, v16

    move-object/from16 v16, v18

    move-wide/from16 v17, p1

    invoke-direct/range {v1 .. v42}, Lcom/google/android/gms/internal/zzaai;-><init>(Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzaee;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaak;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzaeq;Ljava/lang/String;ZZ)V

    return-object v43
.end method

.method public final zzh(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzUS:Ljava/lang/String;

    const-string v0, "X-Afma-Ad-Slot-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVt:Ljava/lang/String;

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzUU:Ljava/util/List;

    :cond_0
    const-string v0, "X-Afma-Debug-Signals"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzUV:Ljava/lang/String;

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzUW:Ljava/lang/String;

    :cond_1
    const-string v0, "X-Afma-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzUY:Ljava/util/List;

    :cond_2
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzb(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaby;->zzUZ:J

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVa:Z

    const-string v2, "X-Afma-Mediation"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzaby;->zzd(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVa:Z

    const-string v0, "X-Afma-Manual-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzRy:Ljava/util/List;

    :cond_4
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzb(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVc:J

    :cond_5
    const-string v0, "X-Afma-Orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzahe;->zzhU()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/zzaby;->mOrientation:I

    goto :goto_1

    :cond_6
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzahe;->zzhT()I

    move-result v0

    goto :goto_0

    :cond_7
    :goto_1
    const-string v0, "X-Afma-ActiveView"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzUX:Ljava/lang/String;

    const-string v0, "X-Afma-Use-HTTPS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVf:Z

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVd:Z

    const-string v2, "X-Afma-Custom-Rendering-Allowed"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzaby;->zzd(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVd:Z

    const-string v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "native"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVe:Z

    const-string v0, "X-Afma-Content-Url-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVg:Z

    :cond_9
    const-string v0, "X-Afma-Content-Vertical-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVh:Z

    :cond_a
    const-string v0, "X-Afma-Gws-Query-Id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVi:Ljava/lang/String;

    :cond_b
    const-string v0, "X-Afma-Fluid"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaby;->zzVj:Z

    :cond_c
    const-string v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "native_express"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzMy:Z

    const-string v0, "X-Afma-Rewards"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaee;->zzaz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVk:Lcom/google/android/gms/internal/zzaee;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVl:Ljava/util/List;

    if-nez v0, :cond_d

    const-string v0, "X-Afma-Reward-Video-Start-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVl:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVm:Ljava/util/List;

    if-nez v0, :cond_e

    const-string v0, "X-Afma-Reward-Video-Complete-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVm:Ljava/util/List;

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVn:Z

    const-string v3, "X-Afma-Use-Displayed-Impression"

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzaby;->zzd(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVn:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVp:Z

    const-string v3, "X-Afma-Auto-Collect-Location"

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzaby;->zzd(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVp:Z

    const-string v0, "Set-Cookie"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVq:Ljava/lang/String;

    const-string v0, "X-Afma-Auto-Protection-Configuration"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_2

    :cond_f
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaak;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzaak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVo:Lcom/google/android/gms/internal/zzaak;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Error parsing configuration JSON"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaak;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVo:Lcom/google/android/gms/internal/zzaak;

    goto :goto_3

    :cond_10
    :goto_2
    const-string v0, "https://pagead2.googlesyndication.com/pagead/gen_204"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "gmob-apps-blocked-navigation"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaby;->zzUW:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "debugDialog"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaby;->zzUW:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/zzaak;

    sget-object v4, Lcom/google/android/gms/internal/zzmo;->zzCf:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "navigationURL"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x12

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "={NAVIGATION_URL}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/zzaak;-><init>(ZLjava/util/List;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzaby;->zzVo:Lcom/google/android/gms/internal/zzaak;

    :goto_3
    const-string v0, "X-Afma-Remote-Ping-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVr:Ljava/util/List;

    :cond_12
    const-string v0, "X-Afma-Safe-Browsing"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaeq;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzaeq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVu:Lcom/google/android/gms/internal/zzaeq;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "Error parsing safe browsing header"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVs:Z

    const-string v1, "X-Afma-Render-In-Browser"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzaby;->zzd(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaby;->zzVs:Z

    const-string v0, "X-Afma-Pool"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "never_pool"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaby;->zzVv:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string v0, "Error parsing interstitial pool header"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method
