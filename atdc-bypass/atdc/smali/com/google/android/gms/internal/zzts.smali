.class final Lcom/google/android/gms/internal/zzts;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static final zzKJ:Lcom/google/android/gms/internal/zztp;

.field private static final zzKK:F

.field private static final zzKL:J

.field private static final zzKM:F

.field private static final zzKN:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zztp;->zzeN()Lcom/google/android/gms/internal/zztp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzts;->zzKJ:Lcom/google/android/gms/internal/zztp;

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEk:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzts;->zzKK:F

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEi:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzts;->zzKL:J

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEl:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzts;->zzKM:F

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEj:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzts;->zzKN:J

    return-void
.end method

.method private static zzb(JI)I
    .locals 4

    rem-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x4

    ushr-long/2addr p0, p2

    const-wide/16 v0, 0xf

    and-long v2, p0, v0

    long-to-int p0, v2

    return p0
.end method

.method static zzeX()Z
    .locals 12

    sget-object v0, Lcom/google/android/gms/internal/zzts;->zzKJ:Lcom/google/android/gms/internal/zztp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztp;->zzeU()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/zzts;->zzKJ:Lcom/google/android/gms/internal/zztp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztp;->zzeV()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/zzts;->zzKJ:Lcom/google/android/gms/internal/zztp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztp;->zzeT()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/zzts;->zzKJ:Lcom/google/android/gms/internal/zztp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zztp;->zzeS()I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x7fffffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    if-ge v0, v8, :cond_0

    sget-wide v9, Lcom/google/android/gms/internal/zzts;->zzKN:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_0

    sget-wide v9, Lcom/google/android/gms/internal/zzts;->zzKN:J

    invoke-static {v9, v10, v0}, Lcom/google/android/gms/internal/zzts;->zzb(JI)I

    move-result v9

    goto :goto_0

    :cond_0
    sget v9, Lcom/google/android/gms/internal/zzts;->zzKM:F

    cmpl-float v9, v9, v5

    if-eqz v9, :cond_1

    sget v9, Lcom/google/android/gms/internal/zzts;->zzKM:F

    int-to-float v10, v0

    mul-float v9, v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v4

    goto :goto_0

    :cond_1
    const v9, 0x7fffffff

    :goto_0
    if-gt v1, v9, :cond_4

    if-ge v0, v8, :cond_2

    sget-wide v8, Lcom/google/android/gms/internal/zzts;->zzKL:J

    cmp-long v1, v8, v6

    if-eqz v1, :cond_2

    sget-wide v5, Lcom/google/android/gms/internal/zzts;->zzKL:J

    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/zzts;->zzb(JI)I

    move-result v3

    goto :goto_1

    :cond_2
    sget v1, Lcom/google/android/gms/internal/zzts;->zzKK:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/internal/zzts;->zzKK:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v3, v1

    :cond_3
    :goto_1
    if-gt v2, v3, :cond_4

    return v4

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
