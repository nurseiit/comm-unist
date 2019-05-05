.class final Lcom/google/android/gms/internal/zzcwu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzbJp:Lcom/google/android/gms/internal/zzcwn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwu;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zzf(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcwv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwv;-><init>(Lcom/google/android/gms/internal/zzcwu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
