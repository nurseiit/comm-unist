.class final Lcom/google/android/gms/internal/zzafq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzYX:Lcom/google/android/gms/internal/zzafp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafq;->zzYX:Lcom/google/android/gms/internal/zzafp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->zzYX:Lcom/google/android/gms/internal/zzafp;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzafp;->zza(Lcom/google/android/gms/internal/zzafp;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->zzYX:Lcom/google/android/gms/internal/zzafp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafp;->zzbd()V

    return-void
.end method
