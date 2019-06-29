.class public final Lcom/google/android/gms/ads/internal/overlay/zzad;
.super Lcom/google/android/gms/ads/internal/overlay/zzz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaka;IZLcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/overlay/zzaq;)Lcom/google/android/gms/ads/internal/overlay/zzy;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaka;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v1

    iget-boolean v4, v1, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/zzar;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object v7

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaka;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaka;->zziF()Lcom/google/android/gms/internal/zzmz;

    move-result-object v10

    move-object v5, v11

    move-object v6, p1

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzar;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Ljava/lang/String;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;)V

    move-object v1, v0

    move-object v2, p1

    move/from16 v3, p4

    move-object/from16 v5, p6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzaq;Lcom/google/android/gms/ads/internal/overlay/zzar;)V

    return-object v0
.end method
