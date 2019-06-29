.class final Lcom/google/android/gms/internal/zzcsj;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic zzbBY:Lcom/google/android/gms/internal/zzcsa$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcsa$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsj;->zzbBY:Lcom/google/android/gms/internal/zzcsa$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcru;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsj;->zzbBY:Lcom/google/android/gms/internal/zzcsa$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcsa$zzj;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcsa$zzj;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcsa$zzc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
