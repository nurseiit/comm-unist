.class public Lcom/google/android/gms/internal/zzbrn;
.super Lcom/google/android/gms/drive/metadata/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzm<",
        "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaQH:Lcom/google/android/gms/drive/metadata/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbro;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbrn;->zzaQH:Lcom/google/android/gms/drive/metadata/internal/zzg;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const-string p1, "customProperties"

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "hasCustomProperties"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sqlId"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "customPropertiesExtra"

    aput-object v2, v0, v3

    const-string v2, "customPropertiesExtraHolder"

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v2, 0x4c4b40

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzm;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private static zzd(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v1, "customPropertiesExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v1, "customPropertiesExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbrn;->zzd(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "customPropertiesExtra"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v4, "customPropertiesExtraHolder"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_5

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "customPropertiesExtraHolder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/data/DataHolder;

    if-nez v3, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "entryIdColumn"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "keyColumn"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "visibilityColumn"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "valueColumn"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v8}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/data/DataHolder;->zzat(I)I

    move-result v11

    invoke-virtual {v3, v5, v10, v11}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v12

    invoke-virtual {v3, v6, v10, v11}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v7, v10, v11}, Lcom/google/android/gms/common/data/DataHolder;->zzc(Ljava/lang/String;II)I

    move-result v15

    invoke-virtual {v3, v4, v10, v11}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    new-instance v9, Lcom/google/android/gms/drive/metadata/internal/zzc;

    move-object/from16 v16, v4

    new-instance v4, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    invoke-direct {v4, v14, v15}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    invoke-direct {v9, v4, v11}, Lcom/google/android/gms/drive/metadata/internal/zzc;-><init>(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    invoke-direct {v4}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;-><init>()V

    invoke-virtual {v8, v12, v13, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    invoke-virtual {v4, v9}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zza(Lcom/google/android/gms/drive/metadata/internal/zzc;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v16

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    const-string v6, "sqlId"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/data/DataHolder;->zzat(I)I

    move-result v7

    invoke-virtual {v1, v6, v5, v7}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zztm()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "customPropertiesExtra"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "customPropertiesExtraHolder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :goto_3
    const-string v1, "customPropertiesExtra"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    move-object v3, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "customPropertiesExtraHolder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_5
    :goto_4
    if-nez v3, :cond_6

    sget-object v1, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzaPG:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    return-object v1

    :cond_6
    sget-object v1, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzaPG:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move/from16 v2, p1

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    return-object v1
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrn;->zzf(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object p1

    return-object p1
.end method
