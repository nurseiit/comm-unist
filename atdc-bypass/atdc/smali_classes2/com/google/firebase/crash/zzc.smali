.class public final Lcom/google/firebase/crash/zzc;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbVZ:Lcom/google/firebase/FirebaseApp;

.field private zzbYc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/firebase/crash/zzc;->zzbVZ:Lcom/google/firebase/FirebaseApp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/crash/zzc;->zzbYc:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/crash/zzc;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crash/zzc;->zzbVZ:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/crash/zzc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crash/zzc;->zzbYc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/firebase/crash/zzc;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/crash/zzc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crash/zzc;->zzbYc:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final zzFi()Lcom/google/android/gms/internal/mj;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/mq;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/mq;->zzbYp:Lcom/google/android/gms/internal/zzbzu;

    invoke-static {}, Lcom/google/android/gms/internal/zzcaf;->zzuc()Lcom/google/android/gms/internal/zzcab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcab;->zzb(Lcom/google/android/gms/internal/zzbzu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ml;->zzFj()Lcom/google/android/gms/internal/ml;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ml;->zzav(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ml;->zzFj()Lcom/google/android/gms/internal/ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ml;->zzFk()Lcom/google/android/gms/internal/mj;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mn; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "FirebaseCrash"

    invoke-static {}, Lcom/google/android/gms/internal/ml;->zzFj()Lcom/google/android/gms/internal/ml;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FirebaseCrash reporting loaded - "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/gms/internal/mn; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    const-string v2, "FirebaseCrash"

    const-string v3, "Failed to load crash reporting"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/firebase/crash/zzc;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    return-object v0

    :cond_0
    const-string v0, "FirebaseCrash"

    const-string v2, "Crash reporting is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    return-object v0
.end method
