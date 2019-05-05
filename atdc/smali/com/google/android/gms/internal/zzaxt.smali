.class public abstract Lcom/google/android/gms/internal/zzaxt;
.super Lcom/google/android/gms/internal/zzaxw;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzaxG:J

.field private zzaxH:Ljava/lang/Runnable;

.field protected zzaxI:Z

.field protected final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaxt;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/internal/zzaxw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxt;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxt;->zzvw:Lcom/google/android/gms/common/util/zze;

    new-instance p1, Lcom/google/android/gms/internal/zzaxv;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/zzaxv;-><init>(Lcom/google/android/gms/internal/zzaxt;Lcom/google/android/gms/internal/zzaxu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxt;->zzaxH:Ljava/lang/Runnable;

    const-wide/16 p1, 0x3e8

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaxt;->zzaxG:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaxt;->zzZ(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/google/android/gms/internal/zzaxt;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzZ(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzaxI:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaxt;->zzaxI:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaxt;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzaxH:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzaxG:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaxt;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzaxH:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public zzoz()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaxt;->zzZ(Z)V

    return-void
.end method

.method protected abstract zzz(J)Z
.end method
