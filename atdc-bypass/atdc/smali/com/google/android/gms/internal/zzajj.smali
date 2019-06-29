.class final Lcom/google/android/gms/internal/zzajj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaaV:Lcom/google/android/gms/internal/zzajg;

.field private synthetic zzaaW:Lcom/google/android/gms/internal/zzajl;

.field private synthetic zzaaX:Lcom/google/android/gms/internal/zzajm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzajg;Lcom/google/android/gms/internal/zzajl;Lcom/google/android/gms/internal/zzajm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzajj;->zzaaV:Lcom/google/android/gms/internal/zzajg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajj;->zzaaW:Lcom/google/android/gms/internal/zzajl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajj;->zzaaX:Lcom/google/android/gms/internal/zzajm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajj;->zzaaV:Lcom/google/android/gms/internal/zzajg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzajj;->zzaaW:Lcom/google/android/gms/internal/zzajl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajj;->zzaaX:Lcom/google/android/gms/internal/zzajm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajm;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzajl;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajj;->zzaaV:Lcom/google/android/gms/internal/zzajg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->cancel(Z)Z

    return-void
.end method
