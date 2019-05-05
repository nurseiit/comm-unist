.class public final Lcom/google/android/gms/ads/internal/zzac;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzac;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzac;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzac;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzac;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzac;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzac;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;ZLcom/google/android/gms/internal/zzafj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;ZLcom/google/android/gms/internal/zzafj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p4    # Lcom/google/android/gms/internal/zzafj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzafj;->zzhi()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzFQ:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v6, v2

    if-lez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzafj;->zzhj()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_5

    const-string p1, "Context not provided to fetch application settings"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string p1, "App settings could not be fetched. Required parameters missing"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzac;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/zzagz;->zze(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;)Lcom/google/android/gms/ads/internal/js/zzl;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/zzad;

    invoke-direct {v3, p0, p7}, Lcom/google/android/gms/ads/internal/zzad;-><init>(Lcom/google/android/gms/ads/internal/zzac;Ljava/lang/Runnable;)V

    sget-object p2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance p4, Lcom/google/android/gms/ads/internal/zzae;

    move-object v0, p4

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzae;-><init>(Lcom/google/android/gms/ads/internal/zzac;Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzrd;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
