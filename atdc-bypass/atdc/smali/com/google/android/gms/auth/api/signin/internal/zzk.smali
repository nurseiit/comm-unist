.class final Lcom/google/android/gms/auth/api/signin/internal/zzk;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field private synthetic zzamq:Lcom/google/android/gms/auth/api/signin/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzamq:Lcom/google/android/gms/auth/api/signin/internal/zzj;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzi(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzamq:Lcom/google/android/gms/auth/api/signin/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzj;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
