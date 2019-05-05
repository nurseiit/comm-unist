.class public final Lcom/google/android/gms/internal/abu;
.super Ljava/lang/Object;


# static fields
.field private static zzalN:Lcom/google/android/gms/common/util/zze;

.field private static zzbRi:Ljava/util/Random;

.field private static zzcqe:Lcom/google/android/gms/internal/abw;


# instance fields
.field private volatile zzJ:Z

.field private zzckw:Lcom/google/firebase/FirebaseApp;

.field private zzcqf:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/abx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/abx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/abu;->zzcqe:Lcom/google/android/gms/internal/abw;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/abu;->zzalN:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/abu;->zzbRi:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/abu;->zzckw:Lcom/google/firebase/FirebaseApp;

    iput-wide p2, p0, Lcom/google/android/gms/internal/abu;->zzcqf:J

    return-void
.end method

.method public static zzcj(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-lt p0, v0, :cond_2

    :cond_0
    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_2

    const/16 v0, 0x198

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/abu;->zzJ:Z

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/abu;->zzJ:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/acf;Z)V
    .locals 10
    .param p1    # Lcom/google/android/gms/internal/acf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/abu;->zzalN:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/abu;->zzcqf:J

    add-long v4, v0, v2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/abu;->zzckw:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/android/gms/internal/abz;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/abu;->zzckw:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acf;->zze(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abu;->zzckw:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/android/gms/internal/abz;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acf;->zzhN(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x3e8

    const/16 v1, 0x3e8

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/abu;->zzalN:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v6, v1

    add-long v8, v2, v6

    cmp-long v2, v8, v4

    if-gtz v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acf;->zzLk()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acf;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/abu;->zzcj(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/abu;->zzcqe:Lcom/google/android/gms/internal/abw;

    sget-object v3, Lcom/google/android/gms/internal/abu;->zzbRi:Ljava/util/Random;

    const/16 v6, 0xfa

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/abw;->zzck(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acf;->getResultCode()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    shl-int/lit8 v1, v1, 0x1

    const-string v2, "ExponenentialBackoff"

    const-string v3, "network error occurred, backing off/sleeping."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v1, "ExponenentialBackoff"

    const-string v2, "network unavailable, sleeping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/abu;->zzJ:Z

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acf;->reset()V

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/abu;->zzckw:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/android/gms/internal/abz;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/abu;->zzckw:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/acf;->zze(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/abu;->zzckw:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/android/gms/internal/abz;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/acf;->zzhN(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    const-string p1, "ExponenentialBackoff"

    const-string p2, "thread interrupted during exponential backoff."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-void
.end method
