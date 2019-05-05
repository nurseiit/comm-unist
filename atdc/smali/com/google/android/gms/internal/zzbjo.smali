.class public final Lcom/google/android/gms/internal/zzbjo;
.super Ljava/lang/Object;


# instance fields
.field private final zzaLk:Lcom/google/android/gms/internal/acs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/acs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/acs;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjo;->zzaLk:Lcom/google/android/gms/internal/acs;

    return-void
.end method

.method private static zza(IIIIDDJJ)Lcom/google/android/gms/internal/acs;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/acs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/acs;-><init>()V

    iput p0, p1, Lcom/google/android/gms/internal/acs;->zzcqq:I

    const/4 p0, 0x1

    iput p0, p1, Lcom/google/android/gms/internal/acs;->zzcrm:I

    iput-wide p8, p1, Lcom/google/android/gms/internal/acs;->zzcqr:J

    iput-wide p10, p1, Lcom/google/android/gms/internal/acs;->zzcrr:J

    iput p2, p1, Lcom/google/android/gms/internal/acs;->zzcrn:I

    iput p3, p1, Lcom/google/android/gms/internal/acs;->zzcro:I

    iput-wide p4, p1, Lcom/google/android/gms/internal/acs;->zzcrp:D

    iput-wide p6, p1, Lcom/google/android/gms/internal/acs;->zzcrq:D

    return-object p1
.end method

.method public static zza(IID)Lcom/google/android/gms/internal/zzbjo;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/16 v10, 0xbb8

    const-wide/16 v12, 0x0

    move v4, p0

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    invoke-static/range {v2 .. v13}, Lcom/google/android/gms/internal/zzbjo;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/acs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjo;-><init>(Lcom/google/android/gms/internal/acs;)V

    return-object v0
.end method

.method public static zza(IIDJ)Lcom/google/android/gms/internal/zzbjo;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjo;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    move v4, p0

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    move-wide/from16 v12, p4

    invoke-static/range {v2 .. v13}, Lcom/google/android/gms/internal/zzbjo;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/acs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjo;-><init>(Lcom/google/android/gms/internal/acs;)V

    return-object v0
.end method

.method public static zzb(IID)Lcom/google/android/gms/internal/zzbjo;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjo;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v10, 0xbb8

    const-wide/16 v12, 0x0

    move v4, p0

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    invoke-static/range {v2 .. v13}, Lcom/google/android/gms/internal/zzbjo;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/acs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjo;-><init>(Lcom/google/android/gms/internal/acs;)V

    return-object v0
.end method


# virtual methods
.method public final zzsG()Lcom/google/android/gms/internal/acs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjo;->zzaLk:Lcom/google/android/gms/internal/acs;

    return-object v0
.end method
