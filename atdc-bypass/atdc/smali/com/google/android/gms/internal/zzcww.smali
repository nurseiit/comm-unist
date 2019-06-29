.class final Lcom/google/android/gms/internal/zzcww;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic zzbJp:Lcom/google/android/gms/internal/zzcwn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcww;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcww;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcwn;->zzf(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzcwx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcwx;-><init>(Lcom/google/android/gms/internal/zzcww;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
