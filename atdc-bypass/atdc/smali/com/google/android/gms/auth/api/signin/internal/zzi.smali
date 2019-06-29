.class final Lcom/google/android/gms/auth/api/signin/internal/zzi;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field private synthetic zzamp:Lcom/google/android/gms/auth/api/signin/internal/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzi;->zzamp:Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzi;->zzamp:Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzh;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
