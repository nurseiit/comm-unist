.class final Lcom/google/android/gms/internal/zztf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzth;


# instance fields
.field private synthetic zzKc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsy;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zztf;->zzKc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzti;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzti;->zzKl:Lcom/google/android/gms/internal/zzadd;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzti;->zzKl:Lcom/google/android/gms/internal/zzadd;

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->zzKc:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzadd;->onRewardedVideoAdFailedToLoad(I)V

    :cond_0
    return-void
.end method
