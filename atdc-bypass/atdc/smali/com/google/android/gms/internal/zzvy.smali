.class final Lcom/google/android/gms/internal/zzvy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzNk:Lcom/google/android/gms/internal/zzvp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvy;->zzNk:Lcom/google/android/gms/internal/zzvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvy;->zzNk:Lcom/google/android/gms/internal/zzvp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvp;->zza(Lcom/google/android/gms/internal/zzvp;)Lcom/google/android/gms/internal/zzuw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuw;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
