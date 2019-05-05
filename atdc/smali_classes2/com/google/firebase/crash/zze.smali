.class final Lcom/google/firebase/crash/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYd:Lcom/google/firebase/crash/zzc;

.field private synthetic zzbYe:Ljava/util/concurrent/Future;

.field private synthetic zzbYf:J

.field private synthetic zzbYg:Lcom/google/firebase/crash/zzf;


# direct methods
.method constructor <init>(Lcom/google/firebase/crash/zzc;Ljava/util/concurrent/Future;JLcom/google/firebase/crash/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crash/zze;->zzbYd:Lcom/google/firebase/crash/zzc;

    iput-object p2, p0, Lcom/google/firebase/crash/zze;->zzbYe:Ljava/util/concurrent/Future;

    const-wide/16 p1, 0x2710

    iput-wide p1, p0, Lcom/google/firebase/crash/zze;->zzbYf:J

    iput-object p5, p0, Lcom/google/firebase/crash/zze;->zzbYg:Lcom/google/firebase/crash/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzbYe:Ljava/util/concurrent/Future;

    iget-wide v1, p0, Lcom/google/firebase/crash/zze;->zzbYf:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mj;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FirebaseCrash"

    const-string v2, "Failed to initialize crash reporting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzbYe:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzbYg:Lcom/google/firebase/crash/zzf;

    invoke-interface {v0}, Lcom/google/firebase/crash/zzf;->zzFh()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/crash/zze;->zzbYd:Lcom/google/firebase/crash/zzc;

    invoke-static {v1}, Lcom/google/firebase/crash/zzc;->zza(Lcom/google/firebase/crash/zzc;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mh;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/mh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/crash/zze;->zzbYd:Lcom/google/firebase/crash/zzc;

    invoke-static {v1}, Lcom/google/firebase/crash/zzc;->zzb(Lcom/google/firebase/crash/zzc;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/mj;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mh;)V

    iget-object v1, p0, Lcom/google/firebase/crash/zze;->zzbYd:Lcom/google/firebase/crash/zzc;

    invoke-static {v1}, Lcom/google/firebase/crash/zzc;->zzc(Lcom/google/firebase/crash/zzc;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/crash/zze;->zzbYd:Lcom/google/firebase/crash/zzc;

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/crash/zzc;->zza(Lcom/google/firebase/crash/zzc;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crash/zze;->zzbYd:Lcom/google/firebase/crash/zzc;

    invoke-static {v1}, Lcom/google/firebase/crash/zzc;->zzc(Lcom/google/firebase/crash/zzc;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mj;->zzgz(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "FirebaseCrash"

    invoke-static {}, Lcom/google/android/gms/internal/ml;->zzFj()Lcom/google/android/gms/internal/ml;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FirebaseCrash reporting initialized "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/crash/zze;->zzbYg:Lcom/google/firebase/crash/zzf;

    invoke-interface {v1, v0}, Lcom/google/firebase/crash/zzf;->zzc(Lcom/google/android/gms/internal/mj;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "FirebaseCrash"

    const-string v2, "Failed to initialize crash reporting: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/crash/zze;->zzbYd:Lcom/google/firebase/crash/zzc;

    invoke-static {v1}, Lcom/google/firebase/crash/zzc;->zzb(Lcom/google/firebase/crash/zzc;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzbYg:Lcom/google/firebase/crash/zzf;

    invoke-interface {v0}, Lcom/google/firebase/crash/zzf;->zzFh()V

    return-void
.end method
