.class public abstract Lcom/google/android/gms/internal/zzafp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzahp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzahp<",
        "Ljava/util/concurrent/Future;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile zzYV:Ljava/lang/Thread;

.field private zzYW:Z

.field private final zzv:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzafq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzafq;-><init>(Lcom/google/android/gms/internal/zzafp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzv:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzafp;->zzYW:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/zzafq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzafq;-><init>(Lcom/google/android/gms/internal/zzafp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->zzv:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzafp;->zzYW:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzafp;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->zzYV:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafp;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzYV:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzYV:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract onStop()V
.end method

.method public abstract zzbd()V
.end method

.method public final synthetic zzgp()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzafp;->zzYW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafp;->zzv:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzagt;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzv:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagt;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v0

    return-object v0
.end method

.method public final zzhL()Ljava/util/concurrent/Future;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzafp;->zzYW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafp;->zzv:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzagt;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzv:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagt;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v0

    return-object v0
.end method
