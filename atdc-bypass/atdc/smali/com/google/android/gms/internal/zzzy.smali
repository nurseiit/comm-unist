.class public abstract Lcom/google/android/gms/internal/zzzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzahp;
.implements Lcom/google/android/gms/internal/zzzw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzahp<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/zzzw;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzSs:Lcom/google/android/gms/internal/zzajp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzajp<",
            "Lcom/google/android/gms/internal/zzaae;",
            ">;"
        }
    .end annotation
.end field

.field private final zzSt:Lcom/google/android/gms/internal/zzzw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzajp;Lcom/google/android/gms/internal/zzzw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajp<",
            "Lcom/google/android/gms/internal/zzaae;",
            ">;",
            "Lcom/google/android/gms/internal/zzzw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->zzSs:Lcom/google/android/gms/internal/zzajp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzy;->zzSt:Lcom/google/android/gms/internal/zzzw;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzy;->zzgA()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaai;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzSt:Lcom/google/android/gms/internal/zzzw;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzzw;->zza(Lcom/google/android/gms/internal/zzaai;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzy;->zzgA()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/zzaam;Lcom/google/android/gms/internal/zzaae;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzaah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaah;-><init>(Lcom/google/android/gms/internal/zzzw;)V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzaam;->zza(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p2

    const-string v0, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzafk;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->zzSt:Lcom/google/android/gms/internal/zzzw;

    new-instance p2, Lcom/google/android/gms/internal/zzaai;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzzw;->zza(Lcom/google/android/gms/internal/zzaai;)V

    return v0
.end method

.method public abstract zzgA()V
.end method

.method public abstract zzgB()Lcom/google/android/gms/internal/zzaam;
.end method

.method public final synthetic zzgp()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzy;->zzgB()Lcom/google/android/gms/internal/zzaam;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzSt:Lcom/google/android/gms/internal/zzzw;

    new-instance v2, Lcom/google/android/gms/internal/zzaai;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzzw;->zza(Lcom/google/android/gms/internal/zzaai;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzy;->zzgA()V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzSs:Lcom/google/android/gms/internal/zzajp;

    new-instance v3, Lcom/google/android/gms/internal/zzzz;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzzz;-><init>(Lcom/google/android/gms/internal/zzzy;Lcom/google/android/gms/internal/zzaam;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaaa;-><init>(Lcom/google/android/gms/internal/zzzy;)V

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzajp;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    return-object v1
.end method
