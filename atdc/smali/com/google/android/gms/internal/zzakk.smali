.class public final Lcom/google/android/gms/internal/zzakk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzaka;
    .locals 14
    .param p5    # Lcom/google/android/gms/internal/zzcu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakm;
        }
    .end annotation

    :try_start_0
    new-instance v13, Lcom/google/android/gms/internal/zzakl;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzakl;-><init>(Lcom/google/android/gms/internal/zzakk;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)V

    invoke-static {v13}, Lcom/google/android/gms/internal/zzait;->zzc(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaka;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcom/google/android/gms/internal/zzakm;

    const-string v3, "Webview initialization failed."

    move-object v4, p0

    invoke-direct {v2, v4, v3, v1}, Lcom/google/android/gms/internal/zzakm;-><init>(Lcom/google/android/gms/internal/zzakk;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
