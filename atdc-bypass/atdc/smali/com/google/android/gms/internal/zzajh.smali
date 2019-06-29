.class public final Lcom/google/android/gms/internal/zzajh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajm<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzaaU:Lcom/google/android/gms/internal/zzajn;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzajh;->mValue:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/zzajn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzajn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzajh;->zzaaU:Lcom/google/android/gms/internal/zzajn;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzajh;->zzaaU:Lcom/google/android/gms/internal/zzajn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzajn;->zzin()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajh;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzajh;->mValue:Ljava/lang/Object;

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajh;->zzaaU:Lcom/google/android/gms/internal/zzajn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzajn;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajh;->zzaaU:Lcom/google/android/gms/internal/zzajn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzajn;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method
