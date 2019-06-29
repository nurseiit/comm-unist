.class final Lcom/google/android/gms/internal/zztg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzKg:Lcom/google/android/gms/internal/zzth;

.field private synthetic zzKh:Lcom/google/android/gms/internal/zzti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsj;Lcom/google/android/gms/internal/zzth;Lcom/google/android/gms/internal/zzti;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zztg;->zzKg:Lcom/google/android/gms/internal/zzth;

    iput-object p3, p0, Lcom/google/android/gms/internal/zztg;->zzKh:Lcom/google/android/gms/internal/zzti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztg;->zzKg:Lcom/google/android/gms/internal/zzth;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztg;->zzKh:Lcom/google/android/gms/internal/zzti;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzth;->zzb(Lcom/google/android/gms/internal/zzti;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
