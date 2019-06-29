.class public final Lcom/google/android/gms/internal/zzazp;
.super Ljava/lang/Object;


# instance fields
.field private zzazA:Z

.field private final zzazB:Lcom/google/android/gms/internal/aej;

.field private zzazC:Z

.field private synthetic zzazD:Lcom/google/android/gms/internal/zzazn;

.field private zzazk:Ljava/lang/String;

.field private zzazl:I

.field private zzazm:Ljava/lang/String;

.field private zzazn:Ljava/lang/String;

.field private zzazp:I

.field private final zzazu:Lcom/google/android/gms/internal/zzazr;

.field private zzazv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzazw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzazx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzazy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzcqn;",
            ">;"
        }
    .end annotation
.end field

.field private zzazz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzazn;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzazp;-><init>(Lcom/google/android/gms/internal/zzazn;[BLcom/google/android/gms/internal/zzazr;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzazn;[BLcom/google/android/gms/internal/zzazo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzazp;-><init>(Lcom/google/android/gms/internal/zzazn;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzazn;[BLcom/google/android/gms/internal/zzazr;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzazn;->zza(Lcom/google/android/gms/internal/zzazn;)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazl:I

    iget-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzazn;->zzb(Lcom/google/android/gms/internal/zzazn;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazk:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzazn;->zzc(Lcom/google/android/gms/internal/zzazn;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazm:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazn:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazp:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazv:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazw:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazx:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazy:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazz:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazp;->zzazA:Z

    new-instance v1, Lcom/google/android/gms/internal/aej;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aej;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazC:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazn;->zzc(Lcom/google/android/gms/internal/zzazn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazn;->zzd(Lcom/google/android/gms/internal/zzazn;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/aej;->zzctQ:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazn;->zzd(Lcom/google/android/gms/internal/zzazn;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/aej;->zzctR:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazn;->zze(Lcom/google/android/gms/internal/zzazn;)Lcom/google/android/gms/internal/zzazs;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    iget-wide v1, p1, Lcom/google/android/gms/internal/aej;->zzctQ:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/aej;->zzcuc:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    iput-object p2, p1, Lcom/google/android/gms/internal/aej;->zzctX:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzazp;->zzazu:Lcom/google/android/gms/internal/zzazr;

    return-void
.end method


# virtual methods
.method public final zzai(I)Lcom/google/android/gms/internal/zzazp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    iput p1, v0, Lcom/google/android/gms/internal/aej;->zzctT:I

    return-object p0
.end method

.method public final zzaj(I)Lcom/google/android/gms/internal/zzazp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    iput p1, v0, Lcom/google/android/gms/internal/aej;->zzrB:I

    return-object p0
.end method

.method public final zzoS()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazp;->zzoT()Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public final zzoT()Lcom/google/android/gms/common/api/PendingResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazC:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazp;->zzazC:Z

    new-instance v0, Lcom/google/android/gms/internal/zzazu;

    new-instance v10, Lcom/google/android/gms/internal/zzbak;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zzg(Lcom/google/android/gms/internal/zzazn;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zzh(Lcom/google/android/gms/internal/zzazn;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/zzazp;->zzazl:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzazp;->zzazk:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzazp;->zzazm:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzazp;->zzazn:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zzf(Lcom/google/android/gms/internal/zzazn;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzbak;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzazp;->zzazB:Lcom/google/android/gms/internal/aej;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/google/android/gms/internal/zzazp;->zzazA:Z

    move-object v1, v0

    move-object v2, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/zzazu;-><init>(Lcom/google/android/gms/internal/zzbak;Lcom/google/android/gms/internal/aej;Lcom/google/android/gms/internal/zzazr;Lcom/google/android/gms/internal/zzazr;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/internal/zzcqn;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzazu;->zzazE:Lcom/google/android/gms/internal/zzbak;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzazn;->zzi(Lcom/google/android/gms/internal/zzazn;)Lcom/google/android/gms/internal/zzazq;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbak;->zzazk:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/zzbak;->zzazl:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/zzazq;->zzg(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazp;->zzazD:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zzj(Lcom/google/android/gms/internal/zzazn;)Lcom/google/android/gms/internal/zzazt;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzazt;->zza(Lcom/google/android/gms/internal/zzazu;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method
