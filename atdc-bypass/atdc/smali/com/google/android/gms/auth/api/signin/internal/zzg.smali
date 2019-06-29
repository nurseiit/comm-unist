.class final Lcom/google/android/gms/auth/api/signin/internal/zzg;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field private synthetic zzamo:Lcom/google/android/gms/auth/api/signin/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzamo:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzamo:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/zzf;->zzamm:Lcom/google/android/gms/auth/api/signin/internal/zzy;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzamo:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/zzf;->zzamn:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzamo:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzf;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
